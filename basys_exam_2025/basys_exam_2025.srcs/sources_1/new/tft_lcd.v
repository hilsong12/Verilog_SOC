

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2026 11:08:21 AM
// Design Name: 
// Module Name: lcd_controller
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









module ili9341_spi_robot_face (
    input  wire        clk,        // 50MHz 시스템 클럭
    input  wire        rst_n,      // 시스템 리셋
    output reg         lcd_sck,    // 직렬 클럭 (SCK)
    output reg         lcd_sdi,    // 직렬 데이터 (SDI/SDA)
    output reg         lcd_dc,     // 데이터(1)/명령어(0) 선택 (DC)
    output reg         lcd_reset,  // 하드웨어 리셋 (RESET)
    output reg         lcd_cs,     // 칩 선택 (CS)
    output wire        lcd_led     // 백라이트 제어 (LED)
);

    assign lcd_led = 1'b1; // 백라이트 항상 켜짐

    // 상태 정의
    localparam IDLE      = 4'd0,
               RESET     = 4'd1,
               DELAY     = 4'd2,
               INIT      = 4'd3,
               SET_ADDR  = 4'd4,
               RAM_WRITE = 4'd5,
               DRAW      = 4'd6,
               SEND_BYTE = 4'd7, // 8비트 시리얼 전송 상태
               DONE      = 4'd8;

    reg [3:0]  state, return_state;
    reg [31:0] delay_cnt;
    reg [15:0] ms_counter;
    reg [7:0]  send_data;    // 전송할 8비트 데이터 버퍼
    reg [3:0]  bit_cnt;      // 비트 카운터 (0~7)
    reg [8:0]  x_cnt;        // 0~239
    reg [9:0]  y_cnt;        // 0~319
    reg [7:0]  step;
    reg        tick_1ms;

    // 1ms 타이밍 발생기 (120ms 대기 등 소스 사양 준수) [5]
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin ms_counter <= 0; tick_1ms <= 0; end
        else if (ms_counter >= 49999) begin ms_counter <= 0; tick_1ms <= 1; end
        else begin ms_counter <= ms_counter + 1; tick_1ms <= 0; end
    end

    // 메인 상태 머신
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= RESET; lcd_reset <= 1; lcd_cs <= 1; lcd_sck <= 0;
            bit_cnt <= 0; x_cnt <= 0; y_cnt <= 0; step <= 0;
        end else begin
            case (state)
                RESET: begin 
                    lcd_reset <= 1'b0; // 리셋 펄스 최소 10us 준수 [5]
                    if (tick_1ms) begin lcd_reset <= 1; state <= DELAY; delay_cnt <= 0; return_state <= INIT; end
                end

                DELAY: if (tick_1ms) begin // 리셋 후 120ms 대기 [5]
                    if (delay_cnt >= 120) begin delay_cnt <= 0; state <= return_state; end
                    else delay_cnt <= delay_cnt + 1;
                end

                INIT: begin
                    lcd_dc <= 0; // 명령어 모드
                    case (step)
                        0: begin send_data <= 8'h01; state <= SEND_BYTE; end // Soft Reset
                        1: begin send_data <= 8'h11; state <= SEND_BYTE; end // Sleep Out
                        2: begin lcd_dc <= 0; send_data <= 8'h3A; state <= SEND_BYTE; end // Pixel Format
                        3: begin lcd_dc <= 1; send_data <= 8'h55; state <= SEND_BYTE; end // 16-bit RGB565 [6]
                        4: begin lcd_dc <= 0; send_data <= 8'h29; state <= SEND_BYTE; end // Display ON
                        default: begin state <= SET_ADDR; step <= 0; end
                    endcase
                    step <= step + 1;
                end

                SET_ADDR: begin // 240x320 영역 설정 [7, 8]
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h2A; state <= SEND_BYTE; end // Column
                        1: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        2: begin lcd_dc <= 1; send_data <= 8'hEF; state <= SEND_BYTE; end
                        3: begin lcd_dc <= 0; send_data <= 8'h2B; state <= SEND_BYTE; end // Page
                        4: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        5: begin lcd_dc <= 1; send_data <= 8'h01; state <= SEND_BYTE; end
                        6: begin lcd_dc <= 1; send_data <= 8'h3F; state <= SEND_BYTE; end
                        default: begin state <= RAM_WRITE; step <= 0; end
                    endcase
                    step <= step + 1;
                end

                RAM_WRITE: begin
                    lcd_dc <= 0; send_data <= 8'h2C; state <= SEND_BYTE; // Memory Write [9]
                    return_state <= DRAW;
                end

                DRAW: begin
                    lcd_dc <= 1;
                    // 로봇 얼굴 좌표 (눈/입 흰색, 나머지 검정)
                    if (((x_cnt >= 40 && x_cnt <= 90) && (y_cnt >= 60 && y_cnt <= 110)) || // 눈
                        ((x_cnt >= 150 && x_cnt <= 200) && (y_cnt >= 60 && y_cnt <= 110)) || 
                        ((x_cnt >= 70 && x_cnt <= 170) && (y_cnt >= 200 && y_cnt <= 240)))   // 입
                        send_data <= (step == 0) ? 8'hFF : 8'hFF; // 흰색 상/하위 바이트
                    else
                        send_data <= 8'h00; // 검은색 배경

                    state <= SEND_BYTE;
                    if (step == 1) begin // 16비트(2바이트) 전송 완료 후 좌표 이동
                        step <= 0;
                        if (x_cnt >= 239) begin x_cnt <= 0;
                            if (y_cnt >= 319) state <= DONE; else y_cnt <= y_cnt + 1;
                        end else x_cnt <= x_cnt + 1;
                    end else step <= step + 1;
                    return_state <= DRAW;
                end

                SEND_BYTE: begin // 4라인 SPI 8비트 전송 로직 [10]
                    lcd_cs <= 0;
                    if (delay_cnt == 0) begin
                        lcd_sck <= 0;
                        lcd_sdi <= send_data[7 - bit_cnt];
                        delay_cnt <= delay_cnt + 1; // 카운트 증가
                    end else if (delay_cnt == 2) begin
                        lcd_sck <= 1;
                        delay_cnt <= delay_cnt + 1; // 카운트 증가
                    end else if (delay_cnt == 4) begin
                        delay_cnt <= 0; // 여기서 0으로 초기화되므로 아래 증가 로직을 타지 않게 함
                        if (bit_cnt == 7) begin
                            bit_cnt <= 0; 
                            state <= return_state; // 명확하게 return_state로 할당
                        end else begin
                            bit_cnt <= bit_cnt + 1;
                        end
                    end else begin
                        delay_cnt <= delay_cnt + 1; // 그 외의 경우 증가
                    end
                end

                DONE: lcd_cs <= 1;
            endcase
        end
    end
