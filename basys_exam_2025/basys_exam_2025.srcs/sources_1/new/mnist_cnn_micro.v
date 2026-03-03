`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 09:53:12 AM
// Design Name: 
// Module Name: mnist_cnn_micro
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


// 첫번째 레이어에서 출력 내보내기까지만
module conv2d_buf(
    input clk, reset_p,
    input start,
    // data from ram이 pixel 로 저장될것
    input [7:0] pixel,
    // 버튼을 눌렀을 때 그래픽 LCD와 NPU간의 주소읽기 모드를 MUX로 처리
    output reg [9:0] buf_idx,
    output reg [7:0] value_00, value_01, value_02, value_03, 
                     value_04, value_05, value_06, value_07,
                     value_08, value_09, value_10, value_11,
    output reg valid_buf);
    
    localparam WIDTH = 31;
    localparam HIGH  = 30;
    
    localparam IDLE             = 0;
    localparam BUFFER_LOAD      = 1;
    localparam OUT_FILTER_FRAME = 2;
    
    reg [1:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)state = IDLE;
        else state = next_state;
    end
    
    
    reg [7:0] buffer [0:HIGH - 1][0:WIDTH - 1];
    reg [4:0] w_idx, h_idx;
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            buf_idx = 0;
            w_idx = 0;
            h_idx = 0;
            next_state = IDLE;
            valid_buf = 0;
            value_00 = 0;
            value_01 = 0;
            value_02 = 0;
            value_03 = 0; 
            value_04 = 0;
            value_05 = 0;
            value_06 = 0;
            value_07 = 0;
            value_08 = 0;
            value_09 = 0;
            value_10 = 0;
            value_11 = 0;
        end
        else begin
            case(state)
                IDLE: begin
                    if(start)next_state = BUFFER_LOAD;
                    else next_state = IDLE;
                end
                BUFFER_LOAD: begin
                    if(w_idx >= 30)begin
                        w_idx = 0;
                        if(h_idx >= 29)begin
                            h_idx = 0;
                            buf_idx = 0;
                            next_state = OUT_FILTER_FRAME;
                        end
                        else begin
                            h_idx = h_idx + 1;
                        end
                    end
                    else begin
                        if(h_idx == 0 || h_idx >= 29 || w_idx == 0 || w_idx >= 29)begin
                            buffer[h_idx][w_idx] = 0;                      
                        end
                        else begin
                            buffer[h_idx][w_idx] = pixel;    
                            buf_idx = buf_idx + 1;
                        end
                        w_idx = w_idx + 1;
                    end
                end
                OUT_FILTER_FRAME: begin
                    if(w_idx >= 28)begin
                        buf_idx = 0;
                        if(h_idx >= 28)begin
                            h_idx = 0;
                            next_state = IDLE;
                            valid_buf =0;
                        end
                        else begin
                            h_idx = h_idx + 1;
                        end
                    end
                    else begin
                        valid_buf = 1; // BUFFER 출력 나간다는 표시용 플래그
                        value_00 = buffer[h_idx][w_idx];
                        value_01 = buffer[h_idx][w_idx+1];
                        value_02 = buffer[h_idx][w_idx+2];
                        value_03 = buffer[h_idx][w_idx+3]; 
                        value_04 = buffer[h_idx+1][w_idx];
                        value_05 = buffer[h_idx+1][w_idx+1];
                        value_06 = buffer[h_idx+1][w_idx+2];
                        value_07 = buffer[h_idx+1][w_idx+3];
                        value_08 = buffer[h_idx+2][w_idx];
                        value_09 = buffer[h_idx+2][w_idx+1];
                        value_10 = buffer[h_idx+2][w_idx+2];
                        value_11 = buffer[h_idx+2][w_idx+3];
                        w_idx = w_idx + 1;
                    end
                end
            endcase
        end
    end
endmodule

module conv2d_calc(
    input clk, reset_p,
    input valid_buf,
    input  [7:0] value_00,value_01,value_02,value_03,value_04,
                 value_05,value_06,value_07,value_08,value_09,
                 value_10,value_11,
    output reg signed [15:0] conv_out_0,
    output reg signed [15:0] conv_out_1,
    output reg signed [15:0] conv_out_2,
    output reg signed [15:0] conv_out_3,
    output reg signed [15:0] conv_out_4,
    output reg valid_out_calc
);
    localparam ROW =3;
    localparam COLMN = 4;
    reg [7:0] buffer [0:COLMN -1][0:ROW -1];
    reg signed [7:0] weight_0 [0:11];
    reg signed [7:0] weight_1 [0:11];
    reg signed [7:0] weight_2 [0:11];
    reg signed [7:0] weight_3 [0:11];
    reg signed [7:0] weight_4 [0:11];
    
    reg signed [7:0] bias [0:4];
    
    
    initial begin
      $readmemh("conv2d_weights_filter_0.txt",weight_0);
      $readmemh("conv2d_weights_filter_1.txt",weight_1);
      $readmemh("conv2d_weights_filter_2.txt",weight_2);
      $readmemh("conv2d_weights_filter_3.txt",weight_3);
      $readmemh("conv2d_weights_filter_4.txt",weight_4);
      
      $readmemh("conv2d_bias.txt",bias);
    end
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            conv_out_0 =0;
            conv_out_1 =0;
            conv_out_2 =0;
            conv_out_3 =0;
            conv_out_4 =0;
            valid_out_calc=0;
        end
        else if(valid_buf)begin
            valid_out_calc=1;
            conv_out_0 = value_00*weight_0[0] + 
                       value_01*weight_0[1] +
                       value_02*weight_0[2] +
                       value_03*weight_0[3] +
                       value_04*weight_0[4] +
                       value_05*weight_0[5] +
                       value_06*weight_0[6] +
                       value_07*weight_0[7] +
                       value_08*weight_0[8] +
                       value_09*weight_0[9] +
                       value_10*weight_0[10] +
                       value_11*weight_0[11] +
                       bias[0];
            if(conv_out_0<0) conv_out_0 = 0; //relu
            conv_out_1 = value_00*weight_1[0] + 
                       value_01*weight_1[1] +
                       value_02*weight_1[2] +
                       value_03*weight_1[3] +
                       value_04*weight_1[4] +
                       value_05*weight_1[5] +
                       value_06*weight_1[6] +
                       value_07*weight_1[7] +
                       value_08*weight_1[8] +
                       value_09*weight_1[9] +
                       value_10*weight_1[10] +
                       value_11*weight_1[11] +
                       bias[1];
            if(conv_out_1<0) conv_out_1 = 0; //relu
             conv_out_2 = value_00*weight_2[0] + 
                       value_01*weight_2[1] +
                       value_02*weight_2[2] +
                       value_03*weight_2[3] +
                       value_04*weight_2[4] +
                       value_05*weight_2[5] +
                       value_06*weight_2[6] +
                       value_07*weight_2[7] +
                       value_08*weight_2[8] +
                       value_09*weight_2[9] +
                       value_10*weight_2[10] +
                       value_11*weight_2[11] +
                       bias[2];
            if(conv_out_2<0) conv_out_2 = 0; //relu
            conv_out_3 = value_00*weight_3[0] + 
                       value_01*weight_3[1] +
                       value_02*weight_3[2] +
                       value_03*weight_3[3] +
                       value_04*weight_3[4] +
                       value_05*weight_3[5] +
                       value_06*weight_3[6] +
                       value_07*weight_3[7] +
                       value_08*weight_3[8] +
                       value_09*weight_3[9] +
                       value_10*weight_3[10] +
                       value_11*weight_3[11] +
                       bias[3];
            if(conv_out_3<0) conv_out_3 = 0; //relu
            conv_out_4 = value_00*weight_4[0] + 
                       value_01*weight_4[1] +
                       value_02*weight_4[2] +
                       value_03*weight_4[3] +
                       value_04*weight_4[4] +
                       value_05*weight_4[5] +
                       value_06*weight_4[6] +
                       value_07*weight_4[7] +
                       value_08*weight_4[8] +
                       value_09*weight_4[9] +
                       value_10*weight_4[10] +
                       value_11*weight_4[11] +
                       bias[4];
            if(conv_out_4<0) conv_out_4 = 0; //relu
        end
        else valid_out_calc=0;
    end
endmodule

module maxpool_conv2d(
    input clk,reset_p,
    input valid_calc,
    input signed [15:0] conv_out_0,
    input signed [15:0] conv_out_1,
    input signed [15:0] conv_out_2,
    input signed [15:0] conv_out_3,
    input signed [15:0] conv_out_4,
    output signed [15:0] max_value_0,
    output signed [15:0] max_value_1,
    output signed [15:0] max_value_2,
    output signed [15:0] max_value_3,
    output signed [15:0] max_value_4,
    output max_value_valid
);
    reg [15:0] buffer_0 [0:13][0:13];  
    reg [15:0] buffer_1 [0:13][0:13];
    reg [15:0] buffer_2 [0:13][0:13];
    reg [15:0] buffer_3 [0:13][0:13];
    reg [15:0] buffer_4 [0:13][0:13];
    reg [4:0] cnt_pixel_x,cnt_pixel_y;  
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_pixel_x=0;
            cnt_pixel_y=0;
        end
        else begin
            if(valid_calc)begin
                if(cnt_pixel_x >=28)begin
                    cnt_pixel_x = 0;
                    if(cnt_pixel_y >=28) begin
                        cnt_pixel_y =0;
                    end
                    else begin
                        cnt_pixel_y = cnt_pixel_y +1;
                    end
                end
                else begin
                    cnt_pixel_x = cnt_pixel_x +1;
                end
                if(conv_out_0 > buffer_0[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]]) begin
                    buffer_0[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]] = conv_out_0;
                end
                if(conv_out_1 > buffer_1[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]]) begin
                    buffer_1[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]] = conv_out_1;
                end
                if(conv_out_2 > buffer_2[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]]) begin
                    buffer_2[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]] = conv_out_2;
                end
                if(conv_out_3 > buffer_3[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]]) begin
                    buffer_3[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]] = conv_out_3;
                end
                if(conv_out_4 > buffer_4[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]]) begin
                    buffer_4[cnt_pixel_x[4:1]][cnt_pixel_y[4:1]] = conv_out_4;
                end
            end
            else begin
            
            end
        end
    end
    
    
    
    

endmodule 