`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2026 02:00:47 PM
// Design Name: 
// Module Name: can_master
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module can_master (
    input wire clk,
    input wire reset_p,
    input wire can_rx,       // 외부 핀 연결
    output wire can_tx,      // (아직은 1 유지)
    // 디버깅용 모니터링 출력 (선택 사항)
    output wire sample_en_out,
    output wire is_idle_out
);

    // 내부 연결용 와이어
    wire tq_tick;
    wire rx_falling_edge;
    wire is_idle;
    wire sample_en;
    wire bit_end;

    // 1. Prescaler: Tq 생성
    can_prescaler u_prescaler (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick)
    );

    // 2. Bus Monitor: 에지 및 Idle 감지
    can_bus_monitor u_monitor (
        .clk(clk),
        .reset_p(reset_p),
        .can_rx(can_rx),
        .tq_tick(tq_tick),
        .rx_falling_edge(rx_falling_edge),
        .is_idle(is_idle)
    );

    // 3. BTL: 비트 타이밍 제어
    can_bit_timing_pro u_btl (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick),
        .rx_falling_edge(rx_falling_edge),
        .is_idle(is_idle),
        .sample_en(sample_en),
        .bit_end(bit_end)
    );

    // 외부 출력 연결
    assign can_tx = 1'b1; // 송신 로직 전까지는 Recessive 유지
    assign sample_en_out = sample_en;
    assign is_idle_out = is_idle;

    // [미래의 방들 - 여기에 추가될 예정]
    // can_rx_mac u_rx_mac (...);
    // can_tx_mac u_tx_mac (...);
    // can_registers u_regs (...);

endmodule

module can_prescaler(
    input clk, reset_p,
    output reg tq_tick  
);
    reg [3:0] sys_clk_cnt;

    always @(posedge clk , posedge reset_p) begin
        if(reset_p) begin
            sys_clk_cnt <= 0;
            tq_tick <= 0;
        end
        else begin
            // [도전!] 1Mbps 복귀
            // 9 (500kbps) -> 4 (1Mbps)
            if (sys_clk_cnt >= 4) begin 
                sys_clk_cnt <= 0;
                tq_tick <= 1; 
            end
            else begin
                sys_clk_cnt <= sys_clk_cnt + 1;
                tq_tick <= 0;
            end
        end
    end
endmodule

module can_bit_timing_pro (
    input wire clk, reset_p,
    input wire tq_tick,          // can_prescaler에서 온 1 Tq (50ns) 펄스
    input wire rx_falling_edge,  // 1->0 하강 에지 감지 신호
    input wire is_idle,          // 버스가 대기(Idle) 상태인지 여부 (1이면 Hard Sync)
    output reg sample_en,        // 75% 지점 샘플링 펄스
    output reg bit_end           // 1비트 종료 펄스
);

    // 1. CAN 타이밍 파라미터 (총 20 Tq)
    // SYNC_SEG는 상태 전환(ST_SYNC)으로 1 Tq를 소모합니다.
    localparam [4:0] TSEG1_LEN = 14; // Prop_Seg + Phase_Seg1 (총 14 Tq)
    localparam [4:0] TSEG2_LEN = 5;  // Phase_Seg2 (총 5 Tq)
    localparam [4:0] MAX_SJW   = 2;  // 최대 보정폭 (SJW = 2 Tq)

    // 2. 상태 머신 정의
    localparam ST_SYNC = 2'd0;
    localparam ST_SEG1 = 2'd1;
    localparam ST_SEG2 = 2'd2;

    reg [1:0] state;
    reg [4:0] tq_cnt;
    
    // SJW 보정에 의해 매 비트마다 유동적으로 변할 수 있는 Segment의 목표 길이
    reg [4:0] current_tseg1_len;
    reg [4:0] current_tseg2_len;

    // 추가: 에지를 기억해둘 플래그
    reg sync_req_flag;

    // 3. 메인 타이밍 제어 로직
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            state <= ST_SYNC;
            tq_cnt <= 0;
            current_tseg1_len <= TSEG1_LEN;
            current_tseg2_len <= TSEG2_LEN;
            sample_en <= 0;
            bit_end <= 0;
            sync_req_flag <= 0; // 플래그 초기화
        end 
        else begin
            // 펄스 신호는 기본적으로 0 유지
            sample_en <= 0;
            bit_end <= 0;
            
            // -----------------------------------------------------------------
            // [에지 캡처 로직] 
            // tq_tick이 아닐 때 에지가 발생하면 놓치지 않도록 플래그를 세웁니다.
            // -----------------------------------------------------------------
            if (rx_falling_edge && !is_idle && !tq_tick) begin
                sync_req_flag <= 1'b1;
            end
            else if (tq_tick) begin
                sync_req_flag <= 1'b0; // tq_tick 주기에서 처리할 것이므로 다시 내림
            end

            // -----------------------------------------------------------------
            // [메인 타이밍 및 상태 머신]
            // -----------------------------------------------------------------
            // [하드 동기화] 버스가 Idle 상태일 때 발생한 첫 하강 에지(SOF)
            if (rx_falling_edge && is_idle) begin
                state <= ST_SYNC;
                tq_cnt <= 0;
                current_tseg1_len <= TSEG1_LEN; // 보정값 리셋
                current_tseg2_len <= TSEG2_LEN;
                sync_req_flag <= 1'b0;          // 하드 동기화 시 플래그 리셋
            end
            
            // 매 Tq(50ns)마다 카운트 및 상태 전이 실행
            else if (tq_tick) begin
                tq_cnt <= tq_cnt + 1;

                case (state)
                    // ----------------------------------------------------
                    // 구간 0: SYNC_SEG (1 Tq 대기 후 바로 SEG1으로 넘어감)
                    // ----------------------------------------------------
                    ST_SYNC: begin
                        state <= ST_SEG1;
                        tq_cnt <= 1; // 다음 상태 카운트는 1부터 시작
                    end

                    // ----------------------------------------------------
                    // 구간 1: TSEG1 (Prop_Seg + Phase_Seg1)
                    // ----------------------------------------------------
                    ST_SEG1: begin
                        // [재동기화 - 연장] 플래그(sync_req_flag)를 포함하여 검사
                        if ((rx_falling_edge || sync_req_flag) && !is_idle) begin
                            // 현재 오차(tq_cnt)가 SJW보다 크면 MAX_SJW만큼만, 작으면 오차만큼만 연장
                            if (tq_cnt <= MAX_SJW)
                                current_tseg1_len <= TSEG1_LEN + tq_cnt;
                            else
                                current_tseg1_len <= TSEG1_LEN + MAX_SJW;
                        end

                        // 목표 길이(SJW로 연장되었을 수도 있음)에 도달하면 샘플링!
                        if (tq_cnt >= current_tseg1_len) begin
                            sample_en <= 1;   // TSEG1의 끝이 샘플링 포인트
                            state <= ST_SEG2;
                            tq_cnt <= 1;
                        end
                    end

                    // ----------------------------------------------------
                    // 구간 2: TSEG2 (Phase_Seg2)
                    // ----------------------------------------------------
                    ST_SEG2: begin
                        // [재동기화 - 단축] 플래그(sync_req_flag)를 포함하여 검사
                        if ((rx_falling_edge || sync_req_flag) && !is_idle) begin
                            // 예상보다 일찍 온 오차 = (TSEG2_LEN - tq_cnt)
                            // 오차가 SJW보다 크면 MAX_SJW만큼만, 작으면 오차만큼만 단축
                            if ((TSEG2_LEN - tq_cnt) <= MAX_SJW)
                                current_tseg2_len <= tq_cnt; // 현재 위치에서 바로 종료되도록 유도
                            else
                                current_tseg2_len <= TSEG2_LEN - MAX_SJW;
                        end

                        // 목표 길이(SJW로 단축되었을 수도 있음)에 도달하면 비트 종료!
                        if (tq_cnt >= current_tseg2_len) begin
                            bit_end <= 1;     // 1비트 처리 완료
                            state <= ST_SYNC;
                            tq_cnt <= 0;
                            
                            // 다음 비트를 위해 길이를 원래 스펙으로 리셋
                            current_tseg1_len <= TSEG1_LEN;
                            current_tseg2_len <= TSEG2_LEN;
                        end
                    end
                endcase
            end
        end
    end
endmodule

`timescale 1ns / 1ps

