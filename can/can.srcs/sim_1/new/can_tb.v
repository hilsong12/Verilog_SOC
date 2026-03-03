`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2026 02:10:05 PM
// Design Name: 
// Module Name: can_tb
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

module tb_can_bit_timing();

    // 1. 테스트용 신호 선언
    reg clk;
    reg reset_p;
    reg can_rx;
    reg is_idle;

    wire tq_tick;
    wire sample_en;
    wire bit_end;

    // 에지 검출용 내부 레지스터 (TB 내부 임시 구현)
    reg rx_d1, rx_d2;
    wire rx_falling_edge;

    // 2. 클럭 생성 (100MHz -> 주기 10ns)
    always #5 clk = ~clk;

    // 3. 에지 검출기 (테스트벤치용 간단 구현)
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            rx_d1 <= 1'b1;
            rx_d2 <= 1'b1;
        end else begin
            rx_d1 <= can_rx;
            rx_d2 <= rx_d1;
        end
    end
    assign rx_falling_edge = (rx_d2 == 1'b1 && rx_d1 == 1'b0);

    // 4. 모듈 인스턴스화 (Prescaler + BTL)
    can_prescaler u_prescaler (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick)
    );

    can_bit_timing_pro u_btl (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick),
        .rx_falling_edge(rx_falling_edge),
        .is_idle(is_idle),
        .sample_en(sample_en),
        .bit_end(bit_end)
    );

    // 5. 시뮬레이션 시나리오
    initial begin
        // 초기화
        clk = 0;
        reset_p = 1;
        can_rx = 1;      // 버스 대기 상태 (Recessive)
        is_idle = 1;     // 현재 버스는 Idle 상태라고 알림

        #50 reset_p = 0; // 리셋 해제
        
        $display("=== CAN Bit Timing Simulation Start ===");

        // --------------------------------------------------
        // [시나리오 1] Hard Synchronization (프레임 시작 - SOF)
        // --------------------------------------------------
        #200;
        $display("[%0t] SCENARIO 1: Hard Sync (SOF)", $time);
        can_rx = 0;      // 1 -> 0으로 떨어지는 하강 에지 발생 (SOF)
        
        #100;
        is_idle = 0;     // 이제 버스는 더 이상 Idle이 아님 (데이터 구간 진입)
        can_rx = 1;      // 편의상 다시 1로 복구

        // 1비트 시간(1000ns)을 기다림
        // 750ns(15 Tq) 쯤에 sample_en 펄스가, 1000ns(20 Tq) 쯤에 bit_end 펄스가 떠야 함
        #1000; 

        // --------------------------------------------------
        // [시나리오 2] 정상적인 비트 (에지 없음 또는 정위치)
        // --------------------------------------------------
        $display("[%0t] SCENARIO 2: Normal Bit", $time);
        // 아무 변화 없이 1비트 더 대기
        #1000;

        // --------------------------------------------------
        // [시나리오 3] Resynchronization (에지가 늦게 도착함)
        // --------------------------------------------------
        $display("[%0t] SCENARIO 3: Late Edge (SJW 연장 테스트)", $time);
        // 원래 다음 비트의 시작 지점(bit_end 직후)에서 에지가 떨어져야 하지만,
        // 고의로 TSEG1 구간 도중(약 300ns 지연)에 하강 에지를 줘서 SJW가 발동하는지 확인
        #300; 
        can_rx = 0; 
        #100;
        can_rx = 1;

        // 에지가 늦었으므로, 이번 비트는 평소(1000ns)보다 SJW만큼 조금 더 길어져서 bit_end가 떠야 함
        #1500; 

        $display("=== Simulation End ===");
        $finish;
    end

    // 6. 콘솔 출력 모니터링 (파형 없이도 터미널에서 확인 가능)
    always @(posedge clk) begin
        if (sample_en) 
            $display("  -> [%0t] 🎯 SAMPLE_EN Pulsed (75%% Point)", $time);
        if (bit_end) 
            $display("  -> [%0t] 🏁 BIT_END Pulsed (1 Bit Completed)", $time);
    end

endmodule

`timescale 1ns / 1ps

