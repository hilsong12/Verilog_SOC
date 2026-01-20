module Christmas_i2c_txtlcd_top(
    input clk, reset_p,
    input [3:0] button, // [3]: Home, [2]: K-POP, [1]: Mommae, [0]: Carol
    output scl,sda,
    output [15:0] led);

    // 1. 버튼 입력
    wire [3:0] btn_pedge;
    button_cntr btncntr0( clk, reset_p, button[0], btn_pedge[0]);
    button_cntr btncntr1( clk, reset_p, button[1], btn_pedge[1]);
    button_cntr btncntr2( clk, reset_p, button[2], btn_pedge[2]);
    button_cntr btncntr3( clk, reset_p, button[3], btn_pedge[3]);

    // 2. 초기화 딜레이
    integer cnt_sysclk;
    reg count_clk_e;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)cnt_sysclk = 0;
        else if(count_clk_e)cnt_sysclk = cnt_sysclk +1;
        else cnt_sysclk = 0;
    end                        

    // 3. I2C 드라이버
    reg [7:0] send_buffer;
    reg send,rs;
    wire busy;
    i2c_lcd_send_byte send_byte(clk,reset_p, 7'h27, send_buffer,
                               send, rs, scl, sda, busy, led);
    
    // 4. 상태 정의
    localparam IDLE         = 6'b00_0001; 
    localparam INIT         = 6'b00_0010; 
    localparam WRITE_SCROLL = 6'b00_0100; // 스크롤 모드
    localparam WRITE_STATIC = 6'b00_1000; // 고정 모드
    localparam WAIT_TIMER   = 6'b01_0000; // 스크롤 대기
    localparam SETUP_MODE   = 6'b10_0000; // 모드 변경 준비

    reg [5:0] state, next_state;
    
    // 데이터 저장소
    reg [7:0] line1_common [0:15];
    reg [7:0] scroll_text [0:27];
    reg [7:0] static_mem [0:47];

    initial begin
        // Line 1 Common
        line1_common[0]="M"; line1_common[1]="e"; line1_common[2]="r"; line1_common[3]="r";
        line1_common[4]="y"; line1_common[5]=" "; line1_common[6]="C"; line1_common[7]="h";
        line1_common[8]="r"; line1_common[9]="i"; line1_common[10]="s"; line1_common[11]="t";
        line1_common[12]="m"; line1_common[13]="a"; line1_common[14]="s"; line1_common[15]="!";

        // Default Scroll Text
        scroll_text[0]="b"; scroll_text[1]="y"; scroll_text[2]=" "; scroll_text[3]="S";
        scroll_text[4]="e"; scroll_text[5]="x"; scroll_text[6]="y"; scroll_text[7]=" ";
        scroll_text[8]="G"; scroll_text[9]="o"; scroll_text[10]="r"; scroll_text[11]="g";
        scroll_text[12]="e"; scroll_text[13]="o"; scroll_text[14]="u"; scroll_text[15]="s";
        scroll_text[16]=" "; scroll_text[17]="T"; scroll_text[18]="r"; scroll_text[19]="e";
        scroll_text[20]="e"; scroll_text[21]=" "; scroll_text[22]=" "; scroll_text[23]=" ";
        scroll_text[24]=" "; scroll_text[25]=" "; scroll_text[26]=" "; scroll_text[27]=" ";

        // Static Modes
        // Carol
        static_mem[0]="C"; static_mem[1]="a"; static_mem[2]="r"; static_mem[3]="o";
        static_mem[4]="l"; static_mem[5]=" "; static_mem[6]="m"; static_mem[7]="o";
        static_mem[8]="d"; static_mem[9]="e"; static_mem[10]=" "; static_mem[11]=" ";
        static_mem[12]=" "; static_mem[13]=" "; static_mem[14]=" "; static_mem[15]=" ";
        // MoMmAe
        static_mem[16]="M"; static_mem[17]="o"; static_mem[18]="M"; static_mem[19]="m";
        static_mem[20]="A"; static_mem[21]="e"; static_mem[22]=" "; static_mem[23]="m";
        static_mem[24]="o"; static_mem[25]="d"; static_mem[26]="e"; static_mem[27]=" ";
        static_mem[28]=" "; static_mem[29]=" "; static_mem[30]=" "; static_mem[31]=" ";
        // K-POP
        static_mem[32]="K"; static_mem[33]="-"; static_mem[34]="P"; static_mem[35]="O";
        static_mem[36]="P"; static_mem[37]=" "; static_mem[38]="m"; static_mem[39]="o";
        static_mem[40]="d"; static_mem[41]="e"; static_mem[42]=" "; static_mem[43]=" ";
        static_mem[44]=" "; static_mem[45]=" "; static_mem[46]=" "; static_mem[47]=" ";
    end

    reg init_flag;
    reg [10:0] cnt_data;
    reg [7:0] static_base_addr;
    reg [4:0] scroll_offset;
    integer scroll_timer;
    reg boot_done; 

    // 모드 변경 제어용 플립플롭
    reg mode_change_req_ff; 
    reg [7:0] target_addr_ff; 
    reg target_is_scroll_ff; // [NEW] 1이면 스크롤 모드로, 0이면 고정 모드로

    // [버튼 입력 처리부]
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            mode_change_req_ff <= 0;
            target_addr_ff <= 0;
            target_is_scroll_ff <= 0;
        end
        else begin
            // Carol Mode
            if(btn_pedge[0]) begin
                mode_change_req_ff <= 1;
                target_is_scroll_ff <= 0; // 고정 모드
                target_addr_ff <= 0; 
            end
            // MoMmAe Mode
            else if(btn_pedge[1]) begin
                mode_change_req_ff <= 1;
                target_is_scroll_ff <= 0;
                target_addr_ff <= 16;
            end
            // K-POP Mode
            else if(btn_pedge[2]) begin
                mode_change_req_ff <= 1;
                target_is_scroll_ff <= 0;
                target_addr_ff <= 32;
            end
            // [NEW] Home Mode (Button 3)
            else if(btn_pedge[3]) begin
                mode_change_req_ff <= 1;
                target_is_scroll_ff <= 1; // 스크롤 모드로 복귀!
            end
            // FSM 확인 후 해제
            else if(state == SETUP_MODE) begin
                mode_change_req_ff <= 0;
            end
        end
    end

    always @(negedge clk, posedge reset_p) begin
        if(reset_p) state = IDLE;
        else state = next_state;
    end

    // FSM 로직
    always @( posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            init_flag = 0;
            cnt_data = 0;
            count_clk_e = 0;
            send = 0;
            send_buffer = 0;
            rs = 0;
            scroll_offset = 0;
            scroll_timer = 0;
            static_base_addr = 0;
            boot_done = 0; 
        end
        else begin
            // 버튼 눌리면 강제 SETUP 이동 (INIT 중에는 대기)
            if(mode_change_req_ff && state != INIT && state != SETUP_MODE) begin
                next_state = SETUP_MODE; 
                send = 0;     
                cnt_data = 0; 
            end
            else begin
                case(state)
                    IDLE : begin
                        // 부팅 시 1회만 실행
                        if(boot_done == 0) begin
                            if(cnt_sysclk <= 8_000_000) count_clk_e = 1; 
                            else begin
                               count_clk_e = 0;
                               next_state = INIT;
                            end
                        end
                        else begin
                            count_clk_e = 0;
                            // 고정 모드일 때는 여기서 대기함
                        end
                    end
                    
                    INIT : begin
                        if(busy)begin
                            send = 0;
                            if(cnt_data >=6) begin
                                cnt_data = 0;
                                next_state = WRITE_SCROLL; 
                                init_flag = 1;
                                boot_done = 1;
                            end
                        end
                        else if(!send)begin
                            rs = 0;
                            case(cnt_data)
                                0: send_buffer = 8'h33;
                                1: send_buffer = 8'h32;
                                2: send_buffer = 8'h28;
                                3: send_buffer = 8'h0f;
                                4: send_buffer = 8'h01; 
                                5: send_buffer = 8'h06; 
                            endcase
                            send = 1;
                            cnt_data = cnt_data +1;
                        end
                    end

                    // [모드 분기점]
                    SETUP_MODE: begin
                        send = 0;
                        cnt_data = 0;
                        
                        // 사용자가 스크롤 모드를 원했는가? (Button 3)
                        if(target_is_scroll_ff == 1) begin
                            scroll_offset = 0; // 처음부터 다시 보여주기
                            scroll_timer = 0;  // 타이머 리셋
                            next_state = WRITE_SCROLL;
                        end
                        // 사용자가 고정 모드를 원했는가? (Button 0,1,2)
                        else begin
                            static_base_addr = target_addr_ff;
                            next_state = WRITE_STATIC;
                        end
                    end
                    
                    WRITE_SCROLL : begin 
                        if(busy) begin
                            send = 0;
                            if(cnt_data >= 33) begin 
                                cnt_data = 0;
                                next_state = WAIT_TIMER;
                            end
                        end
                        else if(!send) begin
                            if(cnt_data < 16) begin
                                rs = 1; send_buffer = line1_common[cnt_data]; 
                            end
                            else if(cnt_data == 16) begin
                                rs = 0; send_buffer = 8'hC0; 
                            end
                            else begin
                                rs = 1;
                                if(scroll_offset + (cnt_data - 17) < 28)
                                    send_buffer = scroll_text[scroll_offset + (cnt_data - 17)];
                                else
                                    send_buffer = scroll_text[scroll_offset + (cnt_data - 17) - 28];
                            end
                            send = 1;
                            cnt_data = cnt_data + 1;
                        end
                    end

                    WRITE_STATIC : begin 
                        if(busy) begin
                            send = 0;
                            if(cnt_data >= 33) begin 
                                cnt_data = 0;
                                next_state = IDLE; 
                            end
                        end
                        else if(!send) begin
                            if(cnt_data < 16) begin
                                rs = 1; send_buffer = line1_common[cnt_data];
                            end
                            else if(cnt_data == 16) begin
                                rs = 0; send_buffer = 8'hC0;
                            end
                            else begin
                                rs = 1;
                                send_buffer = static_mem[static_base_addr + (cnt_data - 17)];
                            end
                            send = 1;
                            cnt_data = cnt_data + 1;
                        end
                    end

                    WAIT_TIMER : begin 
                        scroll_timer = scroll_timer + 1;
                        if(scroll_timer > 30_000_000) begin 
                            scroll_timer = 0;
                            if(scroll_offset < 27) scroll_offset = scroll_offset + 1;
                            else scroll_offset = 0;
                            
                            cnt_data = 0;
                            next_state = WRITE_SCROLL;
                        end
                    end
                    
                    default: next_state = IDLE;
                endcase
            end
        end
    end    
endmodule