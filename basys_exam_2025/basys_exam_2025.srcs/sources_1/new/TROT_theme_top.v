module mommae_top(
    input clk,          // 100MHz
    input reset_p,      // Reset
    input slide,        // Play/Stop (1: 재생 및 리셋, 0: 정지)
    output speaker,     // Speaker output
    output [7:0] led    // LED Output (8개로 수정됨)
);

    // 내부 신호선
    wire [7:0] current_addr;
    wire [31:0] current_freq;
    wire [31:0] current_duration;

    // 1. 악보 (ROM) - 기존 코드 그대로 사용 (변경 없음)
    mommae_rom u_rom (
        .addr(current_addr),
        .freq_half_period(current_freq),
        .duration(current_duration)
    );

    // 2. 연주자 (Sound Driver - FSM 적용)
    sound_driver_articulated u_player (
        .clk(clk),
        .reset_p(reset_p),
        .play_en(slide),
        .freq_half_period(current_freq),
        .duration(current_duration),
        .addr(current_addr),
        .buzzer_out(speaker)
    );

    // 3. 조명 (LED Controller - FSM 적용, 8비트)
    mommae_led_controller u_led (
        .clk(clk),
        .reset_p(reset_p),
        .play_stop(slide),
        .led_rhythm(led)
    );

endmodule