module tb_can_phase1();

    // 1. 시뮬레이션용 외부 입력 신호 선언
    reg clk;
    reg reset_p;
    reg can_rx;

    // 모듈 간 연결을 위한 내부 와이어 선언
    wire tq_tick;
    wire rx_falling_edge;
    wire is_idle;
    wire sample_en;
    wire bit_end;

    // 2. 시스템 클럭 생성 (100MHz -> 10ns 주기)
    always #5 clk = ~clk;

    // --------------------------------------------------
    // 3. 모듈 인스턴스화 (3개의 블록을 하나로 연결!)
    // --------------------------------------------------
    
    // ① 통신 속도 생성기 (50ns 틱)
    can_prescaler u_prescaler (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick)
    );

    // ② 버스 모니터 (에지 감지 및 Idle 판단)
    can_bus_monitor u_monitor (
        .clk(clk),
        .reset_p(reset_p),
        .can_rx(can_rx),
        .tq_tick(tq_tick),
        .rx_falling_edge(rx_falling_edge),
        .is_idle(is_idle)
    );

    // ③ 비트 타이밍 로직 (샘플링 위치 조절)
    can_bit_timing_pro u_btl (
        .clk(clk),
        .reset_p(reset_p),
        .tq_tick(tq_tick),
        .rx_falling_edge(rx_falling_edge),
        .is_idle(is_idle),
        .sample_en(sample_en),
        .bit_end(bit_end)
    );

    // --------------------------------------------------
    // 4. 통합 시뮬레이션 시나리오
    // --------------------------------------------------
    initial begin
        // 초기화 세팅
        clk = 0;
        reset_p = 1;
        can_rx = 1;  // 버스는 기본적으로 '1'(Recessive)을 띄고 있음

        #50 reset_p = 0;
        
        $display("========================================");
        $display("🚀 Phase 1 통합 시뮬레이션 시작");
        $display("========================================");

        // --------------------------------------------------
        // [시나리오 1] Bus Idle 감지 대기 (11비트 연속 '1')
        // --------------------------------------------------
        // 1비트 = 20 Tq (1000ns). 11비트 = 220 Tq (11,000ns).
        $display("\n[%0t] SCENARIO 1: Bus Idle 감지 테스트 (약 11,000ns 소요)", $time);
        
        // 12,000ns 동안 넉넉하게 기다려서 하드웨어가 스스로 is_idle을 1로 띄우는지 대기
        #12000; 
        if (is_idle) $display("  -> [%0t] ✅ 성공! 연속 11비트 감지하여 Bus Idle 상태 진입", $time);

        // --------------------------------------------------
        // [시나리오 2] SOF 에지 발생 -> 하드 동기화
        // --------------------------------------------------
        $display("\n[%0t] SCENARIO 2: SOF 프레임 시작 (Hard Sync)", $time);
        // Idle 상태에서 처음으로 '0'으로 떨어지는 하강 에지 발생!
        can_rx = 0;  
        
        // 데이터 구간으로 1비트(1000ns) 대기
        #1000;

        // --------------------------------------------------
        // [시나리오 3] 정상 비트 진행 및 Idle 해제 확인
        // --------------------------------------------------
        $display("\n[%0t] SCENARIO 3: 통신 진행 (is_idle 해제 확인)", $time);
        can_rx = 1; // 0 -> 1로 변해도 동기화에는 영향 없음 (하강 에지가 아니므로)
        
        if (!is_idle) $display("  -> [%0t] ✅ 성공! 통신 시작 후 is_idle이 0으로 떨어짐", $time);
        
        #1000;

        // --------------------------------------------------
        // [시나리오 4] TSEG1 구간에서의 에지 (Late Edge -> 연장)
        // --------------------------------------------------
        $display("\n[%0t] SCENARIO 4: Late Edge 발생 (SJW 연장 테스트)", $time);
        #300;        // 다음 비트 시작 후 300ns 쯤 지연되어서 하강 에지 발생
        can_rx = 0;
        #100;
        can_rx = 1;
        
        // 연장된 비트 길이를 고려하여 충분히 대기
        #1600; 

        // --------------------------------------------------
        // [시나리오 5] TSEG2 구간에서의 에지 (Early Edge -> 단축)
        // --------------------------------------------------
        $display("\n[%0t] SCENARIO 5: Early Edge 발생 (SJW 단축 테스트)", $time);
        // 비트가 끝나기 전, 예상보다 일찍 하강 에지가 발생
        #800;
        can_rx = 0;
        #100;
        can_rx = 1;

        #1000;

        $display("\n========================================");
        $display("🏁 시뮬레이션 종료");
        $display("========================================");
        $finish;
    end

    // --------------------------------------------------
    // 5. 샘플링 및 종료 펄스 실시간 모니터링
    // --------------------------------------------------
    always @(posedge clk) begin
        if (sample_en) 
            $display("  -> [%0t] 🎯 SAMPLE_EN 펄스 발생", $time);
        if (bit_end) 
            $display("  -> [%0t] 🏁 BIT_END 펄스 발생", $time);
    end

