`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2025 01:38:43 PM
// Design Name: 
// Module Name: ChristmasTree_music
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

////////////////고요한밤 거룩한밤////////////////////////////////////////////////////////
module silent_night_rom(
    input [5:0] addr,
    output reg [31:0] freq_half_period,
    output reg [31:0] duration
);
    // 100MHz 기준 박자 정의
    parameter B8 = 25_000_000;    // 8분 음표
    parameter B4 = 50_000_000;    // 4분 음표
    parameter B4_D = 75_000_000;  // 점4분 음표
    parameter B2   = 100_000_000; //
    parameter B2_D = 150_000_000; // 점2분 음표

    always @(*) begin
        case(addr)
            // [음계 주파수 카운트 값, 박자 길이]
           // 1~2마디: 고요한 밤~ 거룩한 밤~
            0:  begin freq_half_period = 127550; duration = B4_D; end // Sol
            1:  begin freq_half_period = 113635; duration = B8;   end // La
            2:  begin freq_half_period = 127550; duration = B4;   end // Sol
            3:  begin freq_half_period = 151685; duration = B2_D; end // Mi
            4:  begin freq_half_period = 127550; duration = B4_D; end // Sol
            5:  begin freq_half_period = 113635; duration = B8;   end // La
            6:  begin freq_half_period = 127550; duration = B4;   end // Sol
            7:  begin freq_half_period = 151685; duration = B2_D; end // Mi
            
            // 3~4마디: 어둠에~ 오른~ 만물은~
            8:  begin freq_half_period = 85130;  duration = B2;   end // Re(High)
            9:  begin freq_half_period = 85130;  duration = B4;   end // Re(High)
            10: begin freq_half_period = 101239; duration = B2_D; end // Si
            11: begin freq_half_period = 95556;  duration = B2;   end // Do(High)
            12: begin freq_half_period = 95556;  duration = B4;   end // Do(High)
            13: begin freq_half_period = 127550; duration = B2_D; end // Sol
                      
            // 5~6마디: 왕이 나셨도다~
            14: begin freq_half_period = 113635; duration = B2;   end // La
            15: begin freq_half_period = 113635; duration = B4;   end // La
            16: begin freq_half_period = 95556;  duration = B4_D; end // Do(High)
            17: begin freq_half_period = 101239; duration = B8;   end // Si
            18: begin freq_half_period = 113635; duration = B4;   end // La
            19: begin freq_half_period = 127550; duration = B4_D; end // Sol
            20: begin freq_half_period = 113635; duration = B8;   end // La
            21: begin freq_half_period = 127550; duration = B4;   end // Sol
            22: begin freq_half_period = 151685; duration = B2_D; end // Mi
            
            // 7~8마디: 평안히 자요~
            23: begin freq_half_period = 85130;  duration = B2;   end // Re(High)
            24: begin freq_half_period = 85130;  duration = B4;   end // Re(High)
            25: begin freq_half_period = 75844;  duration = B4_D; end // F5 (Fa High)
            26: begin freq_half_period = 85130;  duration = B8;   end // Re(High)
            27: begin freq_half_period = 101239; duration = B4;   end // Si
            28: begin freq_half_period = 95556;  duration = B2_D; end // Do(High)
            29: begin freq_half_period = 151685; duration = B2_D; end // Mi(High)
                      
            // 마무리: 평안히 자요~
            30: begin freq_half_period = 95556;  duration = B4;   end // Do(High)
            31: begin freq_half_period = 127550; duration = B4;   end // Sol
            32: begin freq_half_period = 151685; duration = B4;   end // Mi
            33: begin freq_half_period = 127550; duration = B4_D; end // Sol
            34: begin freq_half_period = 143172; duration = B8;   end // Fa
            35: begin freq_half_period = 170265; duration = B4;   end // Re
            36: begin freq_half_period = 191110; duration = B2_D; end // D
                      
           
           
            default: begin freq_half_period = 0;    duration = B2_D; end
        endcase
    end
endmodule


//////////////////////////////징글벨 ////////////////////////////////
module jingle_bells_rom(
    input [6:0] addr,
    output reg [31:0] freq_half_period,
    output reg [31:0] duration
);
    

// --- Octave 4 ---
parameter C4 = 191110, C4_S = 180387, D4 = 170265, D4_S = 160704, E4 = 151685;
parameter F4 = 143172, F4_S = 135138, G4 = 127550, G4_S = 120394, A4 = 113635;
parameter A4_S = 107263, B4 = 101239;

// --- Octave 5 ---
parameter C5 = 95556,  C5_S = 90193,  D5 = 85130,  D5_S = 80352,  E5 = 75844;
parameter F5 = 71586,  F5_S = 67568,  G5 = 63775,  G5_S = 60197,  A5 = 56817;
parameter A5_S = 53630,  B5 = 50619;

// --- Duration (BPM 120 approx) ---
parameter B_16  = 6250000, B_8 = 12500000, B_8_D = 18750000;
parameter B_4 = 25_000_000, B_4_D = 37500000, B_2 = 50000000;
parameter B_2_D = 75000000, B_1 = 100000000;


    always @(*) begin
        case(addr)
            // [Verse 1] 흰 눈 사이로 썰매를 타고
            0 : begin freq_half_period = G4; duration = B_8; end // 흰 (Sol)
            1 : begin freq_half_period = E5; duration = B_8; end // 눈 (Mi)
            2 : begin freq_half_period = D5; duration = B_8; end // 사 (Re)
            3 : begin freq_half_period = C5; duration = B_8; end // 이 (Do)
            4 : begin freq_half_period = G4; duration = B_2; end // 로 (Sol)
            
            5 : begin freq_half_period = G4; duration = B_8; end // 썰 (Sol)
            6 : begin freq_half_period = E5; duration = B_8; end // 매 (Mi)
            7 : begin freq_half_period = D5; duration = B_8; end // 를 (Re)
            8 : begin freq_half_period = C5; duration = B_8; end // 타 (Do)
            9 : begin freq_half_period = A4; duration = B_2; end // 고 (La)

            
            10: begin freq_half_period = A4; duration = B_8; end // 달 (La)
            11: begin freq_half_period = F5; duration = B_8; end // 리 (Fa)
            12: begin freq_half_period = E5; duration = B_8; end // 는 (Mi)
            13: begin freq_half_period = D5; duration = B_8; end // 기 (Re)
            14: begin freq_half_period = B4; duration = B_2; end // 분 (Si)
            
            //
            15: begin freq_half_period = G5;  duration = B_8; end // 상 (sol)
            16: begin freq_half_period = G5;  duration = B_8; end // 쾌 (sol)
            17: begin freq_half_period = E5;  duration = B_8; end // 도 (mi)
            18: begin freq_half_period = D5;  duration = B_8; end // 하 (re)
            19: begin freq_half_period = E5;  duration = B_4; end // 다 (mi)
            20: begin freq_half_period = C5;  duration = B_4; end // 다 (do)

            // 종이 울려서 장단 맞추니
            21: begin freq_half_period = G4; duration = B_8; end // 종 (Sol)
            22: begin freq_half_period = E5; duration = B_8; end // 이 (Mi)
            23: begin freq_half_period = D5; duration = B_8; end // 울 (Re)
            24: begin freq_half_period = C5; duration = B_8; end // 려 (Do)
            25: begin freq_half_period = G4; duration = B_2; end // 서 (Sol)
            
            26: begin freq_half_period = G4; duration = B_8; end // 장 (Sol)
            27: begin freq_half_period = E5; duration = B_8; end // 단 (Mi)
            28: begin freq_half_period = D5; duration = B_8; end // 맞 (Re)
            29: begin freq_half_period = C5; duration = B_8; end // 추 (Do)
            30: begin freq_half_period = A4; duration = B_2; end // 니 (La)

            // 즐거워서 소리 높여 노래 부르자 (헤이!)
            31: begin freq_half_period = A4; duration = B_8; end // 즐 (La)
            32: begin freq_half_period = F5; duration = B_8; end // 거 (Fa)
            33: begin freq_half_period = E5; duration = B_8; end // 워 (Mi)
            34: begin freq_half_period = D5; duration = B_8; end // 서 (Re)
            35: begin freq_half_period = G5; duration = B_8_D; end // 소 (Re5)
            36: begin freq_half_period = G5; duration = B_16; end // 리 (Re5)
            37: begin freq_half_period = G5; duration = B_8; end // 높 (Re5)
            38: begin freq_half_period = G5; duration = B_8; end // 여 (Re5)
            39: begin freq_half_period = A5; duration = B_8; end // 노 (Do5)
            40: begin freq_half_period = G5; duration = B_8; end // 래 (Si)
            41: begin freq_half_period = E5; duration = B_8; end // 부 (La)
            42: begin freq_half_period = D5; duration = B_8; end // 르 (Sol)
            43: begin freq_half_period = C5; duration = B_8_D; end // 자 (Do4)
            44: begin freq_half_period = 0;      duration = B_16; end // 헤이! (Mute)

            // [Chorus] 징글벨 징글벨 종소리 울려 (반복 구간)
            45: begin freq_half_period = E5; duration = B_8; end // 징 (Mi)
            46: begin freq_half_period = E5; duration = B_8; end // 글 (Mi)
            47: begin freq_half_period = E5; duration = B_4; end // 벨 (Mi)
            48: begin freq_half_period = E5; duration = B_8; end // 징 (Mi)
            49: begin freq_half_period = E5; duration = B_8; end // 글 (Mi)
            50: begin freq_half_period = E5; duration = B_4; end // 벨 (Mi)
            51: begin freq_half_period = E5; duration = B_8; end // 종 (Mi)
            52: begin freq_half_period = G5; duration = B_8; end // 소 (Sol)
            53: begin freq_half_period = C5; duration = B_8_D; end // 리 (Do)
            54: begin freq_half_period = D5; duration = B_16; end // 울 (Re)
            55: begin freq_half_period = E5; duration = B_2; end // 려 (Mi)

            // 우리 썰매 빨리 달려 종소리 울려라
            56: begin freq_half_period = F5; duration = B_8; end // 우 (Fa)
            57: begin freq_half_period = F5; duration = B_8; end // 리 (Fa)
            58: begin freq_half_period = F5; duration = B_8_D; end // 썰 (Fa)
            59: begin freq_half_period = F5; duration = B_16; end // 매 (Fa)
            60: begin freq_half_period = F5; duration = B_8; end // 빨 (Fa)
            61: begin freq_half_period = E5; duration = B_8; end // 리 (Mi)
            62: begin freq_half_period = E5; duration = B_8; end // 달 (Mi)
            63: begin freq_half_period = E5; duration = B_8; end // 려 (Mi)
            64: begin freq_half_period = E5; duration = B_8; end // 종 (Mi)
            65: begin freq_half_period = D5; duration = B_8; end // 소 (Re)
            66: begin freq_half_period = D5; duration = B_8; end // 리 (Re)
            67: begin freq_half_period = E5; duration = B_8; end // 울 (Mi)
            68: begin freq_half_period = D5; duration = B_4; end // 려 (Re)
            69: begin freq_half_period = G5; duration = B_4; end // 라 (Sol)
            
            70: begin freq_half_period = E5; duration = B_8; end // 징 (Mi)
            71: begin freq_half_period = E5; duration = B_8; end // 글 (Mi)
            72: begin freq_half_period = E5; duration = B_4; end // 벨 (Mi)
            73: begin freq_half_period = E5; duration = B_8; end // 징 (Mi)
            74: begin freq_half_period = E5; duration = B_8; end // 글 (Mi)
            75: begin freq_half_period = E5; duration = B_4; end // 벨 (Mi)
            76: begin freq_half_period = E5; duration = B_8; end // 종 (Mi)
            77: begin freq_half_period = G5; duration = B_8; end // 소 (Sol)
            78: begin freq_half_period = C5; duration = B_8_D; end // 리 (Do)
            79: begin freq_half_period = D5; duration = B_16; end // 울 (Re)
            80: begin freq_half_period = E5; duration = B_2; end // 려 (Mi)
            
            81: begin freq_half_period = F5; duration = B_8; end // 우 (Fa) 
            82: begin freq_half_period = F5; duration = B_8; end // 리 (Fa) 
            83: begin freq_half_period = F5; duration = B_8_D; end // 썰 (Fa) 
            84: begin freq_half_period = F5; duration = B_16; end // 매 (Fa) 
            85: begin freq_half_period = F5; duration = B_8; end // 빨 (Fa) 
            86: begin freq_half_period = E5; duration = B_8; end // 리 (Mi) 
            87: begin freq_half_period = E5; duration = B_8; end // 달 (Mi) 
            88: begin freq_half_period = E5; duration = B_8; end // 려 (Mi) 
            89: begin freq_half_period = G5; duration = B_8; end // 종 (sol) 
            90: begin freq_half_period = G5; duration = B_8; end // 소 (sol) 
            91: begin freq_half_period = F5; duration = B_8; end // 리 (fa) 
            92: begin freq_half_period = D5; duration = B_8; end // 울 (re) 
            93: begin freq_half_period = C5; duration = B_2; end // 려 (do) 
            
            
     default: begin freq_half_period = 0; duration = B_4; end
        endcase
    end
endmodule

///////////////////몸매 trot///////////////////////////////
module mommae_rom(
    input [7:0] addr,
    output reg [31:0] freq_half_period,
    output reg [31:0] duration
);

// --- Octave 4 ---
parameter C4 = 191110, D4 = 170265, E4 = 151685, F4 = 143172, G4 = 127550, A4 = 113635;
parameter A4_S = 107263, B4 = 101239; // 7♭은 A4_S(Bb4) 사용

// --- Octave 5 ---
parameter C5 = 95556,  D5 = 85130,  E5 = 75844,  F5 = 71586,  G5 = 63775,  A5 = 56817;
parameter A5_S = 53630, B5 = 50619; // 7'♭은 A5_S(Bb5) 사용

// --- Octave 6 (High Notes) ---
parameter C6 = 47778, D6 = 42565; 


// --- Duration (BPM 30) ---
// BPM 100 대비 3.33배 증가, BPM 40 대비 1.33배 증가
parameter B_32  = 12500000,  B_16  = 25000000,  B_8   = 50000000;
parameter B_8_D = 75000000,  B_4   = 100000000, B_4_D = 150000000;
parameter B_2   = 200000000, B_2_D = 300000000, B_1   = 400000000;

always @(*) begin
    case(addr)
        // [Intro] I- be Like hold up (4' 4' 5' 4' 4' 2' 1')
        0 : begin freq_half_period = 0; duration = B_16; end
        1 : begin freq_half_period = F5; duration = B_2; end
        2 : begin freq_half_period = F5; duration = B_16; end
        3 : begin freq_half_period = G5; duration = B_16; end
        4 : begin freq_half_period = F5; duration = B_16; end
        5 : begin freq_half_period = F5; duration = B_8; end
        6 : begin freq_half_period = D5; duration = B_16; end
        7 : begin freq_half_period = C5; duration = B_16; end

        // wait a minute Girl- (2' 2' 2' 2' 1' 2')
        8 : begin freq_half_period = 0; duration = B_16; end
        9 : begin freq_half_period = D5; duration = B_16; end
        10: begin freq_half_period = D5; duration = B_16; end
        11: begin freq_half_period = D5; duration = B_16; end
        12: begin freq_half_period = D5; duration = B_16; end
        13: begin freq_half_period = C5; duration = B_8; end
        14: begin freq_half_period = D5; duration = B_16+B_2; end

        // 어디가? 너무 쳐다봐서 미안해 (1' 1' 1' 1' 2' 7 7 7 7 5 4 4)
        15: begin freq_half_period = 0; duration = B_16; end
        16: begin freq_half_period = C5; duration = B_16; end
        17: begin freq_half_period = C5; duration = B_16; end
        18: begin freq_half_period = C5; duration = B_16; end
        19: begin freq_half_period = C5; duration = B_16; end
        20: begin freq_half_period = D5; duration = B_4; end
        21: begin freq_half_period = A4_S; duration = B_16; end // 7♭
        22: begin freq_half_period = A4_S; duration = B_16; end
        23: begin freq_half_period = A4_S; duration = B_8; end
        24: begin freq_half_period = A4_S; duration = B_16; end
        25: begin freq_half_period = G4; duration = B_16; end
        26: begin freq_half_period = F4; duration = B_16; end
        27: begin freq_half_period = F4; duration = B_2+B_4+B_8; end

        // 근데 니가 너무 섹시해서 (7 1' 2' 2' 2' 2' 2' 2' 2' 1')
        28: begin freq_half_period = A4_S; duration = B_16; end
        29: begin freq_half_period = C5; duration = B_16; end
        30: begin freq_half_period = D5; duration = B_16; end
        31: begin freq_half_period = D5; duration = B_16; end
        32: begin freq_half_period = D5; duration = B_16; end
        33: begin freq_half_period = D5; duration = B_16; end
        34: begin freq_half_period = D5; duration = B_16; end
        35: begin freq_half_period = D5; duration = B_16; end
        36: begin freq_half_period = D5; duration = B_16; end
        37: begin freq_half_period = C5; duration = B_16; end

        // 눈을 뗄 수 가 없어 (2' 2' 2' 2' 1' 7 1')
        38: begin freq_half_period = D5; duration = B_16; end
        39: begin freq_half_period = D5; duration = B_16; end
        40: begin freq_half_period = D5; duration = B_8; end
        41: begin freq_half_period = D5; duration = B_16; end
        42: begin freq_half_period = C5; duration = B_16; end
        43: begin freq_half_period = A4_S; duration = B_8; end
        44: begin freq_half_period = C5; duration = B_2+B_4+B_8; end

        // 갓뎀,... 보고싶어 (4 7 4 4 5 7 7)
        45: begin freq_half_period = F4; duration = B_8; end
        46: begin freq_half_period = A4_S; duration = B_2+B_8+B_16; end
        47: begin freq_half_period = F4; duration = B_16; end
        48: begin freq_half_period = F4; duration = B_16; end
        49: begin freq_half_period = G4; duration = B_16; end
        50: begin freq_half_period = A4_S; duration = B_16; end
        51: begin freq_half_period = A4_S; duration = B_16+B_2+B_4+B_8; end
  

        // 너의 몸 몸 몸 매 몸몸몸 매- (7 2' 4' 4' 2' 2' 4' 4' 4' 4' 2')
        52: begin freq_half_period = A4_S; duration = B_16; end
        53: begin freq_half_period = D5; duration = B_16; end
        54: begin freq_half_period = F5; duration = B_8; end
        55: begin freq_half_period = F5; duration = B_8; end
        56: begin freq_half_period = D5; duration = B_8; end
        57: begin freq_half_period = D5; duration = B_8; end
        58: begin freq_half_period = F5; duration = B_16+B_32; end
        59: begin freq_half_period = F5; duration = B_16+B_32; end
        60: begin freq_half_period = F5; duration = B_16; end
        61: begin freq_half_period = F5; duration = B_16; end
        62: begin freq_half_period = D5; duration = B_16+B_8; end

        // 몸 몸 몸 매 몸몸몸 매- Oh Yeah-! (5' 5' 5' 4' 5' 5' 5' 5' 4' 5' 4' 2')
        63: begin freq_half_period = G5; duration = B_8; end
        64: begin freq_half_period = G5; duration = B_8; end
        65: begin freq_half_period = G5; duration = B_8; end
        66: begin freq_half_period = F5; duration = B_8; end
        67: begin freq_half_period = G5; duration = B_16+B_32; end
        68: begin freq_half_period = G5; duration = B_16+B_32; end
        69: begin freq_half_period = G5; duration = B_16; end
        70: begin freq_half_period = G5; duration = B_16; end
        71: begin freq_half_period = F5; duration = B_16; end
        72: begin freq_half_period = G5; duration = B_16; end
        73: begin freq_half_period = F5; duration = B_16; end
        74: begin freq_half_period = D5; duration = B_2+B_8; end

        // Let me See-, let me see- (2' 4' 4' 2' 1' 1')
        75: begin freq_half_period = D5; duration = B_16; end
        76: begin freq_half_period = F5; duration = B_16; end
        77: begin freq_half_period = F5; duration = B_8; end
        78: begin freq_half_period = D5; duration = B_16; end
        79: begin freq_half_period = C5; duration = B_16; end
        80: begin freq_half_period = C5; duration = B_2+B_8; end

        // WoOoOOOooo- (4' 7' 1'' 2'')
        81: begin freq_half_period = F5; duration = B_8; end
        82: begin freq_half_period = A5_S; duration = B_8; end
        83: begin freq_half_period = C6; duration = B_8; end
        84: begin freq_half_period = D6; duration = B_2+B_2+B_8; end

        // 유쏘 섹시-★ (4' 4' 4' 4')
        85: begin freq_half_period = F5; duration = B_8; end
        86: begin freq_half_period = F5; duration = B_16; end
        87: begin freq_half_period = F5; duration = B_8; end
        88: begin freq_half_period = F5; duration = B_16+B_2+B_8; end

        // WoOoOOOooo- (5' 7' 1'' 2'' 1'')
        89: begin freq_half_period = G5; duration = B_8; end
        90: begin freq_half_period = A5_S; duration = B_8; end
        91: begin freq_half_period = C6; duration = B_16; end
        92: begin freq_half_period = D6; duration = B_16; end
        93: begin freq_half_period = C6; duration = B_2+B_8; end

        // 유쏘 섹시 유 쏘 섹시 걸-. (1' 1' 1' 1' 4 4 5 7 7)
        94: begin freq_half_period = C5; duration = B_8; end
        95: begin freq_half_period = C5; duration = B_16; end
        96: begin freq_half_period = C5; duration = B_8; end
        97: begin freq_half_period = C5; duration = B_16; end
        98: begin freq_half_period = 0;  duration = B_16; end
        99: begin freq_half_period = F4; duration = B_8; end
       100: begin freq_half_period = F4; duration = B_16; end
       101: begin freq_half_period = G4; duration = B_8; end
       102: begin freq_half_period = A4_S; duration = B_16; end
       103: begin freq_half_period = A4_S; duration = B_16+B_2+B_2; end

        default: begin freq_half_period = 0; duration = B_4; end
    endcase
end
endmodule








/////////////////////////////////////////////////////


module music_player_system(
    input clk,               // 100MHz 시스템 클럭
    input reset_p,           // 비동기 리셋 (Active High)
    input play_stop,         // 전원 상태 (0: 정지, 1: 연주)
    input [4:0] song_sel,    // 5비트 곡 선택 신호 (One-hot)
    output speaker           // 피에조 부저 출력
);

    // --- 내부 와이어 선언: 각 ROM에서 나오는 주파수와 박자 데이터 ---
    wire [31:0] f1, d1; // 1번 곡: 고요한 밤
    wire [31:0] f2, d2; // 2번 곡: 징글벨
    wire [31:0] f3, d3; // 3번 곡 (추후 추가용)
    wire [31:0] f4, d4; // 4번 곡 (추후 추가용)
    wire [31:0] f5, d5; // 5번 곡 (추후 추가용)

    // --- 현재 연주될 곡의 데이터 레지스터 ---
    reg [31:0] target_f;      // 선택된 주파수 (Half Period)
    reg [31:0] target_d;      // 선택된 박자 (Duration)
    reg [6:0]  max_addr;      // 각 곡의 마지막 주소값
    
    // --- 제어용 레지스터 ---
    reg [7:0]  addr;           // 현재 연주 중인 음표 주소
    reg [31:0] duration_cnt;   // 현재 음표가 연주된 시간 카운트
    reg        last_play_stop; // 전원 버튼 상태 변화 감지용

    // ---------------------------------------------------------
    // 1. 각 곡의 ROM 인스턴스화
    // ---------------------------------------------------------
    // 고요한 밤 (6비트 주소 사용)
    silent_night_rom rom1 (
        .addr(addr[5:0]), 
        .freq_half_period(f1), 
        .duration(d1)
    );

    // 징글벨 (7비트 주소 사용)
    jingle_bells_rom rom2 (
        .addr(addr), 
        .freq_half_period(f2), 
        .duration(d2)
    );
    
    mommae_rom rom3(
        .addr(addr),
        .freq_half_period(f3),
        .duration(d3)
    );
    
    
    

    // 나머지 곡들은 현재 데이터가 없으므로 0으로 처리하거나 
    // 나중에 추가할 ROM 모듈을 여기에 연결하세요.
 
    assign f4 = 0; assign d4 = 50_000_000;
    assign f5 = 0; assign d5 = 50_000_000;

    // ---------------------------------------------------------
    // 2. 곡 선택 MUX (Combinational Logic)
    // ---------------------------------------------------------
    always @(*) begin
        case(song_sel)
            5'b00001: begin target_f = f1; target_d = d1; max_addr = 36; end // 고요한밤
            5'b00010: begin target_f = f2; target_d = d2; max_addr = 93; end // 징글벨
            5'b00100: begin target_f = f3; target_d = d3; max_addr = 103;  end  //몸매
            5'b01000: begin target_f = f4; target_d = d4; max_addr = 0;  end
            5'b10000: begin target_f = f5; target_d = d5; max_addr = 0;  end
            default:  begin target_f = 0;  target_d = 0;  max_addr = 0;  end
        endcase
    end

    // ---------------------------------------------------------
    // 3. Sequencer: 음표 넘기기 및 리셋 제어
    // ---------------------------------------------------------
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            addr <= 0;
            duration_cnt <= 0;
            last_play_stop <= 0;
        end else begin
            last_play_stop <= play_stop;

            // [상태 제어]
            // 1. 전원이 꺼져있을 때
            if (!play_stop) begin
                addr <= 0;
                duration_cnt <= 0;
            end 
            // 2. 전원이 방금 켜졌을 때 (Start 버튼을 누른 시점)
            else if (play_stop && !last_play_stop) begin
                addr <= 0;
                duration_cnt <= 0;
            end
            // 3. 정상 연주 중일 때
            else begin
                if (duration_cnt >= target_d) begin
                    duration_cnt <= 0;
                    if (addr >= max_addr) addr <= 0; // 곡 반복 연주
                    else addr <= addr + 1;
                end else begin
                    duration_cnt <= duration_cnt + 1;
                end
            end
        end
    end

    // ---------------------------------------------------------
    // 4. 주파수 생성 및 음 분절 처리 (Articulation)
    // ---------------------------------------------------------
    // 음과 음 사이를 명확하게 들리게 하기 위해 
    // 각 음표 박자의 마지막 0.02초(2,000,000 클럭) 동안은 소리를 끕니다.
    wire [31:0] final_freq;
    assign final_freq = (play_stop && (duration_cnt < target_d - 2_000_000)) ? target_f : 0;

    freq_generator_modified tone_gen (
        .clk(clk),
        .reset_p(reset_p),
        .half_period(final_freq),
        .trans_cp(speaker)
    );

endmodule










module trot_led_controller(
    input clk,          // 100MHz
    input reset_p,
    input play_stop,    // 연주 상태
    output reg [15:0] led_rhythm // 출력될 LED 패턴
);

    reg [31:0] cnt;
    reg [2:0] step;

    // BPM 30 기준 "쿵짜작 쿵짝" 박자 (100MHz 클럭 계산)
    parameter T_KUNG1 = 32'd50_000_000; // 8분음표
    parameter T_JJA   = 32'd25_000_000; // 16분음표
    parameter T_JAK   = 32'd25_000_000; // 16분음표
    parameter T_KUNG2 = 32'd50_000_000; // 8분음표
    parameter T_JJAK  = 32'd50_000_000; // 8분음표

    always @(posedge clk or posedge reset_p) begin
        if(reset_p || !play_stop) begin
            cnt <= 0;
            step <= 0;
            led_rhythm <= 0;
        end else begin
            if(cnt >= get_target(step)) begin
                cnt <= 0;
                if(step >= 4) step <= 0;
                else step <= step + 1;
            end else begin
                cnt <= cnt + 1;
            end

            // 리듬별 LED 패턴 (2030 남성 타겟: 역동적인 패턴)
            case(step)
                3'd0: led_rhythm <= (cnt < 10_000_000) ? 16'hFF00 : 16'h0000; // 쿵: 왼쪽 8개
                3'd1: led_rhythm <= (cnt < 10_000_000) ? 16'h00F0 : 16'h0000; // 짜: 중간 4개
                3'd2: led_rhythm <= (cnt < 10_000_000) ? 16'h000F : 16'h0000; // 작: 오른쪽 4개
                3'd3: led_rhythm <= (cnt < 10_000_000) ? 16'hF0F0 : 16'h0000; // 쿵: 교차 켜짐
                3'd4: led_rhythm <= (cnt < 10_000_000) ? 16'h0F0F : 16'h0000; // 짝: 교차 켜짐
                default: led_rhythm <= 16'h0000;
            endcase
        end
    end

    function [31:0] get_target(input [2:0] s);
        case(s)
            3'd0: get_target = T_KUNG1;
            3'd1: get_target = T_JJA;
            3'd2: get_target = T_JAK;
            3'd3: get_target = T_KUNG2;
            3'd4: get_target = T_JJAK;
            default: get_target = T_KUNG1;
        endcase
    endfunction
endmodule













module freq_generator_modified(
    input clk, reset_p,
    input [31:0] half_period,
    output reg trans_cp
);
    reg [31:0] cnt; // integer 대신 reg [31:0] 권장

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            cnt <= 0;      // <= (Non-blocking) 사용
            trans_cp <= 0;
        end else if (half_period == 0) begin
            cnt <= 0;      // 무음 시 카운터도 리셋하는 것이 안전함
            trans_cp <= 0;
        end else begin
            if(cnt >= half_period) begin
                cnt <= 0;
                trans_cp <= ~trans_cp;
            end else begin
                cnt <= cnt + 1;
            end
        end
    end
endmodule


