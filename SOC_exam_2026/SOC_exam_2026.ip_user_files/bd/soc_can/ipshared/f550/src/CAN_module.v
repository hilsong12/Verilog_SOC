`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 11:09:57 AM
// Design Name: 
// Module Name: CAN_module
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


module CAN_module(

    );
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



// 다음 모듈인 can_bit_timing.v의 핵심 아이디어


module can_bit_timing(
    input clk, reset_p,
    input tq_tick,          // prescaler에서 온 50ns 신호
    input can_rx,           // 동기화를 위해 CAN 버스 신호를 직접 관찰
    output sample_en,       // 75% 지점에서 발생하는 샘플 신호
    output bit_end          // 비트 하나가 끝났음을 알리는 신호
);

    reg [4:0] tq_cnt;
    reg can_rx_reg;         // 에지 검출을 위한 이전 상태 저장용

    // 1. 하강 에지 검출 (Recessive -> Dominant 변화 지점 찾기)
    // CAN은 1에서 0으로 변할 때가 비트의 시작(SOF)입니다.
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) can_rx_reg <= 1'b1;
        else can_rx_reg <= can_rx;
    end
    
    // 이전 값은 1인데 현재 값이 0이면 신호가 변한 순간입니다.
    wire rx_falling_edge = (can_rx_reg == 1'b1 && can_rx == 1'b0);

    // 2. 비트 타이밍 카운터 및 하드 동기화 로직
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            tq_cnt <= 0;
        end 
        // [추가된 한 줄] 하강 에지가 발생하면 카운터를 즉시 0으로 리셋!
        // 이것이 상대방의 시작 신호에 내 박자를 강제로 맞추는 '하드 동기화'입니다.
        else if(rx_falling_edge) begin
            tq_cnt <= 0; 
        end
        else if(tq_tick) begin
            if(tq_cnt >= 19) 
                tq_cnt <= 0;
            else 
                tq_cnt <= tq_cnt + 1;
        end
    end

    // 샘플링 신호 (75% 지점)
    assign sample_en = (tq_cnt == 14 && tq_tick);
    // 비트 종료 신호
    assign bit_end = (tq_cnt == 19 && tq_tick);

endmodule


module can_rx_core(
    input clk, reset_p,
    input can_rx,
    input sample_en,
    output reg [10:0] rx_id,
    output reg [63:0] rx_data,
    output reg [3:0] rx_dlc,
    output reg rx_done_tick,
    output reg ack_out 
);

    parameter IDLE=0, SOF=1, ID=2, IDE=3, DLC=4, DATA=5, CRC=6, CRCDEL=7, ACK=8, ACKDEL=9, EOF=10;
    reg [3:0] state;
    
    reg [6:0] bit_cnt;
    reg [63:0] data_shift;
    reg [10:0] id_shift;
    reg [3:0] dlc_shift;

    reg [2:0] stuff_cnt;
    reg last_bit_val;
    wire need_destuff = (stuff_cnt == 5);

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            state <= IDLE;
            rx_done_tick <= 0;
            ack_out <= 1'b1; 
            rx_id <= 0; rx_data <= 0; rx_dlc <= 0;
            stuff_cnt <= 0; last_bit_val <= 1;
        end 
        else if (sample_en) begin
            rx_done_tick <= 0;
            
            case(state)
                IDLE: begin
                    ack_out <= 1'b1;
                    stuff_cnt <= 0;
                    if (can_rx == 0) begin 
                        state <= ID;
                        bit_cnt <= 10;
                        last_bit_val <= 0;
                        stuff_cnt <= 1;
                    end
                end

                ID: begin
                    if (need_destuff) begin
                        stuff_cnt <= 1; last_bit_val <= can_rx;
                    end else begin
                        id_shift[bit_cnt] <= can_rx;
                        last_bit_val <= can_rx;
                        stuff_cnt <= (can_rx == last_bit_val) ? stuff_cnt + 1 : 1;
                        if (bit_cnt == 0) begin state <= IDE; bit_cnt <= 2; end 
                        else bit_cnt <= bit_cnt - 1;
                    end
                end

                IDE: begin 
                    if (need_destuff) begin stuff_cnt <= 1; last_bit_val <= can_rx; end
                    else begin 
                        last_bit_val <= can_rx; 
                        stuff_cnt <= (can_rx == last_bit_val) ? stuff_cnt + 1 : 1;
                        if (bit_cnt == 0) begin state <= DLC; bit_cnt <= 3; end 
                        else bit_cnt <= bit_cnt - 1;
                    end
                end

                DLC: begin
                    if (need_destuff) begin stuff_cnt <= 1; last_bit_val <= can_rx; end
                    else begin
                        dlc_shift[bit_cnt] <= can_rx;
                        last_bit_val <= can_rx; 
                        stuff_cnt <= (can_rx == last_bit_val) ? stuff_cnt + 1 : 1;
                        if(bit_cnt == 0) begin
                            if({dlc_shift[3:1], can_rx} == 0) begin state <= CRC; bit_cnt <= 14; end 
                            else begin state <= DATA; bit_cnt <= ({dlc_shift[3:1], can_rx} * 8) - 1; end
                        end else bit_cnt <= bit_cnt - 1;
                    end
                end

                DATA: begin
                    if (need_destuff) begin stuff_cnt <= 1; last_bit_val <= can_rx; end
                    else begin
                        data_shift[bit_cnt] <= can_rx;
                        last_bit_val <= can_rx; 
                        stuff_cnt <= (can_rx == last_bit_val) ? stuff_cnt + 1 : 1;
                        if(bit_cnt == 0) begin state <= CRC; bit_cnt <= 14; end 
                        else bit_cnt <= bit_cnt - 1;
                    end
                end

                CRC: begin
                    if (need_destuff) begin stuff_cnt <= 1; last_bit_val <= can_rx; end
                    else begin
                        last_bit_val <= can_rx; stuff_cnt <= (can_rx == last_bit_val) ? stuff_cnt + 1 : 1;
                        if(bit_cnt == 0) state <= CRCDEL; else bit_cnt <= bit_cnt - 1;
                    end
                end

                CRCDEL: begin
                    state <= ACK;
                    ack_out <= 1'b0; // 미리 내림
                end

                ACK: begin
                    ack_out <= 1'b0; // [중요] 계속 0 유지! (Holding)
                    rx_id <= id_shift;
                    rx_data <= data_shift;
                    rx_dlc <= dlc_shift;
                    rx_done_tick <= 1; 
                    state <= ACKDEL;
                end

                ACKDEL: begin
                    ack_out <= 1'b1; // [중요] 이제 올림
                    state <= EOF;
                end

                EOF: begin
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule



module can_tx_core(
    input clk, reset_p,
    input tx_start_tick,       
    input [10:0] tx_id,        
    input [63:0] tx_data,      
    input [3:0]  tx_dlc,       
    input sample_en,           
    input can_rx,              
    output reg can_tx,         
    output reg tx_done_tick,   
    output reg tx_busy         
);

    parameter IDLE=0, SOF=1, ID=2, CTRL=3, DATA=4, CRC=5, CRCDEL=6, ACK=7, ACKDEL=8, EOF=9;
    reg [3:0] state;
    reg [6:0] bit_cnt;      
    reg [63:0] data_shift;  
    reg [14:0] crc_reg;     
    reg current_bit;        
    reg [2:0] stuff_cnt;
    reg last_bit_val;       
    wire need_stuff = (stuff_cnt == 5); 
    
    reg ack_captured; 
    
    // [추가 1] ACK 실패 시 대기할 카운터
    reg [7:0] ack_fail_cnt; 
    // 얼마나 기다릴까요? (예: 100 비트 타임 정도 대기)
    localparam FAIL_WAIT_LIMIT = 8'd100; 

    function [14:0] calc_crc;
        input [14:0] crc_in;
        input bit_val;
        reg xor_flag;
        begin
            xor_flag = crc_in[14] ^ bit_val;
            calc_crc = {crc_in[13:0], 1'b0} ^ (xor_flag ? 15'h4599 : 15'h0000);
        end
    endfunction

    // ACK 감지 로직
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) ack_captured <= 0;
        else begin
            if (state == IDLE) ack_captured <= 0;
            else if (state == ACK && can_rx == 1'b0) ack_captured <= 1'b1;
            else if (state == ACKDEL && can_rx == 1'b0) ack_captured <= 1'b1;
        end
    end

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            state <= IDLE; can_tx <= 1'b1; tx_busy <= 0; tx_done_tick <= 0;
            stuff_cnt <= 0; last_bit_val <= 1'b1; crc_reg <= 0; current_bit <= 0;
            ack_fail_cnt <= 0; // [추가] 리셋
        end 
        else begin
            tx_done_tick <= 0; 
            case(state)
                IDLE: begin
                    can_tx <= 1'b1; stuff_cnt <= 0;
                    ack_fail_cnt <= 0; // [추가] 카운터 초기화
                    if (tx_start_tick) begin
                        state <= SOF; tx_busy <= 1; crc_reg <= 0; last_bit_val <= 1'b1;
                    end
                end
                default: begin
                    if (sample_en) begin
                        case(state)
                            SOF: begin can_tx<=0; last_bit_val<=0; stuff_cnt<=1; crc_reg<=calc_crc(0,0); state<=ID; bit_cnt<=10; end
                            
                            ID: begin 
                                if(need_stuff) begin can_tx<=~last_bit_val; last_bit_val<=~last_bit_val; stuff_cnt<=1; end 
                                else begin can_tx<=tx_id[bit_cnt]; last_bit_val<=tx_id[bit_cnt]; stuff_cnt<=(tx_id[bit_cnt]==last_bit_val)?stuff_cnt+1:1; crc_reg<=calc_crc(crc_reg,tx_id[bit_cnt]); if(bit_cnt==0) begin state<=CTRL; bit_cnt<=6; end else bit_cnt<=bit_cnt-1; end 
                            end
                            
                            CTRL: begin 
                                if(bit_cnt>=4) current_bit=0; else current_bit=tx_dlc[bit_cnt];
                                if(need_stuff) begin can_tx<=~last_bit_val; last_bit_val<=~last_bit_val; stuff_cnt<=1; end
                                else begin can_tx<=current_bit; last_bit_val<=current_bit; stuff_cnt<=(current_bit==last_bit_val)?stuff_cnt+1:1; crc_reg<=calc_crc(crc_reg,current_bit); if(bit_cnt==0) begin if(tx_dlc==0) begin state<=CRC; bit_cnt<=14; end else begin state<=DATA; bit_cnt<=(tx_dlc*8)-1; data_shift<=tx_data; end end else bit_cnt<=bit_cnt-1; end
                            end
                            
                            DATA: begin 
                                current_bit=data_shift[bit_cnt];
                                if(need_stuff) begin can_tx<=~last_bit_val; last_bit_val<=~last_bit_val; stuff_cnt<=1; end
                                else begin can_tx<=current_bit; last_bit_val<=current_bit; stuff_cnt<=(current_bit==last_bit_val)?stuff_cnt+1:1; crc_reg<=calc_crc(crc_reg,current_bit); if(bit_cnt==0) begin state<=CRC; bit_cnt<=14; end else bit_cnt<=bit_cnt-1; end
                            end
                            
                            CRC: begin 
                                current_bit=crc_reg[bit_cnt];
                                if(need_stuff) begin can_tx<=~last_bit_val; last_bit_val<=~last_bit_val; stuff_cnt<=1; end
                                else begin can_tx<=current_bit; last_bit_val<=current_bit; stuff_cnt<=(current_bit==last_bit_val)?stuff_cnt+1:1; if(bit_cnt==0) state<=CRCDEL; else bit_cnt<=bit_cnt-1; end
                            end
                            
                            CRCDEL: begin can_tx<=1; last_bit_val<=1; stuff_cnt<=0; state<=ACK; end
                            
                            ACK: begin 
                                can_tx <= 1'b1; 
                                state <= ACKDEL; 
                            end

                            // ------------------------------------------
                            // [수정된 부분] ACKDEL 상태
                            // ------------------------------------------
                            ACKDEL: begin 
                                can_tx <= 1'b1; 
                                
                                // 1. 성공 Case: ACK를 받았다면 바로 EOF로
                                if (can_rx == 1'b0 || ack_captured == 1'b1) begin
                                    state <= EOF; 
                                    bit_cnt <= 6; 
                                    ack_fail_cnt <= 0; // 성공했으니 카운터 필요 없음
                                end 
                                // 2. 실패 Case: ACK를 못 받았다면?
                                else begin
                                    // 바로 IDLE로 가지 말고, 지정된 시간만큼 버틴다
                                    if (ack_fail_cnt < FAIL_WAIT_LIMIT) begin
                                        ack_fail_cnt <= ack_fail_cnt + 1;
                                        // state는 ACKDEL 유지 (대기 중)
                                    end else begin
                                        // 시간이 다 되면 그때 포기하고 IDLE로
                                        state <= IDLE; 
                                        tx_busy <= 0;
                                        ack_fail_cnt <= 0;
                                    end
                                end
                            end
                            
                            EOF: begin 
                                can_tx<=1; 
                                if(bit_cnt==0) begin state<=IDLE; tx_busy<=0; tx_done_tick<=1; end 
                                else bit_cnt<=bit_cnt-1; 
                            end
                        endcase 
                    end 
                end 
            endcase 
        end
    end
endmodule

module uart_tx(
    input clk, reset_p,
    input tx_start,
    input [7:0] tx_data,
    output reg txd,
    output reg tx_busy
);
    // 100MHz / 115200 = 868
//    localparam CLK_PER_BIT = 868; 
    localparam CLK_PER_BIT = 100; 
    
    reg [15:0] clk_cnt;
    reg [2:0] bit_index;
    reg [1:0] state; // 0:Idle, 1:Start, 2:Data, 3:Stop

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            txd <= 1'b1; // Idle is High
            tx_busy <= 0;
            state <= 0;
            clk_cnt <= 0;
            bit_index <= 0;
        end else begin
            case (state)
                0: begin // IDLE
                    txd <= 1'b1;
                    if (tx_start) begin
                        tx_busy <= 1;
                        state <= 1;
                        clk_cnt <= 0;
                        txd <= 1'b0; // Start bit
                    end
                end
                1: begin // Start Bit 유지
                    if (clk_cnt < CLK_PER_BIT-1) clk_cnt <= clk_cnt + 1;
                    else begin
                        clk_cnt <= 0;
                        state <= 2;
                        bit_index <= 0;
                    end
                end
                2: begin // Data Bits (LSB first)
                    txd <= tx_data[bit_index];
                    if (clk_cnt < CLK_PER_BIT-1) clk_cnt <= clk_cnt + 1;
                    else begin
                        clk_cnt <= 0;
                        if (bit_index < 7) bit_index <= bit_index + 1;
                        else state <= 3;
                    end
                end
                3: begin // Stop Bit
                    txd <= 1'b1;
                    if (clk_cnt < CLK_PER_BIT-1) clk_cnt <= clk_cnt + 1;
                    else begin
                        tx_busy <= 0;
                        state <= 0;
                    end
                end
            endcase
        end
    end
endmodule


module can_hw_test_top(
    input clk, reset_p,
    input btn_send,          
    input [7:0] sw,          

    // [Node 1: 송신자 - J1 포트]
    input  can1_rx,          // J1의 RXD (자기가 보낸거 + ACK 듣는 귀) -> XDC에서 J1 RX핀에 할당
    output can1_tx,          // J1의 TXD (데이터 보내는 입)       -> XDC에서 J1 TX핀에 할당

    // [Node 2: 수신자 - J2 포트]
    input  can2_rx,          // J2의 RXD (데이터 듣는 귀)         -> XDC에서 J2 RX핀에 할당
    output can2_tx,          // J2의 TXD (ACK 보내는 입)          -> XDC에서 J2 TX핀에 할당
    
    output uart_txd,         
    output rx_done_tick,     // Node 2가 데이터 수신 성공 시 토글 (LED)
    output tx_led,           // Node 1이 ACK 수신 성공 시 토글 (LED)
    output ack_debug_led     // Node 2가 ACK를 발사할 때 토글 (LED)
);

    wire tq_tick, sample_en;
    wire [10:0] rx_id;
    wire [63:0] rx_data;
    
    wire rx_done_pulse;      
    wire tx_done_tick_pulse; 
    wire tx_busy;
    wire rx_ack_signal;

    // ---------------------------------------------------------
    // 1. 버튼 디바운싱 & 엣지 검출
    // ---------------------------------------------------------
    reg btn_prev, btn_trigger;
    always @(posedge clk) begin
        btn_prev <= btn_send;
        btn_trigger <= (btn_send && !btn_prev);
    end

    // ---------------------------------------------------------
    // 2. 타이밍 생성 (Prescaler & Bit Timing)
    // ---------------------------------------------------------
    // Prescaler는 공유합니다.
    can_prescaler u_pre (.clk(clk), .reset_p(reset_p), .tq_tick(tq_tick));
    
    // Bit Timing은 '수신자(Node 2)'의 귀(can2_rx)에 맞춰 동기화합니다.
    can_bit_timing u_tim (
        .clk(clk), 
        .reset_p(reset_p), 
        .tq_tick(tq_tick), 
        .can_rx(can2_rx), // Node 2 기준 동기화
        .sample_en(sample_en)
    );


    // ---------------------------------------------------------
    // 3. Node 1: 송신 엔진 (J1 포트 사용)
    // ---------------------------------------------------------
    can_tx_core u_tx_core (
        .clk(clk), .reset_p(reset_p),
        .tx_start_tick(btn_trigger),
        .tx_id(11'h001),             
        .tx_data({56'h1234_5678_9abc_de, sw}),       
        .tx_dlc(4'd8),               
        .sample_en(sample_en),
        
        .can_rx(can1_rx),        // [중요] J1의 RXD 핀으로 듣습니다 (ACK 확인용)
        .can_tx(can1_tx),        // J1의 TXD 핀으로 보냅니다
        
        .tx_done_tick(tx_done_tick_pulse),
        .tx_busy(tx_busy)
    );
    
    wire [3:0] rx_dlc;
    
    // ---------------------------------------------------------
    // 4. Node 2: 수신 엔진 (J2 포트 사용)
    // ---------------------------------------------------------
    can_rx_core u_rx_core (
        .clk(clk), .reset_p(reset_p),
        .can_rx(can2_rx),        // J2의 RXD 핀으로 듣습니다
        .sample_en(sample_en),
        .rx_id(rx_id),
        .rx_data(rx_data),
        .rx_dlc(rx_dlc),
        .rx_done_tick(rx_done_pulse),
        
        .ack_out(rx_ack_signal)  // ACK 신호 생성
    );
    
    // Node 2의 ACK 신호를 J2 TXD 핀으로 내보냄
    assign can2_tx = rx_ack_signal;


    // ---------------------------------------------------------
    // 5. LED 디스플레이 로직 (Toggle 방식)
    // ---------------------------------------------------------
    reg rx_done_prev;
    reg tx_done_prev;
    reg ack_signal_prev;
    reg rx_led_reg, tx_led_reg, ack_led_debug_reg;

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            rx_led_reg <= 0; tx_led_reg <= 0; ack_led_debug_reg <= 0;
            rx_done_prev <= 0; tx_done_prev <= 0; ack_signal_prev <= 1;
        end else begin
            rx_done_prev <= rx_done_pulse;
            tx_done_prev <= tx_done_tick_pulse;
            ack_signal_prev <= rx_ack_signal;

            // RX 성공 시 토글
            if (rx_done_pulse && !rx_done_prev) 
                rx_led_reg <= ~rx_led_reg;
            
            // TX 성공(ACK 수신) 시 토글
            if (tx_done_tick_pulse && !tx_done_prev) 
                tx_led_reg <= ~tx_led_reg;
            
            // ACK 발사 시 토글 (Falling Edge: 1->0)
            if (ack_signal_prev == 1'b1 && rx_ack_signal == 1'b0) 
                ack_led_debug_reg <= ~ack_led_debug_reg;
        end
    end
    
    assign rx_done_tick = rx_led_reg;
    assign tx_led = tx_led_reg;
// [추가] J1 포트 RX 핀의 상태를 실시간으로 봅니다.
    // 평소엔 1(High)이라 LED가 꺼져 있다가, 
    // 데이터가 오가면 0(Low)이 되면서 LED가 파르르 떨거나 켜져야 합니다.
//    assign tx_led = ~can1_rx;
    assign ack_debug_led = ack_led_debug_reg;


    // ---------------------------------------------------------
    // 6. UART 전송 로직 (수신된 데이터 확인용)
    // ---------------------------------------------------------
    reg [7:0] uart_data_reg;
    reg uart_start_reg;
    reg [2:0] u_state;
    wire uart_busy;

    uart_tx u_uart (
        .clk(clk), .reset_p(reset_p), .tx_start(uart_start_reg), .tx_data(uart_data_reg), .txd(uart_txd), .tx_busy(uart_busy)
    );
    
    reg [63:0] tx_buffer;
    reg [3:0] byte_cnt;
    wire rx_done_posedge = (rx_done_pulse && !rx_done_prev);

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            u_state <= 0; uart_start_reg <= 0; uart_data_reg <= 0; byte_cnt <= 0; tx_buffer <= 0;
        end else begin
            uart_start_reg <= 0; 
            case(u_state)
                0: begin
                    if(rx_done_posedge) begin 
                        tx_buffer <= rx_data; 
                        uart_data_reg <= rx_id[7:0]; 
                        uart_start_reg <= 1; 
                        u_state <= 1;
                    end
                end
                1: if(uart_busy) u_state <= 2; 
                2: if(!uart_busy) begin byte_cnt <= 0; u_state <= 3; end
                3: begin uart_data_reg <= tx_buffer[63:56]; uart_start_reg <= 1; u_state <= 4; end
                4: if(uart_busy) begin tx_buffer <= tx_buffer << 8; u_state <= 5; end
                5: if(!uart_busy) begin 
                       if(byte_cnt < rx_dlc - 1 && rx_dlc > 0) begin 
                           byte_cnt <= byte_cnt + 1; u_state <= 3; 
                       end else u_state <= 0; 
                   end
            endcase
        end
    end

endmodule



module CAN_Controller (
    input clk,
    input reset_p,
    input  can_rx_pin,   
    output can_tx_pin,   
    input         tx_start,    
    input [10:0]  tx_id,       
    input [63:0]  tx_data,     
    input [3:0]   tx_dlc,      
    output        tx_busy,     
    output        tx_done,     
    output        rx_valid,    
    output [10:0] rx_id,       
    output [63:0] rx_data,     
    output [3:0]  rx_dlc       
);

    wire tq_tick, sample_en, bit_end;
    wire tx_signal_core, ack_signal_core;

    // [추가] 입력 신호 싱크로나이저 (노이즈 방지 & 동기화)
    // 외부 신호를 FPGA 클럭에 맞춰서 줄 세웁니다.
    reg rx_sync_1, rx_sync_2;
    wire can_rx_safe; 
    
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            rx_sync_1 <= 1'b1;
            rx_sync_2 <= 1'b1;
        end else begin
            rx_sync_1 <= can_rx_pin;
            rx_sync_2 <= rx_sync_1;
        end
    end
    assign can_rx_safe = rx_sync_2; // 이제부터 내부는 이 '안전한 신호'만 씁니다.

    // ---------------------------------------------------------
    // 아래 모든 모듈의 입력은 'can_rx_pin' 대신 'can_rx_safe'를 씁니다!
    // ---------------------------------------------------------

    can_prescaler u_pre (.clk(clk), .reset_p(reset_p), .tq_tick(tq_tick));

    can_bit_timing u_tim (
        .clk(clk), .reset_p(reset_p), 
        .tq_tick(tq_tick), 
        .can_rx(can_rx_safe), // [수정] 안전한 신호 연결
        .sample_en(sample_en), .bit_end(bit_end)
    );

    can_tx_core u_tx (
        .clk(clk), .reset_p(reset_p),
        .tx_start_tick(tx_start),
        .tx_id(tx_id), .tx_data(tx_data), .tx_dlc(tx_dlc),
        .sample_en(sample_en),
        .can_rx(can_rx_safe),     // [수정] 안전한 신호 연결
        .can_tx(tx_signal_core),
        .tx_done_tick(tx_done), .tx_busy(tx_busy)
    );

    can_rx_core u_rx (
        .clk(clk), .reset_p(reset_p),
        .can_rx(can_rx_safe),     // [수정] 안전한 신호 연결
        .sample_en(sample_en),
        .rx_id(rx_id), .rx_data(rx_data), .rx_dlc(rx_dlc),
        .rx_done_tick(rx_valid), .ack_out(ack_signal_core)
    );

    assign can_tx_pin = tx_signal_core & ack_signal_core;

endmodule


module button_debounce(
    input clk, reset_p,
    input btn_in,
    output reg btn_posedge // 한 번 꾹 누르면 딱 1번만 펄스 나감
);
    reg [19:0] cnt; // 지연 카운터
    reg btn_prev;
    wire btn_stable;
    
    // 100MHz 기준 약 10ms 동안 변화가 없어야 인정
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt <= 0;
        else begin
            if (btn_in != btn_prev) begin
                cnt <= 0;
                btn_prev <= btn_in;
            end
            else if (cnt < 20'd1_000_000) cnt <= cnt + 1; // 10ms 대기
        end
    end
    
    // 카운터가 꽉 차고, 버튼이 눌린 상태면 1
    assign btn_stable = (cnt == 20'd1_000_000) ? btn_prev : 1'b0;

    reg stable_prev;
    always @(posedge clk) begin
        stable_prev <= btn_stable;
        btn_posedge <= (btn_stable && !stable_prev); // Rising Edge 검출
    end
endmodule


module can_dual_test_top(
    input clk, reset_p,
    input btn_send,          
    input [7:0] sw,          
    input  can1_rx, output can1_tx,
    input  can2_rx, output can2_tx,
    output led_tx1_done,      
    output led_rx1_valid,
    output led_tx2_done,      
    output led_rx2_valid,      
    output [7:0] led_rx_data 
);

    wire tx_done_pulse_1;
    wire rx_valid_pulse_1; 
    wire tx_done_pulse_2;  
    wire rx_valid_pulse_2;
    
    wire [63:0] rx_data_2;
    wire tx_start_trigger; 

    // 버튼 디바운싱
    button_debounce u_btn_db (
        .clk(clk), .reset_p(reset_p),
        .btn_in(btn_send), .btn_posedge(tx_start_trigger) 
    );

    // Node 1 (송신)
    CAN_Controller u_node1 (
        .clk(clk), .reset_p(reset_p),
        .can_rx_pin(can1_rx), .can_tx_pin(can1_tx),
        .tx_start(tx_start_trigger), 
        .tx_id(11'h123), .tx_data({56'h0, sw}), .tx_dlc(4'd8),
        .tx_busy(), .tx_done(tx_done_pulse_1),
        .rx_valid(rx_valid_pulse_1), .rx_id(), .rx_data(), .rx_dlc()
    );

    // Node 2 (수신)
    CAN_Controller u_node2 (
        .clk(clk), .reset_p(reset_p),
        .can_rx_pin(can2_rx), .can_tx_pin(can2_tx),
        .tx_start(1'b0), .tx_id(11'h0), .tx_data(64'h0), .tx_dlc(4'd0),
        .tx_busy(), .tx_done(tx_done_pulse_2),
        .rx_valid(rx_valid_pulse_2), .rx_id(), .rx_data(rx_data_2), .rx_dlc()
    );

    // =============================================================
    // [수정된 LED 로직] 토글(Toggle) -> 타이머(Timer) 방식
    // 신호가 오면 0.2초 동안 LED를 켜서 눈에 잘 보이게 함 (깜빡임 방지)
    // =============================================================
    
    reg [24:0] led_timer_tx1; // TX 완료 LED용 타이머
    reg [24:0] led_timer_rx1; // RX1 수신 LED용 타이머
    reg [24:0] led_timer_rx2; // RX2 수신 LED용 타이머

    // 100MHz 기준 20,000,000 카운트 = 0.2초
    localparam LED_TIME = 25'd20_000_000; 

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            led_timer_tx1 <= 0;
            led_timer_rx1 <= 0;
            led_timer_rx2 <= 0;
        end else begin
            // 1. TX1 완료 시 타이머 충전
            if (tx_done_pulse_1) led_timer_tx1 <= LED_TIME;
            else if (led_timer_tx1 > 0) led_timer_tx1 <= led_timer_tx1 - 1;

            // 2. RX1 수신 시 타이머 충전 (Echo 확인)
            if (rx_valid_pulse_1) led_timer_rx1 <= LED_TIME;
            else if (led_timer_rx1 > 0) led_timer_rx1 <= led_timer_rx1 - 1;

            // 3. RX2 수신 시 타이머 충전 (데이터 수신 확인)
            if (rx_valid_pulse_2) led_timer_rx2 <= LED_TIME;
            else if (led_timer_rx2 > 0) led_timer_rx2 <= led_timer_rx2 - 1;
        end
    end

    // 타이머가 0보다 크면 LED 켜기 (반짝!)
    assign led_tx1_done  = (led_timer_tx1 > 0);
    assign led_rx1_valid = (led_timer_rx1 > 0);
    assign led_rx2_valid = (led_timer_rx2 > 0);
    assign led_tx2_done  = 0; // 얘는 안 씀

    // 데이터 표시 (Node 2가 받은 데이터) - 이건 잘 된다고 하셨으니 유지
    reg [7:0] rx_data_display;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) rx_data_display <= 0;
        else if (rx_valid_pulse_2) rx_data_display <= rx_data_2[7:0];
    end
    assign led_rx_data = rx_data_display;

endmodule