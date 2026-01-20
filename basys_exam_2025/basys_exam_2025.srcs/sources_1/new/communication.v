`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2026 11:31:59 AM
// Design Name: 
// Module Name: communication
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


module uart_rx (
    input clk,            // 100MHz 시스템 클럭
    input reset_p,        // 리셋 신호
    input rx_in,          // 라즈베리 파이 TX핀과 연결된 RX 입력
    output reg [7:0] data, // 수신된 8비트 각도 데이터
    output reg done       // 수신 완료 신호 (1클럭 동안 High)
);

    parameter CLK_FREQ = 100_000_000;
    parameter BAUD_RATE = 115200;
    parameter TICKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    reg [15:0] tick_cnt;
    reg [3:0] bit_cnt;
    reg rx_reg1, rx_reg2;
    reg active;

    // 메타스테이빌리티 방지를 위한 더블 플롭핑
    always @(posedge clk) begin
        rx_reg1 <= rx_in;
        rx_reg2 <= rx_reg1;
    end

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            tick_cnt <= 0;
            bit_cnt <= 0;
            active <= 0;
            done <= 0;
            data <= 0;
        end else begin
            done <= 0;
            if (!active) begin
                if (rx_reg2 == 0) begin // Start Bit 감지
                    active <= 1;
                    tick_cnt <= 0;
                    bit_cnt <= 0;
                end
            end else begin
                if (tick_cnt < TICKS_PER_BIT - 1) begin
                    tick_cnt <= tick_cnt + 1;
                end else begin
                    tick_cnt <= 0;
                    if (bit_cnt == 0) begin // Start Bit 확인 (중앙 샘플링)
                        bit_cnt <= 1;
                    end else if (bit_cnt <= 8) begin // 데이터 8비트 수신
                        data[bit_cnt-1] <= rx_reg2;
                        bit_cnt <= bit_cnt + 1;
                    end else begin // Stop Bit 확인 후 완료
                        active <= 0;
                        done <= 1;
                    end
                end
            end
        end
    end
    
    
endmodule
