`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 11:06:42 AM
// Design Name: 
// Module Name: can_simulation
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


`timescale 1ns / 1ps

module tb_can_dual_test_top();

    // 1. 입력 신호 선언
    reg clk;
    reg reset_p;
    reg btn_send;
    reg [7:0] sw;
    
    // CAN Bus 라인 (물리적 선)
    // CAN은 0이 Dominant이므로, TX들 중 하나라도 0이면 RX는 0이어야 함 (Wired-AND)
    wire can_bus_line;
    
    // 2. 출력 신호 연결용
    wire can1_tx, can2_tx;
    wire led_tx1_done, led_rx1_valid;
    wire led_tx2_done, led_rx2_valid;
    wire [7:0] led_rx_data;

    // 3. DUT (Device Under Test) 인스턴스
    can_dual_test_top u_dut (
        .clk(clk),
        .reset_p(reset_p),
        .btn_send(btn_send),
        .sw(sw),
        
        // [핵심] 실제 보드에서는 트랜시버가 해주는 역할을 여기서 배선으로 처리
        .can1_rx(can_bus_line), // Node 1이 듣는 신호
        .can1_tx(can1_tx),      // Node 1이 말하는 신호
        
        .can2_rx(can_bus_line), // Node 2가 듣는 신호
        .can2_tx(can2_tx),      // Node 2가 말하는 신호 (여기서 ACK가 나와야 함)
        
        .led_tx1_done(led_tx1_done),
        .led_rx1_valid(led_rx1_valid),
        .led_tx2_done(led_tx2_done),
        .led_rx2_valid(led_rx2_valid),
        .led_rx_data(led_rx_data)
    );

    // 4. CAN Bus의 물리적 특성 모사 (Wired-AND)
    // 두 노드 중 하나라도 0(Dominant)을 출력하면 버스는 0이 된다.
    // 둘 다 1(Recessive)일 때만 버스가 1이 된다.
    assign can_bus_line = can1_tx & can2_tx;

    // 5. 클럭 생성 (100MHz = 10ns 주기)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // 6. 테스트 시나리오
    initial begin
        // 초기화
        reset_p = 1;
        btn_send = 0;
        sw = 8'hAA; // 테스트 데이터 0xAA 설정
        
        #100; // 100ns 대기
        reset_p = 0; // 리셋 해제
        
        #1000; // 시스템 안정화 대기
        
        // [Step 1] 전송 시작 (버튼 누름)
        $display("Transaction Start: Node 1 sending 0xAA...");
        btn_send = 1;
        #20000; // 버튼을 충분히 길게 누름 (디바운싱 로직 통과 위해 10ms 이상 필요할 수 있으나 시뮬레이션에선 로직 체크만)
        // 주의: 작성하신 button_debounce가 10ms를 기다리므로 시뮬레이션 시간을 아주 길게 잡거나,
        // 시뮬레이션용으로 button_debounce의 카운터 값을 줄여서 테스트해야 합니다.
        // 여기서는 강제로 trigger 신호를 생성했다고 가정하거나 아주 오래 기다려야 합니다.
        // *팁: 시뮬레이션 할 때는 button_debounce의 `cnt < 20'd1_000_000` 부분을 `cnt < 20'd10` 정도로 줄이고 하세요!
        
        btn_send = 0;

        // [Step 2] 데이터 전송 관찰
        // 1Mbps 기준, 1비트 = 1us. 
        // 데이터 프레임은 약 110비트 ~ 130비트 -> 약 150us 소요
        #200000; // 200us 대기 (충분한 시간)

        // [Step 3] 결과 확인
        if (led_tx1_done && led_rx2_valid && (led_rx_data == 8'hAA)) begin
            $display("SUCCESS: ACK received and Data Verified!");
        end else begin
            $display("FAIL: Check Waveform. TX_Done=%b, RX_Valid=%b, Data=%h", led_tx1_done, led_rx2_valid, led_rx_data);
        end
        
        $finish;
    end

endmodule