endmodule

`timescale 1ns / 1ps

module tb_can_destuffing();
    reg clk;
    reg reset_p;
    reg sample_en;
    reg can_rx;
    reg is_idle;

    wire sample_en_delayed;
    wire destuffed_bit;
    wire bit_valid;
    wire stuff_error;

    // 모니터링용 지연 신호 레지스터
    reg sample_en_delayed_reg; 

    always #5 clk = ~clk;

    can_destuffing u_destuff (
        .clk(clk),
        .reset_p(reset_p),
        .sample_en(sample_en),
        .can_rx(can_rx),
        .is_idle(is_idle),
        .sample_en_delayed(sample_en_delayed),
        .destuffed_bit(destuffed_bit),
        .bit_valid(bit_valid),
        .stuff_error(stuff_error)
    );

    // --------------------------------------------------
    // [수정 포인트 1] 모니터링 신호 초기화 및 할당
    // --------------------------------------------------
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            sample_en_delayed_reg <= 1'b0; // 리셋 시 0으로 초기화
        end else begin
            sample_en_delayed_reg <= sample_en_delayed; // 지연 신호 추적
        end
    end

    task send_bit(input bit_val);
        begin
            @(posedge clk);
            can_rx <= bit_val;
            repeat(74) @(posedge clk); 
            sample_en <= 1'b1;
            @(posedge clk);
            sample_en <= 1'b0;
            repeat(24) @(posedge clk);
        end
    endtask

    initial begin
        // [수정 포인트 2] 초기값 설정
        clk = 0;
        reset_p = 1;
        sample_en = 0;
        can_rx = 1;
        is_idle = 1;

        repeat(10) @(posedge clk);
        reset_p = 0;
        repeat(10) @(posedge clk);
        is_idle = 0; 

        $display("=== CAN Destuffing Final Test Start ===");

        // 시나리오 실행 (이전과 동일)
        send_bit(1); send_bit(0); send_bit(1); send_bit(0);
        send_bit(0); send_bit(0); send_bit(0); send_bit(0); send_bit(0);
        send_bit(1); // 0 스터핑 확인용

        repeat(50) @(posedge clk);
        $finish;
    end

    // 결과 모니터링: 이제 sample_en_delayed_reg가 0 또는 1로 정확히 나옵니다.
    always @(posedge clk) begin
        if (sample_en_delayed_reg) begin
            $display("  [%0t] Bit: %b, Valid: %b", $time, destuffed_bit, bit_valid);
        end
    end
endmodule

`timescale 1ns / 1ps

