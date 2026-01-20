`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 10:31:12 AM
// Design Name: 
// Module Name: trackingface_sub
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


module trackingface_sub(

    );
endmodule

module pwm_generator(
    input clk,          // 시스템 클럭 (예: 100MHz)
    input reset_p,
    input [14:0] high_dur, // 하이(1)를 유지할 시간 (us 단위, 최대 20,000)
    output reg pwm
    );

    parameter CLK_FREQ = 100; // 100MHz 기준 (보드에 맞춰 수정)

    // 1us 박자 만들기
    reg [8:0] cnt_1us;
    wire clk_1us = (cnt_1us == CLK_FREQ - 1);

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt_1us <= 0;
        else if(clk_1us) cnt_1us <= 0;
        else cnt_1us <= cnt_1us + 1;
    end

    // 20ms(20,000us) 주기 카운터
    reg [14:0] cnt_20ms;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt_20ms <= 0;
        else if(clk_1us) begin
            if(cnt_20ms >= 19999) cnt_20ms <= 0;
            else cnt_20ms <= cnt_20ms + 1;
        end
    end

    // PWM 신호 출력 (입력받은 시간만큼 1로 유지)
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) pwm <= 0;
        else pwm <= (cnt_20ms < high_dur);
    end
endmodule


module mg996r_control(
    input [7:0] angle_in,
    output [14:0] high_dur
    );
    wire [7:0] safe_angle = (angle_in > 180) ? 180 : angle_in;
    assign high_dur = 500 + (safe_angle * 11);
endmodule



module uart_rx (
    input clk, reset_p,
    input rx_in,
    output reg [7:0] data,
    output reg done
);
    parameter CLK_FREQ = 100_000_000;
    parameter BAUD_RATE = 115200;
    parameter TICKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    reg [15:0] tick_cnt;
    reg [3:0] bit_cnt;
    reg rx_reg1, rx_reg2;
    reg active;
    reg [7:0] sh_reg;

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
            sh_reg <= 0;
        end else begin
            done <= 0;
            if (!active) begin
                if (rx_reg2 == 0) begin 
                    active <= 1;
                    tick_cnt <= 0;
                    bit_cnt <= 0;
                end
            end else begin
                if (tick_cnt < TICKS_PER_BIT - 1) begin
                    tick_cnt <= tick_cnt + 1;
                end else begin
                    tick_cnt <= 0;
                    if (bit_cnt == 0) begin 
                        // 샘플링 위치를 비트 중앙으로 옮기기 위해 다음 비트만 반주기 지연
                        tick_cnt <= TICKS_PER_BIT / 2; 
                        bit_cnt <= 1;
                    end else if (bit_cnt <= 8) begin 
                        sh_reg[bit_cnt-1] <= rx_reg2;
                        bit_cnt <= bit_cnt + 1;
                    end else begin 
                        active <= 0;
                        bit_cnt <= 0;
                        done <= 1;
                        data <= sh_reg; 
                    end
                end
            end
        end
    end
endmodule

