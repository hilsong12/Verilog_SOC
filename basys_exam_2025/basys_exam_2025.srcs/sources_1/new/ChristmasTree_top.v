`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2025 01:31:11 PM
// Design Name: 
// Module Name: ChristmasTree_top
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


module ChristmasTree_top(
    input clk, reset_p,
//    input state,
    input [3:0] button,
    output speaker,
    output [15:0] led
);
    // --- 1. 버튼 컨트롤러 ---
    wire [3:0] btn_pedge;
    button_cntr btn0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]));
    button_cntr btn1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]));

    // --- 2. 상태 제어 레지스터 ---
    reg play_stop;
    reg [4:0] song_sel;
    localparam S1=5'b00001, S2=5'b00010, S3=5'b00100, S4=5'b01000, S5=5'b10000;
    
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) play_stop <= 1'b0;
        else if(btn_pedge[0]) play_stop <= ~play_stop;
    end

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) song_sel <= S1;
        else if(btn_pedge[1]) begin
            case(song_sel)
                S1: song_sel <= S2;
                S2: song_sel <= S3;
                S3: song_sel <= S4;
                S4: song_sel <= S5;
                S5: song_sel <= S1;
                default: song_sel <= S1;
            endcase
        end
    end

    // --- 3. 음악 시스템 연결 ---
    music_player_system music_inst (
        .clk(clk),
        .reset_p(reset_p),
        .play_stop(play_stop),
        .song_sel(song_sel),
        .speaker(speaker)
    );

    // --- 4. 트로트 LED 리듬 컨트롤러 (3번 곡용) ---
    wire [15:0] led_rhythm_trot;
    trot_led_controller led_trot_inst (
        .clk(clk),
        .reset_p(reset_p),
        .play_stop(play_stop && (song_sel == S3)), // 3번 곡일 때만 작동
        .led_rhythm(led_rhythm_trot)
    );

    // --- 5. 곡별 LED 패턴 선택 로직 (현실적인 이식 방법) ---
    reg [15:0] led_out;
    assign led = led_out;

    always @(*) begin
        if (!play_stop) begin
            // 연주 정지 중에는 현재 선택된 곡 번호 표시
            led_out = {11'b0, song_sel};
        end else begin
            case(song_sel)
                S3: begin 
                    // 3번 곡(몸매): 트로트 리듬 패턴 출력
                    led_out = led_rhythm_trot;
                end
                S1: begin
                    // 1번 곡(고요한 밤): 추후 여기에 다른 LED 모듈이나 패턴 연결
                    led_out = 16'hAAAA; // 예시: 지그재그 패턴
                end
                S2: begin
                    // 2번 곡(징글벨): 추후 여기에 다른 LED 모듈이나 패턴 연결
                    led_out = 16'h5555; // 예시: 반대 지그재그 패턴
                end
                default: begin
                    led_out = 16'h0000;
                end
            endcase
        end
    end

endmodule