endmodule

`timescale 1ns / 1ps

module ili9341_moving_eyes_fixed (
    input  wire        clk,        // Basys 3: 100MHz
    input  wire        rst_n,      
    output reg         lcd_sck,    
    output reg         lcd_sdi,    
    output reg         lcd_dc,     
    output reg         lcd_reset,  
    output reg         lcd_cs,     
    output wire        lcd_led     
);

    assign lcd_led = 1'b1; // 백라이트 On [cite: 91]

    // 상태 정의
    localparam IDLE      = 4'd0, RESET     = 4'd1, DELAY     = 4'd2,
               INIT      = 4'd3, CLEAR_WIN = 4'd4, CLEAR_RAM = 4'd5,
               SET_WIN   = 4'd6, DRAW      = 4'd7, SEND_BYTE = 4'd8, 
               DONE      = 4'd9;

    reg [3:0]  state, return_state;
    reg [31:0] delay_cnt;
    reg [16:0] ms_counter;
    reg [7:0]  send_data;
    reg [3:0]  bit_cnt;
    reg [8:0]  x_cnt;
    reg [9:0]  y_cnt;
    reg [7:0]  step;
    reg        tick_1ms;

    // 애니메이션 변수
    reg [7:0]  eye_offset = 0;
    reg        eye_dir = 0;
    reg [7:0]  anim_timer = 0;

    // 1ms 타이머 (100MHz 기준)
    always @(posedge clk) begin
        if (ms_counter >= 99999) begin ms_counter <= 0; tick_1ms <= 1; end
        else begin ms_counter <= ms_counter + 1; tick_1ms <= 0; end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= RESET; lcd_reset <= 1; lcd_cs <= 1; lcd_sck <= 0;
            bit_cnt <= 0; x_cnt <= 0; y_cnt <= 0; step <= 0;
        end else begin
            case (state)
                RESET: begin 
                    lcd_reset <= 1'b0; 
                    if (tick_1ms) begin lcd_reset <= 1; state <= DELAY; delay_cnt <= 0; return_state <= INIT; end
                end

                DELAY: if (tick_1ms) begin
                    if (delay_cnt >= 120) begin delay_cnt <= 0; state <= return_state; end
                    else delay_cnt <= delay_cnt + 1;
                end

                INIT: begin // [cite: 135]
                    lcd_dc <= 0; // 명령어 [cite: 136]
                    case (step)
                        0: begin send_data <= 8'h01; state <= SEND_BYTE; end // Soft Reset
                        1: begin send_data <= 8'h11; state <= SEND_BYTE; end // Sleep Out
                        2: begin lcd_dc <= 0; send_data <= 8'h3A; state <= SEND_BYTE; end // Pixel Format [cite: 108]
                        3: begin lcd_dc <= 1; send_data <= 8'h55; state <= SEND_BYTE; end // RGB565 [cite: 16]
                        4: begin lcd_dc <= 0; send_data <= 8'h29; state <= SEND_BYTE; end // Display ON
                        default: begin state <= CLEAR_WIN; step <= 0; end
                    endcase
                    step <= step + 1;
                end

                // 1단계: 화면 전체를 검은색으로 초기화
                CLEAR_WIN: begin
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h2A; state <= SEND_BYTE; end
                        1: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        2: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        3: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        4: begin lcd_dc <= 1; send_data <= 8'hEF; state <= SEND_BYTE; end // 239
                        5: begin lcd_dc <= 0; send_data <= 8'h2B; state <= SEND_BYTE; end
                        6: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        7: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        8: begin lcd_dc <= 1; send_data <= 8'h01; state <= SEND_BYTE; end
                        9: begin lcd_dc <= 1; send_data <= 8'h3F; state <= SEND_BYTE; end // 319
                        default: begin state <= CLEAR_RAM; step <= 0; end
                    endcase
                    step <= step + 1;
                end

                CLEAR_RAM: begin
                    lcd_dc <= 0; send_data <= 8'h2C; state <= SEND_BYTE; // Memory Write 
                    return_state <= DRAW; x_cnt <= 0; y_cnt <= 0;
                end

                // 2단계: 눈 영역만 반복해서 그리기 (애니메이션)
                SET_WIN: begin
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h2A; state <= SEND_BYTE; end
                        1: begin lcd_dc <= 1; send_data <= 8'd20 >> 8; state <= SEND_BYTE; end // X 시작 20
                        2: begin lcd_dc <= 1; send_data <= 8'd20 & 8'hFF; state <= SEND_BYTE; end
                        3: begin lcd_dc <= 1; send_data <= 8'd220 >> 8; state <= SEND_BYTE; end // X 끝 220
                        4: begin lcd_dc <= 1; send_data <= 8'd220 & 8'hFF; state <= SEND_BYTE; end
                        5: begin lcd_dc <= 0; send_data <= 8'h2B; state <= SEND_BYTE; end
                        6: begin lcd_dc <= 1; send_data <= 8'd50 >> 8; state <= SEND_BYTE; end // Y 시작 50
                        7: begin lcd_dc <= 1; send_data <= 8'd50 & 8'hFF; state <= SEND_BYTE; end
                        8: begin lcd_dc <= 1; send_data <= 8'd120 >> 8; state <= SEND_BYTE; end // Y 끝 120
                        9: begin lcd_dc <= 1; send_data <= 8'd120 & 8'hFF; state <= SEND_BYTE; end
                        default: begin state <= CLEAR_RAM; step <= 0; end // RAM_WRITE로 이동
                    endcase
                    step <= step + 1;
                end

                DRAW: begin
                    lcd_dc <= 1;
                    // 눈 위치 계산 (이전 눈을 지우기 위해 배경색 덮어쓰기 포함)
                    if (((x_cnt >= (40+eye_offset) && x_cnt <= (90+eye_offset)) && (y_cnt >= 60 && y_cnt <= 110)) ||
                        ((x_cnt >= (130+eye_offset) && x_cnt <= (180+eye_offset)) && (y_cnt >= 60 && y_cnt <= 110)))
                        send_data <= 8'hFF; // 흰색 눈 [cite: 16]
                    else
                        send_data <= 8'h00; // 검정 배경

                    state <= SEND_BYTE;
                    if (step == 1) begin // 16-bit 전송 완료 [cite: 108]
                        step <= 0;
                        // 현재 설정된 Window 범위 안에서 카운트
                        if (x_cnt >= 220) begin 
                            x_cnt <= 20;
                            if (y_cnt >= 120) state <= DONE; else y_cnt <= y_cnt + 1;
                        end else x_cnt <= x_cnt + 1;
                    end else step <= step + 1;
                    return_state <= DRAW;
                end

                SEND_BYTE: begin // SPI 통신부 [cite: 112, 137, 138]
                    lcd_cs <= 0; // [cite: 134]
                    if (delay_cnt == 0) begin
                        lcd_sck <= 0; lcd_sdi <= send_data[7 - bit_cnt]; // MSB First [cite: 149]
                        delay_cnt <= 1;
                    end else if (delay_cnt == 10) begin // 속도를 낮춤 (안정성)
                        lcd_sck <= 1; delay_cnt <= 11; // 상승 엣지 
                    end else if (delay_cnt == 20) begin
                        delay_cnt <= 0;
                        if (bit_cnt == 7) begin bit_cnt <= 0; state <= return_state; end
                        else bit_cnt <= bit_cnt + 1;
                    end else delay_cnt <= delay_cnt + 1;
                end

                DONE: begin
                    lcd_cs <= 1;
                    if (tick_1ms) begin
                        if (anim_timer >= 20) begin // 20ms 마다 갱신
                            anim_timer <= 0;
                            // 눈 위치 업데이트
                            if (eye_dir == 0) begin
                                if (eye_offset >= 30) eye_dir <= 1; else eye_offset <= eye_offset + 1;
                            end else begin
                                if (eye_offset == 0) eye_dir <= 0; else eye_offset <= eye_offset - 1;
                            end
                            state <= SET_WIN; // 루프 시작!
                        end else anim_timer <= anim_timer + 1;
                    end
                end
            endcase
        end
    end
endmodule



`timescale 1ns / 1ps

