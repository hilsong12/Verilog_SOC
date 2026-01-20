`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 10:30:05 AM
// Design Name: 
// Module Name: trackingface_top
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


module trackingface_top(
    input clk, reset_p,
    input rx_in,
    output sg90_pwm,
    output [7:0] seg,
    output [3:0] com);

    wire [7:0] uart_data;
    wire uart_done;
    reg [7:0] angle_fixed; 
    wire [14:0] w_high_dur;

    // 각도 변화 속도 조절을 위한 카운터 (약 10ms마다 1도 이동)
    reg [19:0] slow_clk;

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            angle_fixed <= 8'd90;
            slow_clk <= 0;
        end else begin
            slow_clk <= slow_clk + 1;
            // 100MHz 기준 1,000,000번 카운트 = 10ms
            if(slow_clk >= 1000000) begin 
                slow_clk <= 0;
                // 현재 각도(angle_fixed)를 목표 각도(uart_data)로 서서히 접근
                if (angle_fixed < uart_data) 
                    angle_fixed <= angle_fixed + 1;
                else if (angle_fixed > uart_data) 
                    angle_fixed <= angle_fixed - 1;
            end
        end
    end

    uart_rx rx_inst (
        .clk(clk), .reset_p(reset_p), .rx_in(rx_in),
        .data(uart_data), .done(uart_done)
    );

    mg996r_control ctrl_inst (
        .angle_in(angle_fixed),
        .high_dur(w_high_dur)
    );

    pwm_generator pwm_inst (
        .clk(clk), .reset_p(reset_p),
        .high_dur(w_high_dur), .pwm(sg90_pwm)
    );

    wire [11:0] bcd_angle;
    bin_to_dec btd_inst(.bin({6'd0, angle_fixed}), .bcd(bcd_angle));
    FND_cntr fnd_inst(.clk(clk), .reset_p(reset_p), 
                     .fnd_value({4'd0, bcd_angle[11:0]}), .seg(seg), .com(com)); 

endmodule