module can_bus_monitor (
    input wire clk,
    input wire reset_p,
    input wire can_rx,       // 외부에서 들어오는 CAN 수신 신호
    input wire tq_tick,      // can_prescaler에서 오는 50ns 틱
    output wire rx_falling_edge,
    output reg is_idle
);

    // --------------------------------------------------
    // 1. Edge Detector (메타스테빌리티 방지 및 에지 검출)
    // --------------------------------------------------
    reg rx_d1, rx_d2;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            rx_d1 <= 1'b1;  // CAN 버스 기본 상태는 '1' (Recessive)
            rx_d2 <= 1'b1;
        end else begin
            rx_d1 <= can_rx;
            rx_d2 <= rx_d1;
        end
    end

    // rx_d2가 1이고, rx_d1이 0인 순간이 하강 에지!
    assign rx_falling_edge = (rx_d2 == 1'b1 && rx_d1 == 1'b0);

    // --------------------------------------------------
    // 2. Bus Idle Detector (연속 11비트 '1' 감지)
    // --------------------------------------------------
    // 1비트 = 20 Tq. 연속 11비트 = 220 Tq.
    // 220을 표현하려면 8비트 카운터가 필요합니다. (최대 255)
    reg [7:0] idle_tq_cnt;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            idle_tq_cnt <= 8'd0;
            is_idle <= 1'b1;     // 리셋 직후에는 버스가 Idle이라고 가정
        end 
        else begin
            // Dominant('0') 신호가 들어오면 무조건 통신 중이므로 카운터 초기화
            if (can_rx == 1'b0) begin
                idle_tq_cnt <= 8'd0;
                is_idle <= 1'b0;
            end
            // Recessive('1') 신호가 유지되고 있을 때 tq_tick마다 카운트 증가
            else if (tq_tick) begin
                if (idle_tq_cnt < 8'd220) begin
                    idle_tq_cnt <= idle_tq_cnt + 1;
                    is_idle <= 1'b0;
                end 
                else begin
                    // 220 Tq(11비트) 이상 '1'이 유지되면 Idle 상태 진입
                    idle_tq_cnt <= 8'd220; // 카운터 오버플로우 방지 (고정)
                    is_idle <= 1'b1;
                end
            end
        end
    end

endmodule

module can_destuffing (
    input wire clk,
    input wire reset_p,
    input wire sample_en,        // BTL에서 온 원본 샘플링 펄스
    input wire can_rx,           // 현재 버스 상태
    input wire is_idle,          // 버스 휴지 상태
    output reg sample_en_delayed, // 결과값과 동기화된 지연 샘플 펄스
    output reg destuffed_bit,     // 스터핑 제거된 데이터
    output reg bit_valid,        // 데이터 유효 여부
    output reg stuff_error       // 스터프 에러 감지 (6연속 동일 비트)
);

    reg [2:0] cnt;
    reg last_bit;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            cnt <= 3'd1;
            last_bit <= 1'b1;
            destuffed_bit <= 1'b1;
            bit_valid <= 1'b0;
            stuff_error <= 1'b0;
            sample_en_delayed <= 1'b0;
        end 
        else if (is_idle) begin
            cnt <= 3'd1;
            last_bit <= 1'b1;
            bit_valid <= 1'b0;
            stuff_error <= 1'b0;
            sample_en_delayed <= 1'b0;
        end
        else begin
            // 🎯 핵심: sample_en을 한 클럭 지연시켜 출력
            sample_en_delayed <= sample_en;

            if (sample_en) begin
                stuff_error <= 1'b0;
                
                if (can_rx == last_bit) begin
                    if (cnt == 3'd5) begin
                        // Stuff Error: 5개 연속 후에도 비트 반전 없음
                        stuff_error <= 1'b1;
                        bit_valid <= 1'b0;
                        cnt <= 3'd1;
                    end 
                    else begin
                        cnt <= cnt + 3'd1;
                        bit_valid <= 1'b1; 
                    end
                end 
                else begin
                    // 비트 반전 발생
                    if (cnt == 3'd5) begin
                        // 정상 디스터핑: 5개 연속 후 반전된 비트는 스터핑 비트이므로 무시
                        bit_valid <= 1'b0;
                        cnt <= 3'd1;
                    end 
                    else begin
                        cnt <= 3'd1;
                        bit_valid <= 1'b1;
                    end
                end
                destuffed_bit <= can_rx;
                last_bit <= can_rx;
            end
            else begin
                // sample_en 펄스가 없을 때는 유효 신호 해제
                bit_valid <= 1'b0;
                stuff_error <= 1'b0;
            end
        end
    end
endmodule

module can_stuffing (
    input wire clk,
    input wire reset_p,
    input wire bit_end,      // BTL에서 온 1비트 종료 펄스
    input wire tx_bit_in,    // 상위(Shift Register)에서 보낼 데이터 비트
    input wire is_idle,      // 버스가 쉴 때는 초기화
    output reg can_tx_out,   // 실제로 버스로 나가는 비트
    output reg tx_ready      // 1이면 다음 비트 전송 가능, 0이면 대기(스터핑 중)
);

    reg [2:0] cnt;
    reg last_bit;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p || is_idle) begin
            cnt <= 3'd1;
            last_bit <= 1'b1;
            can_tx_out <= 1'b1;
            tx_ready <= 1'b1;
        end
        else if (bit_end) begin
            // 1. 방금 스터핑 비트가 나갔다면? (tx_ready가 0인 상태)
            if (tx_ready == 1'b0) begin
                // 이제 진짜 원래 보내려던 데이터를 내보냄
                can_tx_out <= tx_bit_in; 
                last_bit <= tx_bit_in;
                cnt <= 3'd1;             
                tx_ready <= 1'b1;        
            end
            
            // 2. [핵심 수정] 5개 연속 비트가 채워졌다면?
            // 다음 비트가 무엇이든 무조건 스터핑 비트를 삽입
            else if (cnt == 3'd5) begin
                can_tx_out <= ~last_bit; // 현재 데이터의 반대 비트 강제 송출
                tx_ready <= 1'b0;        // 상위 모듈에 "기다려!" 신호 발생
                cnt <= 3'd1;             // 카운트 리셋
                // last_bit는 업데이트하지 않음 (스터핑 비트가 기준이 되면 안 됨)
            end
            
            // 3. 일반적인 데이터 전송 중
            else begin
                can_tx_out <= tx_bit_in;
                
                if (tx_bit_in == last_bit) begin
                    cnt <= cnt + 3'd1;
                end else begin
                    cnt <= 3'd1;
                end
                
                last_bit <= tx_bit_in;
                tx_ready <= 1'b1; // 다음 데이터를 받을 준비 완료
            end
        end
    end
endmodule

module can_rx_shift (
    input wire clk,
    input wire reset_p,
    input wire sample_en_delayed, // Destuffing에서 동기화된 지연 펄스
    input wire bit_valid,         // 유효 데이터 판별 신호
    input wire destuffed_bit,     // 필터링된 실제 비트값
    input wire clr_reg,           // Parser에서 새 필드 시작 시 초기화
    output reg [63:0] rx_data_out // 조립된 64비트 데이터
);

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            rx_data_out <= 64'd0;
        end 
        else if (clr_reg) begin
            rx_data_out <= 64'd0;
        end
        //  동기화 포인트: 두 신호가 모두 1일 때만 시프트 수행
        else if (sample_en_delayed && bit_valid) begin
            // MSB부터 들어오므로 기존 데이터를 왼쪽으로 밀고 0번 비트에 삽입
            rx_data_out <= {rx_data_out[62:0], destuffed_bit};
        end
    end
endmodule

module can_tx_shift (
    input wire clk,
    input wire reset_p,
    input wire bit_end,       // BTL에서 온 1비트 종료 펄스
    input wire tx_ready,      // Stuffing 모듈의 준비 신호 (0이면 대기)
    input wire load_en,       // 병렬 데이터를 로드할 때 사용
    input wire [63:0] tx_data_in, // 송신할 64비트 병렬 데이터
    output wire tx_bit_out    // Stuffing 모듈로 전달할 직렬 비트
);

    reg [63:0] shift_reg;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            shift_reg <= 64'd0;
        end 
        else if (load_en) begin
            // 송신할 데이터를 레지스터에 적재
            shift_reg <= tx_data_in;
        end
        else if (bit_end && tx_ready) begin
            // 핸드셰이크: 1비트가 끝났고, 다음 비트 송출이 가능할 때만 시프트
            // MSB First이므로 왼쪽으로 밀고 끝에 0을 채움
            shift_reg <= {shift_reg[62:0], 1'b0};
        end
        // tx_ready가 0이면 bit_end가 와도 shift_reg 값은 유지됨 (Hold)
    end

    // 레지스터의 최상위 비트를 항상 출력
    assign tx_bit_out = shift_reg[63];

endmodule