module ili9341_karina_display (
    input  wire        clk,        // Basys 3: 100MHz
    input  wire        rst_n,      // 중앙 버튼 (U18)
    output reg         lcd_sck,    
    output reg         lcd_sdi,    
    output reg         lcd_dc,     
    output reg         lcd_reset,  
    output reg         lcd_cs,     
    output wire        lcd_led     
);

    assign lcd_led = 1'b1;

    localparam RESET      = 4'd1, DELAY      = 4'd2,
               INIT       = 4'd3, SET_ADDR   = 4'd4, 
               RAM_WRITE  = 4'd5, DRAW       = 4'd6, 
               SEND_BYTE  = 4'd7, DONE       = 4'd8,
               DRAW_WAIT  = 4'd9;

    reg [3:0]  state, return_state;
    reg [31:0] delay_cnt;
    reg [16:0] ms_counter;
    reg [7:0]  send_data;
    reg [3:0]  bit_cnt;
    reg [8:0]  x_cnt;
    reg [9:0]  y_cnt;
    reg [7:0]  step;
    reg        tick_1ms;

    wire [15:0] rom_data;
    wire [16:0] rom_addr;
   

    assign rom_addr = x_cnt + (y_cnt * 240); // 정직하게 현재 좌표 사용
   
   
    // RAM 인스턴스
    jiwoo your_instance_name (
      .clka(clk),    
      .addra(rom_addr), 
      .douta(rom_data)
    
    );

    // 1ms 타이머
    always @(posedge clk) begin
        if (ms_counter >= 99999) begin ms_counter <= 0; tick_1ms <= 1; end
        else begin ms_counter <= ms_counter + 1; tick_1ms <= 0; end
    end

    // 메인 상태 머신 (동기 리셋 방식으로 수정)
    always @(posedge clk) begin
        if (rst_n) begin // 버튼을 누르면 리셋 (Active High)
            state <= RESET; lcd_reset <= 1; lcd_cs <= 1; lcd_sck <= 0;
            bit_cnt <= 0; x_cnt <= 0; y_cnt <= 0; step <= 0; delay_cnt <= 0;
        end else begin
            case (state)
                RESET: begin 
                    lcd_reset <= 1'b0; 
                    if (tick_1ms) begin lcd_reset <= 1; state <= DELAY; delay_cnt <= 0; return_state <= INIT; end
                end

                DELAY: if (tick_1ms) begin
                    if (delay_cnt >= 120) begin delay_cnt <= 0; state <= return_state; end
                    else delay_cnt <= delay_cnt + 1;
                end

                INIT: begin
                    lcd_dc <= 0;
                    case (step)
                        // 1. Software Reset 수행
                        0: begin 
                            send_data <= 8'h01;  state <= SEND_BYTE; 
                            return_state <= INIT; step <= 1;  end
                        // 2. 리셋 후 안정화 대기 (120ms 이상 권장)
                        1: begin 
                            state <= DELAY;  delay_cnt <= 0; 
                            return_state <= INIT;  step <= 2; end
                        // 3. Sleep Out 수행
                        2: begin 
                            send_data <= 8'h11; state <= SEND_BYTE; 
                             return_state <= INIT;  step <= 3; end
                        // 4. 깨어나는 시간 대기
                        3: begin 
                            state <= DELAY; delay_cnt <= 0;
                             return_state <= INIT; step <= 4; end
                        // 5. MADCTL (색상 방향 설정)
                        4: begin 
                            lcd_dc <= 0;send_data <= 8'h36; state <= SEND_BYTE;
                            return_state <= INIT; step <= 5; end
                        5: begin 
                            lcd_dc <= 1; send_data <= 8'h08;state <= SEND_BYTE;
                            return_state <= INIT;  step <= 6;  end
                        // 6. Pixel Format (16-bit)
                        6: begin 
                            lcd_dc <= 0;
                            send_data <= 8'h3A;  state <= SEND_BYTE;
                            return_state <= INIT; step <= 7;  end
                        7: begin 
                            lcd_dc <= 1; 
                            send_data <= 8'h55; state <= SEND_BYTE; 
                            return_state <= INIT;  step <= 8;  end
                        // 7. Display ON
                        8: begin 
                            lcd_dc <= 0; 
                            send_data <= 8'h29; state <= SEND_BYTE; 
                            return_state <= INIT;step <= 9;end
                        default: begin 
                            state <= SET_ADDR; 
                            step <= 0; 
                        end
                    endcase
                end

                SET_ADDR: begin 
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h2A; state <= SEND_BYTE; end
                        1: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        2: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        3: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        4: begin lcd_dc <= 1; send_data <= 8'hEF; state <= SEND_BYTE; end
                        5: begin lcd_dc <= 0; send_data <= 8'h2B; state <= SEND_BYTE; end
                        6: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        7: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        8: begin lcd_dc <= 1; send_data <= 8'h01; state <= SEND_BYTE; end
                        9: begin lcd_dc <= 1; send_data <= 8'h3F; state <= SEND_BYTE; end
                        default: begin state <= RAM_WRITE; step <= 0; end
                    endcase
                    step <= step + 1;
                    return_state <= SET_ADDR;
                end


                RAM_WRITE: begin
                    lcd_dc <= 0; 
                    send_data <= 8'h2C; // Memory Write 명령 시작
                    state <= SEND_BYTE; 
                    return_state <= DRAW_WAIT; // 명령 전송 후 '대기실'로 이동
                end

                DRAW_WAIT: begin
                    // 이 상태에서 1클럭 머무는 동안 rom_addr(0,0)에 대한 데이터가 
                    // BRAM 출력단(rom_data)에 안정적으로 안착합니다.
                    step <= 0;
                    state <= DRAW;
                end

                DRAW: begin
                    lcd_dc <= 1;
                    case (step)
                        0: begin // 첫 번째 바이트 (상위 8비트)
                            send_data <= rom_data[15:8];
                            state <= SEND_BYTE;
                            return_state <= DRAW;
                            step <= 1;
                        end
                        1: begin // 두 번째 바이트 (하위 8비트)
                            send_data <= rom_data[7:0];
                            state <= SEND_BYTE;
                            return_state <= DRAW;
                            step <= 2;
                        end
                        2: begin // 한 픽셀 전송 완료 후 좌표 업데이트
                            step <= 0;
                            // --- 수정된 부분: x_cnt를 239에서 0으로 감소 ---
                            if (x_cnt <= 0) begin 
                                x_cnt <= 239; // 다음 줄 시작점은 다시 오른쪽 끝
                                if (y_cnt >= 319) state <= DONE;
                                else y_cnt <= y_cnt + 1;
                            end else begin
                                x_cnt <= x_cnt - 1; // 왼쪽으로 한 칸 이동
                            end
                        end
                    endcase
                end

                SEND_BYTE: begin 
                    lcd_cs <= 0; // 데이터를 보내기 시작할 때 0으로 내려서 LCD를 활성화
                    if (delay_cnt == 0) begin
                        lcd_sck <= 0; lcd_sdi <= send_data[7 - bit_cnt];
                        delay_cnt <= 1;
                    end else if (delay_cnt == 50) begin 
                        lcd_sck <= 1; delay_cnt <= 51;
                    end else if (delay_cnt == 100) begin
                        delay_cnt <= 0;
                        if (bit_cnt == 7) begin bit_cnt <= 0; state <= return_state; end
                        else bit_cnt <= bit_cnt + 1;
                    end else delay_cnt <= delay_cnt + 1;
                end

                DONE: lcd_cs <= 1;
            endcase
        end
    end
