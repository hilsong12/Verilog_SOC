module sound_driver_articulated(
    input clk,                  // 100MHz System Clock
    input reset_p,
    input play_en,              // 재생 활성화
    input [31:0] freq_half_period, 
    input [31:0] duration,      
    output reg [7:0] addr,      // ROM 주소
    output reg buzzer_out       // 피에조 출력
);

    reg [31:0] clk_cnt_freq;    
    reg [31:0] clk_cnt_duration;

    // FSM 상태 정의
    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter PLAY  = 2'b10;
    reg [1:0] state, next_state;

    parameter NOTE_GAP = 32'd2_000_000; 

    // Articulation 로직
    wire [31:0] final_half_period;
    wire is_tail_end;
    assign is_tail_end = (duration > NOTE_GAP) && (clk_cnt_duration >= (duration - NOTE_GAP));
    assign final_half_period = (freq_half_period == 0 || is_tail_end) ? 32'd0 : freq_half_period;

    // 1. 상태 전이
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) state <= IDLE;
        else        state <= next_state;
    end

    // 2. 다음 상태 결정
    always @(*) begin
        case(state)
            IDLE:  next_state = (play_en) ? START : IDLE;
            START: next_state = PLAY;
            PLAY:  next_state = (play_en) ? PLAY : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 3. 출력 및 동작 로직
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            addr <= 0;
            clk_cnt_freq <= 0;
            clk_cnt_duration <= 0;
            buzzer_out <= 0;
        end
        else begin
            case(state)
                IDLE: begin
                    buzzer_out <= 0;
                end
                START: begin
                    // 시작 시 주소 및 카운터 초기화 (재생 처음부터)
                    addr <= 0;
                    clk_cnt_freq <= 0;
                    clk_cnt_duration <= 0;
                    buzzer_out <= 0;
                end
                PLAY: begin
                    // 주파수 생성
                    if(final_half_period == 0) begin
                        buzzer_out <= 0;
                        clk_cnt_freq <= 0;
                    end 
                    else begin
                        if(clk_cnt_freq >= final_half_period) begin
                            clk_cnt_freq <= 0;
                            buzzer_out <= ~buzzer_out;
                        end
                        else begin
                            clk_cnt_freq <= clk_cnt_freq + 1;
                        end
                    end

                    // 박자 및 주소 이동
                    if(clk_cnt_duration >= duration) begin
                        clk_cnt_duration <= 0;
                        if(addr >= 103) addr <= 0;
                        else addr <= addr + 1;
                    end
                    else begin
                        clk_cnt_duration <= clk_cnt_duration + 1;
                    end
                end
            endcase
        end
    end
endmodule


module mommae_led_controller(
    input clk,          // 100MHz
    input reset_p,
    input play_stop,    // 연주 상태
    output reg [7:0] led_rhythm // 8비트 LED 출력
);

    reg [31:0] cnt;
    reg [2:0] step;

    // FSM 상태 정의
    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter PLAY  = 2'b10;
    reg [1:0] state, next_state;

    // 박자 상수
    parameter T_KUNG1 = 32'd50_000_000; 
    parameter T_JJA   = 32'd25_000_000; 
    parameter T_JAK   = 32'd25_000_000; 
    parameter T_KUNG2 = 32'd50_000_000; 
    parameter T_JJAK  = 32'd50_000_000; 

    // 1. 상태 전이
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) state <= IDLE;
        else        state <= next_state;
    end

    // 2. 다음 상태 결정
    always @(*) begin
        case(state)
            IDLE:  next_state = (play_stop) ? START : IDLE;
            START: next_state = PLAY;
            PLAY:  next_state = (play_stop) ? PLAY : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 3. 출력 및 동작 로직
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            cnt <= 0;
            step <= 0;
            led_rhythm <= 0;
        end else begin
            case(state)
                IDLE: begin
                    cnt <= 0;
                    step <= 0;
                    led_rhythm <= 0;
                end
                START: begin
                    // 시작 시 리듬 초기화
                    cnt <= 0;
                    step <= 0;
                    led_rhythm <= 0;
                end
                PLAY: begin
                    if(cnt >= get_target(step)) begin
                        cnt <= 0;
                        if(step >= 4) step <= 0;
                        else step <= step + 1;
                    end else begin
                        cnt <= cnt + 1;
                    end

                    // 8비트 LED 패턴 (역동적)
                    case(step)
                        3'd0: led_rhythm <= (cnt < 15_000_000) ? 8'hF0 : 8'h00; // 쿵
                        3'd1: led_rhythm <= (cnt < 10_000_000) ? 8'h0C : 8'h00; // 짜
                        3'd2: led_rhythm <= (cnt < 10_000_000) ? 8'h03 : 8'h00; // 작
                        3'd3: led_rhythm <= (cnt < 15_000_000) ? 8'hC3 : 8'h00; // 쿵 (양끝)
                        3'd4: led_rhythm <= (cnt < 15_000_000) ? 8'h3C : 8'h00; // 짝 (가운데)
                        default: led_rhythm <= 8'h00;
                    endcase
                end
            endcase
        end
    end

    function [31:0] get_target(input [2:0] s);
        case(s)
            3'd0: get_target = T_KUNG1;
            3'd1: get_target = T_JJA;
            3'd2: get_target = T_JAK;
            3'd3: get_target = T_KUNG2;
            3'd4: get_target = T_JJAK;
            default: get_target = T_KUNG1;
        endcase
    endfunction
endmodule
