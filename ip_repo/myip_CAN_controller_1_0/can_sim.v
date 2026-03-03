`timescale 1ns / 1ps

// =========================================================
// 1. 테스트벤치 (Testbench)
// =========================================================
module tb_final_sim();
    reg clk, reset_p;
    reg btn_send;
    reg [7:0] sw;
    
    wire can1_tx, can1_rx;
    wire can2_tx, can2_rx;
    wire led_tx1_done, led_rx1_valid, led_tx2_done, led_rx2_valid;
    wire [7:0] led_rx_data;

    // 테스트 대상 연결 (루프백: TX <-> RX 교차 연결)
    sim_can_dual_test_top u_dut (
        .clk(clk), .reset_p(reset_p), .btn_send(btn_send), .sw(sw),
        .can1_rx(can2_tx), .can1_tx(can1_tx), // Node 1은 Node 2의 말을 듣는다
        .can2_rx(can1_tx), .can2_tx(can2_tx), // Node 2는 Node 1의 말을 듣는다
        .led_tx1_done(led_tx1_done), .led_rx1_valid(led_rx1_valid),
        .led_tx2_done(led_tx2_done), .led_rx2_valid(led_rx2_valid),
        .led_rx_data(led_rx_data)
    );

    always #5 clk = ~clk; // 100MHz 클럭

    initial begin
        clk = 0; reset_p = 1; btn_send = 0; sw = 8'hAA;
        #100; reset_p = 0; // 리셋 해제
        #1000;
        
        $display("----------------------------------------");
        $display("   STARTING CAN SIMULATION (Clean Ver)   ");
        $display("----------------------------------------");
        
        // 버튼 누름 (전송 시작)
        btn_send = 1; 
        #200000;      // 디바운싱 고려 길게 누름
        btn_send = 0; 
        
        // 전송 완료 및 ACK 수신 대기 (넉넉히 300us)
        #300000; 
        
        // 결과 판정
        if (led_tx1_done) 
            $display(">>> [SUCCESS] Node 1 TX Done! (ACK Received)");
        else 
            $display(">>> [FAIL] Node 1 TX Timed Out (No ACK)");
            
        if (led_rx2_valid && led_rx_data == 8'hAA) 
            $display(">>> [SUCCESS] Node 2 Data Verified (0xAA)");
        else 
            $display(">>> [FAIL] Node 2 Data Mismatch");
            
        $finish;
    end
endmodule


// =========================================================
// 2. 테스트용 탑 모듈 (Simulation Wrapper)
// =========================================================
module sim_can_dual_test_top(
    input clk, reset_p,
    input btn_send,          
    input [7:0] sw,          
    input  can1_rx, output can1_tx,
    input  can2_rx, output can2_tx,
    output led_tx1_done, led_rx1_valid, led_tx2_done, led_rx2_valid,      
    output [7:0] led_rx_data 
);
    wire tx_done_pulse_1, rx_valid_pulse_1; 
    wire tx_done_pulse_2, rx_valid_pulse_2;  
    wire [63:0] rx_data_2;
    wire tx_start_trigger; 

    sim_button_debounce u_btn_db (
        .clk(clk), .reset_p(reset_p), .btn_in(btn_send), .btn_posedge(tx_start_trigger) 
    );

    // Node 1 (송신)
    // [중요] CAN_Controller는 Design Sources에 있는 IP 파일을 갖다 씁니다.
    CAN_Controller u_node1 (
        .clk(clk), .reset_p(reset_p), .can_rx_pin(can1_rx), .can_tx_pin(can1_tx),
        .tx_start(tx_start_trigger), .tx_id(11'h123), .tx_data({56'h0, sw}), .tx_dlc(4'd8),
        .tx_busy(), .tx_done(tx_done_pulse_1), .rx_valid(rx_valid_pulse_1), .rx_id(), .rx_data(), .rx_dlc()
    );

    // Node 2 (수신)
    CAN_Controller u_node2 (
        .clk(clk), .reset_p(reset_p), .can_rx_pin(can2_rx), .can_tx_pin(can2_tx),
        .tx_start(1'b0), .tx_id(11'h0), .tx_data(64'h0), .tx_dlc(4'd0),
        .tx_busy(), .tx_done(tx_done_pulse_2), .rx_valid(rx_valid_pulse_2), .rx_id(), .rx_data(rx_data_2), .rx_dlc()
    );

    // 시뮬레이션용 LED 타이머
    reg [24:0] led_timer_tx1, led_timer_rx1, led_timer_rx2;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin led_timer_tx1<=0; led_timer_rx1<=0; led_timer_rx2<=0; end
        else begin
            if(tx_done_pulse_1) led_timer_tx1 <= 100; else if(led_timer_tx1>0) led_timer_tx1<=led_timer_tx1-1;
            if(rx_valid_pulse_1) led_timer_rx1 <= 100; else if(led_timer_rx1>0) led_timer_rx1<=led_timer_rx1-1;
            if(rx_valid_pulse_2) led_timer_rx2 <= 100; else if(led_timer_rx2>0) led_timer_rx2<=led_timer_rx2-1;
        end
    end
    assign led_tx1_done = (led_timer_tx1>0);
    assign led_rx1_valid = (led_timer_rx1>0);
    assign led_rx2_valid = (led_timer_rx2>0);
    assign led_tx2_done = 0; 
    assign led_rx_data = rx_data_2[7:0];
endmodule

// =========================================================
// 3. 버튼 디바운스 (Simulation Version)
// =========================================================
module sim_button_debounce(input clk, reset_p, input btn_in, output reg btn_posedge);
    reg [19:0] cnt; reg btn_prev; wire btn_stable;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt<=0;
        else begin
            if(btn_in!=btn_prev) begin cnt<=0; btn_prev<=btn_in; end
            else if(cnt<20) cnt<=cnt+1; 
        end
    end
    assign btn_stable = (cnt==20) ? btn_prev : 0;
    reg stable_prev;
    always @(posedge clk) begin stable_prev<=btn_stable; btn_posedge<=(btn_stable && !stable_prev); end
endmodule