endmodule

module combine (
    input  wire        clk,        // Basys 3: 100MHz
    input  wire        rst,        // 중앙 버튼 (U18) - Reset (Active High)
    input  wire        btn_sel,    // 오른쪽 버튼 (V17) - 이미지 전환 (Active High)
    output reg         lcd_sck,    
    output reg         lcd_sdi,    
    output reg         lcd_dc,     
    output reg         lcd_reset,  
    output reg         lcd_cs,     
    output wire        lcd_led     
);

    assign lcd_led = 1'b1;

    localparam RESET      = 4'd1, DELAY      = 4'd2,
               INIT       = 4'd3, SET_ADDR   = 4'd4, 
               RAM_WRITE  = 4'd5, DRAW       = 4'd6, 
               SEND_BYTE  = 4'd7, DONE       = 4'd8,
               DRAW_WAIT  = 4'd9;

    reg [3:0]  state, return_state;
    reg [31:0] delay_cnt;
    reg [16:0] ms_counter;
    reg [7:0]  send_data;
    reg [3:0]  bit_cnt;
    reg [8:0]  x_cnt;
    reg [9:0]  y_cnt;
    reg [7:0]  step;
    reg        tick_1ms;

    reg         image_sel;     
    wire [7:0]  rom_data;      
    wire [17:0] rom_addr;      
    wire [15:0] extended_rgb;  

    assign rom_addr = (x_cnt + (y_cnt * 240)) + (image_sel ? 18'd76800 : 18'd0);

    // RGB332 -> RGB565 확장
    // Green(6bit)의 하위 비트를 더 채워서 붉은 기를 중화
    // RGB332 -> RGB565 색상 균형 최적화 버전
    assign extended_rgb = {
        rom_data[7:5], 2'b00,              // Red (5bit): 하위 2비트를 0으로 채워 붉은색 강도 감소
        rom_data[4:2], rom_data[4:2],      // Green (6bit): 3bit를 반복하여 최대한 밝게 표현
        rom_data[1:0], rom_data[1:0], 1'b0 // Blue (5bit): 2bit 반복 후 마지막은 0으로 처리
    };
    
    wendy_karina your_instance_name (
      .clka(clk),    
      .addra(rom_addr), 
      .douta(rom_data)
    );

    // --- 버튼 디바운싱 및 전환 요청 신호 ---
    reg [19:0] btn_cnt;
    reg        btn_state;
    reg        btn_prev;
    reg        change_req; // 화면 갱신 요청 플래그

    always @(posedge clk) begin
        if (btn_sel == btn_state) begin
            btn_cnt <= 0;
        end else begin
            btn_cnt <= btn_cnt + 1;
            if (btn_cnt >= 20'd100_000) begin // 1ms 정도의 빠른 반응
                btn_state <= btn_sel;
            end
        end

        btn_prev <= btn_state;
        // 버튼을 누르는 순간(Rising Edge) 이미지 선택을 바꾸고 갱신 요청을 보냄
        if (btn_state && !btn_prev) begin
            image_sel <= ~image_sel;
            change_req <= 1;
        end else if (state == RESET) begin
            change_req <= 0; // 리셋 시작 시 요청 해제
        end

        if (rst) image_sel <= 0;
    end

    // 1ms 타이머
    always @(posedge clk) begin
        if (ms_counter >= 99999) begin ms_counter <= 0; tick_1ms <= 1; end
        else begin ms_counter <= ms_counter + 1; tick_1ms <= 0; end
    end

    // 메인 FSM
    always @(posedge clk) begin
        // 하드웨어 리셋 버튼이나 소프트웨어 변경 요청(change_req)이 오면 RESET 상태로 강제 이동
        if (rst || (change_req && state == DONE)) begin 
            state <= RESET; 
            lcd_reset <= 1; lcd_cs <= 1; lcd_sck <= 0;
            bit_cnt <= 0; x_cnt <= 0; y_cnt <= 0; step <= 0; delay_cnt <= 0;
        end else begin
            case (state)
                RESET: begin 
                    lcd_reset <= 1'b0; lcd_cs <= 1'b1;
                    if (tick_1ms) begin lcd_reset <= 1; state <= DELAY; delay_cnt <= 0; return_state <= INIT; end
                end

                DELAY: if (tick_1ms) begin
                    if (delay_cnt >= 120) begin delay_cnt <= 0; state <= return_state; end
                    else delay_cnt <= delay_cnt + 1;
                end

                INIT: begin
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h01; state <= SEND_BYTE; return_state <= INIT; step <= 1; end
                        1: begin state <= DELAY; delay_cnt <= 0; return_state <= INIT; step <= 2; end
                        2: begin send_data <= 8'h11; state <= SEND_BYTE; return_state <= INIT; step <= 3; end
                        3: begin state <= DELAY; delay_cnt <= 0; return_state <= INIT; step <= 4; end
                        4: begin lcd_dc <= 0; send_data <= 8'h36; state <= SEND_BYTE; return_state <= INIT; step <= 5; end
                        5: begin lcd_dc <= 1; send_data <= 8'h08; state <= SEND_BYTE; return_state <= INIT; step <= 6; end
                        6: begin lcd_dc <= 0; send_data <= 8'h3A; state <= SEND_BYTE; return_state <= INIT; step <= 7; end
                        7: begin lcd_dc <= 1; send_data <= 8'h55; state <= SEND_BYTE; return_state <= INIT; step <= 8; end
                        8: begin lcd_dc <= 0; send_data <= 8'h29; state <= SEND_BYTE; return_state <= INIT; step <= 9; end
                        default: begin state <= SET_ADDR; step <= 0; end
                    endcase
                end

                SET_ADDR: begin 
                    lcd_dc <= 0;
                    case (step)
                        0: begin send_data <= 8'h2A; state <= SEND_BYTE; end
                        1: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        2: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        3: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        4: begin lcd_dc <= 1; send_data <= 8'hEF; state <= SEND_BYTE; end
                        5: begin lcd_dc <= 0; send_data <= 8'h2B; state <= SEND_BYTE; end
                        6: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        7: begin lcd_dc <= 1; send_data <= 8'h00; state <= SEND_BYTE; end
                        8: begin lcd_dc <= 1; send_data <= 8'h01; state <= SEND_BYTE; end
                        9: begin lcd_dc <= 1; send_data <= 8'h3F; state <= SEND_BYTE; end
                        default: begin state <= RAM_WRITE; step <= 0; end
                    endcase
                    if (state != RAM_WRITE) begin step <= step + 1; return_state <= SET_ADDR; end
                end

                RAM_WRITE: begin
                    lcd_dc <= 0; send_data <= 8'h2C; 
                    state <= SEND_BYTE; return_state <= DRAW_WAIT;
                end

                DRAW_WAIT: begin
                    step <= 0; state <= DRAW;
                end

                DRAW: begin
                    lcd_dc <= 1;
                    case (step)
                        0: begin 
                            send_data <= extended_rgb[15:8];
                            state <= SEND_BYTE; return_state <= DRAW; step <= 1;
                        end
                        1: begin 
                            send_data <= extended_rgb[7:0];
                            state <= SEND_BYTE; return_state <= DRAW; step <= 2;
                        end
                        2: begin 
                            step <= 0;
                            if (x_cnt <= 0) begin 
                                x_cnt <= 239;
                                if (y_cnt >= 319) state <= DONE;
                                else y_cnt <= y_cnt + 1;
                            end else begin
                                x_cnt <= x_cnt - 1;
                            end
                        end
                    endcase
                end

                SEND_BYTE: begin 
                    lcd_cs <= 0;
                    if (delay_cnt == 0) begin
                        lcd_sck <= 0; lcd_sdi <= send_data[7 - bit_cnt];
                        delay_cnt <= 1;
                    end else if (delay_cnt == 50) begin 
                        lcd_sck <= 1; delay_cnt <= 51;
                    end else if (delay_cnt == 100) begin
                        delay_cnt <= 0;
                        if (bit_cnt == 7) begin bit_cnt <= 0; state <= return_state; end
                        else bit_cnt <= bit_cnt + 1;
                    end else delay_cnt <= delay_cnt + 1;
                end

                DONE: lcd_cs <= 1; // 화면 출력 완료 후 대기
            endcase
        end
    end
endmodule