module tb_can_stuffing();
    reg clk;
    reg reset_p;
    reg bit_end;
    reg tx_bit_in;
    reg is_idle;

    wire can_tx_out;
    wire tx_ready;

    always #5 clk = ~clk;

    can_stuffing u_stuff (
        .clk(clk), .reset_p(reset_p), .bit_end(bit_end),
        .tx_bit_in(tx_bit_in), .is_idle(is_idle),
        .can_tx_out(can_tx_out), .tx_ready(tx_ready)
    );

    // --------------------------------------------------
    // [보강된 Task] 스터핑 이후 데이터 복구 확인용
    // --------------------------------------------------
    task send_tx_bit(input bit_val);
        begin
            @(posedge clk);
            // 1. Ready 상태일 때만 새로운 데이터 입력
            if (tx_ready) tx_bit_in <= bit_val;

            repeat(98) @(posedge clk);
            bit_end <= 1'b1;
            @(posedge clk);
            bit_end <= 1'b0;

            // 🎯 중요: Registered Output이 업데이트될 때까지 1클럭 대기
            @(posedge clk); 

            // 2. 만약 스터핑이 발생했다면 (tx_ready == 0)
            if (tx_ready == 1'b0) begin
                $display("  -> [%0t] [WAIT] 스터핑 비트(1) 송출 중... 상위 로직 대기 시작", $time);
                
                // 스터핑 비트가 나가는 100클럭 동안 대기
                repeat(98) @(posedge clk); 
                
                // 스터핑 비트 종료를 알리는 bit_end 발생
                bit_end <= 1'b1;
                @(posedge clk);
                bit_end <= 1'b0;
                
                // 다시 1클럭 대기하여 tx_ready가 1로 복구되는지 확인
                @(posedge clk);
                if (tx_ready) 
                    $display("  -> [%0t] [RESUME] tx_ready 복구! 이제 진짜 데이터(0) 송출 시작", $time);
            end
        end
    endtask

    initial begin
        clk = 0; reset_p = 1; bit_end = 0; tx_bit_in = 1; is_idle = 1;
        repeat(10) @(posedge clk);
        reset_p = 0; is_idle = 0;

        $display("=== CAN Stuffing Recovery Test Start ===");

        // [시나리오] 0을 6개 보냄 (0-0-0-0-0 -> 1(Stuff) -> 0)
        // 5번째 0을 보낼 때 태스크 내부에서 스터핑 대기 로직이 작동합니다.
        send_tx_bit(0); 
        send_tx_bit(0); 
        send_tx_bit(0); 
        send_tx_bit(0); 
        send_tx_bit(0); // 여기서 스터핑 발생! (1 송출)
        
        // 6번째 0을 보내서 실제 데이터가 복구되는지 확인
        send_tx_bit(0); 

        repeat(150) @(posedge clk);
        $display("=== Test Completed ===");
        $finish;
    end

    // 결과 모니터링
    always @(posedge clk) begin
        if (bit_end) begin
            $display("  -> [%0t] [BIT_END] Out: %b, Ready: %b", $time, can_tx_out, tx_ready);
        end
    end
endmodule

`timescale 1ns / 1ps

module tb_can_rx_system();
    reg clk;
    reg reset_p;
    reg sample_en;
    reg can_rx;
    reg is_idle;
    reg clr_reg;

    wire sample_en_delayed;
    wire destuffed_bit;
    wire bit_valid;
    wire [63:0] rx_data_out;

    always #5 clk = ~clk;

    // 1. Destuffing 모듈 인스턴스
    can_destuffing u_destuff (
        .clk(clk), .reset_p(reset_p), .sample_en(sample_en),
        .can_rx(can_rx), .is_idle(is_idle),
        .sample_en_delayed(sample_en_delayed),
        .destuffed_bit(destuffed_bit), .bit_valid(bit_valid)
    );

    // 2. Shift Register 모듈 인스턴스 (지연 신호로 동기화)
    can_rx_shift u_shift (
        .clk(clk), .reset_p(reset_p), 
        .sample_en_delayed(sample_en_delayed),
        .bit_valid(bit_valid), .destuffed_bit(destuffed_bit),
        .clr_reg(clr_reg), .rx_data_out(rx_data_out)
    );

    task send_bit(input bit_val);
        begin
            @(posedge clk); can_rx <= bit_val;
            repeat(74) @(posedge clk);
            sample_en <= 1'b1; @(posedge clk); sample_en <= 1'b0;
            repeat(24) @(posedge clk);
        end
    endtask

    initial begin
        clk = 0; reset_p = 1; is_idle = 1; can_rx = 1; clr_reg = 0;
        repeat(10) @(posedge clk); reset_p = 0; is_idle = 0;

        $display("=== CAN RX Assembly Test Start ===");

        // 시나리오: 0xA5 (10100101) 전송 시도 (스터핑 없음)
        // 1-0-1-0-0-1-0-1 순서로 전송 (MSB First)
        send_bit(1); send_bit(0); send_bit(1); send_bit(0);
        send_bit(0); send_bit(1); send_bit(0); send_bit(1);

        #100;
        $display("[%0t] 조립 결과: 8'h%h (예상: A5)", $time, rx_data_out[7:0]);

        // 시나리오: 00000 데이터 뒤에 스터핑 1이 끼어드는 경우
        // 보낼 신호: 0-0-0-0-0 -> [1(Stuff)] -> 1
        // 결과는 000001 (0x01)이어야 함 (스터핑 1은 제외)
        send_bit(0); send_bit(0); send_bit(0); send_bit(0); send_bit(0);
        send_bit(1); // 스터핑 비트
        send_bit(1); // 실제 데이터 비트

        #100;
        $display("[%0t] 스터핑 제거 후 결과: 6'h%h (예상: 01)", $time, rx_data_out[5:0]);

        repeat(50) @(posedge clk);
        $finish;
    end
endmodule

`timescale 1ns / 1ps

module tb_can_tx_system();
    reg clk;
    reg reset_p;
    reg bit_end;
    reg is_idle;
    reg load_en;
    reg [63:0] tx_data_in;

    wire tx_bit_internal; 
    wire can_tx_out;
    wire tx_ready;

    always #5 clk = ~clk;

    // 1. TX Shift Register 연결
    can_tx_shift u_tx_shift (
        .clk(clk), .reset_p(reset_p), .bit_end(bit_end),
        .tx_ready(tx_ready), .load_en(load_en),
        .tx_data_in(tx_data_in), .tx_bit_out(tx_bit_internal)
    );

    // 2. Bit Stuffing 연결 (수정된 버전)
    can_stuffing u_stuff (
        .clk(clk), .reset_p(reset_p), .bit_end(bit_end),
        .tx_bit_in(tx_bit_internal), .is_idle(is_idle),
        .can_tx_out(can_tx_out), .tx_ready(tx_ready)
    );

    // [Task] 1비트 전송 주기를 시뮬레이션
    task run_bit_clock();
        begin
            repeat(99) @(posedge clk);
            bit_end <= 1'b1;
            @(posedge clk);
            bit_end <= 1'b0;
        end
    endtask

    // [Task] 8비트 데이터를 로드하고 전송하는 자동화 태스크
    task send_8bit(input [7:0] data);
        integer i;
        begin
            @(posedge clk);
            tx_data_in <= {data, 56'd0}; 
            load_en <= 1'b1;
            @(posedge clk);
            load_en <= 1'b0;
            
            $display("--- [%0t] Data Start: 8'h%h ---", $time, data);
            
            // 8비트 데이터 전송 + 스터핑 여유분을 위해 12회 반복
            for (i = 0; i < 12; i = i + 1) begin
                run_bit_clock();
            end
            
            is_idle <= 1'b1;
            repeat(10) @(posedge clk);
            is_idle <= 1'b0;
        end
    endtask

    initial begin
        clk = 0; reset_p = 1; bit_end = 0; is_idle = 1; load_en = 0; tx_data_in = 0;
        repeat(20) @(posedge clk);
        reset_p = 0; is_idle = 0;

        $display("=== CAN TX Full Scenarios Test Start ===");

        // 시나리오 1: 스터핑 트리거 패턴 (0x1F = 0001_1111)
        // 1이 5개 연속되므로 스터핑 비트 0이 반드시 삽입되어야 함
        send_8bit(8'h1F);

        // 시나리오 2: 올 제로 패턴 (0x00 = 0000_0000)
        // 0이 연속되므로 중간에 스터핑 비트 1이 삽입되어야 함
        send_8bit(8'h00);

        // 시나리오 3: 교차 패턴 (0xA5 = 1010_0101)
        // 연속된 비트가 없으므로 스터핑이 발생하지 않아야 함
        send_8bit(8'hA5);

        // 시나리오 4: 스터핑이 여러 번 발생하는 극단적 패턴 (0xFF = 1111_1111)
        send_8bit(8'hFF);

        $display("=== All Test Scenarios Completed ===");
        repeat(100) @(posedge clk);
        $finish;
    end

    // 결과 모니터링 로직
    always @(posedge clk) begin
        if (bit_end) begin
            $display("  [%0t] Out: %b, Internal_Bit: %b, Ready: %b", 
                     $time, can_tx_out, tx_bit_internal, tx_ready);
        end
    end

endmodule