`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 11:52:02 AM
// Design Name: 
// Module Name: CAN_simulation
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


module CAN_simulation(

    );
endmodule

//////////////////////////////////////////////////////////

module tb_can_timing();

    // 1. 입출력 신호 선언
    reg clk;
    reg reset_p;
    wire tq_tick;
    wire sample_en;
    wire bit_end;

    // 2. 테스트할 모듈들 연결 (Instantiate)
    can_prescaler uut1 (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick)
    );

    can_bit_timing uut2 (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick),
        .sample_en(sample_en),
        .bit_end(bit_end)
    );

    // 3. 100MHz 클럭 생성 (10ns 주기)
    always #5 clk = ~clk;

    // 4. 테스트 시나리오
    initial begin
        // 초기화
        clk = 0;
        reset_p = 1;
        
        // 100ns 후 리셋 해제
        #100;
        reset_p = 0;
        
        // 5000ns 동안 시뮬레이션 진행 (비트 5개 분량)
        #5000;
        
        $finish;
    end

endmodule



module tb_can_hard_sync();

    reg clk, reset_p, can_rx;
    wire tq_tick, sample_en, bit_end;

    // 모듈 연결
    can_prescaler prescaler (
        .clk(clk), .reset_p(reset_p), .tq_tick(tq_tick)
    );

    can_bit_timing timing (
        .clk(clk), .reset_p(reset_p), .tq_tick(tq_tick),
        .can_rx(can_rx), .sample_en(sample_en), .bit_end(bit_end)
    );

    // 100MHz 클럭 생성
    always #5 clk = ~clk;

    initial begin
        // 1. 초기화
        clk = 0; reset_p = 1; can_rx = 1; // CAN 버스는 평소에 1(Recessive)
        #100;
        reset_p = 0;
        #50;

        // ---------------------------------------------------------
        // 시나리오 1: 정상 상태 (Local 타이밍과 외부 신호가 우연히 맞을 때)
        // ---------------------------------------------------------
        wait(timing.tq_cnt == 19 && tq_tick); // 현재 비트가 끝나는 시점에 딱 맞춰서
        #10; can_rx = 0; // SOF(비트 시작) 신호를 줍니다.
        #1000; can_rx = 1; // 1비트 뒤에 다시 1로 복귀
        #500;

        // ---------------------------------------------------------
        // 시나리오 2: 오차 발생 (Local 타이밍은 한참 남았는데 외부 신호가 먼저 올 때)
        // ---------------------------------------------------------
        // 현재 카운터가 10(비트 중간) 정도 되었을 때 갑자기 외부 신호가 들어온다고 가정합니다.
        wait(timing.tq_cnt == 10 && tq_tick); 
        #10; 
        can_rx = 0; // 여기서 하드 동기화 발생! (카운터가 11로 안 가고 0으로 꺾여야 함)
        
        #1000; can_rx = 1;
        #2000;
        $finish;
    end

endmodule


`timescale 1ns / 1ps

module tb_can_rx_top();
    reg clk, reset_p, can_rx;
    wire [10:0] rx_id;
    wire [63:0] rx_data;
    wire [3:0]  rx_dlc;
    wire rx_done_tick;

    // 1. Top 모듈 연결
    can_rx_core_top uut (
        .clk(clk),
        .reset_p(reset_p),
        .can_rx(can_rx),
        .rx_id(rx_id),
        .rx_data(rx_data),
        .rx_dlc(rx_dlc),
        .rx_done_tick(rx_done_tick)
    );

    // 2. 100MHz 클럭 생성 (10ns 주기)
    always #5 clk = ~clk;

    // --- [처방] 경쟁 상태 해결을 위한 스마트 송신 로직 ---
    reg last_bit_sent;
    integer same_bit_cnt;

    task send_bit(input bit_val);
        begin
            // A. 스터핑 비트 체크 및 삽입
            if (same_bit_cnt == 5) begin
                #1; // 클럭 에지와의 충돌 방지 (1ns 딜레이)
                can_rx = ~last_bit_sent;
                #999;
                same_bit_cnt = 1;
                last_bit_sent = can_rx;
            end

            // B. 실제 데이터 비트 전송
            #1; // 클럭 에지와의 충돌 방지 (1ns 딜레이)
            can_rx = bit_val;
            #999;

            // C. 카운트 업데이트
            if (bit_val == last_bit_sent) same_bit_cnt = same_bit_cnt + 1;
            else begin
                same_bit_cnt = 1;
                last_bit_sent = bit_val;
            end
        end
    endtask

    // 바이트 송신용 보조 태스크
    task send_byte(input [7:0] data);
        integer i;
        for(i=7; i>=0; i=i-1) send_bit(data[i]);
    endtask

    // 3. 테스트 시나리오
    initial begin
        // 초기화
        clk = 0; reset_p = 1; can_rx = 1; 
        last_bit_sent = 1; same_bit_cnt = 0;
        
        // 클럭 에지와 어긋나게 리셋 해제
        #105; reset_p = 0; #100;

        // --- 데이터 송신: ID 0x01, DLC 6, Data [10,20,30,40,50,60] ---
        send_bit(0); // SOF

        // ID: 0x01 (00000000001)
        repeat(10) send_bit(0); 
        send_bit(1);

        // Control: RTR, IDE, r0, DLC=6 (0110)
        send_bit(0); send_bit(0); send_bit(0); 
        send_bit(0); send_bit(1); send_bit(1); send_bit(0);

        // Data: 6 Bytes
        send_byte(8'd10); send_byte(8'd20); send_byte(8'd30);
        send_byte(8'd40); send_byte(8'd50); send_byte(8'd60);

        // CRC & ACK & EOF
        repeat(15) send_bit(0); // CRC (더미)
        #1; can_rx = 1; #999;   // CRC Delimiter
        #1; can_rx = 1; #999;   // ACK Slot
        #1; can_rx = 1; #999;   // ACK Delimiter
        repeat(7) begin #1; can_rx = 1; #999; end // EOF

        #2000;
        $finish;
    end
endmodule