// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 28 19:22:28 2026
// Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_multiwatch_lcd_myip_stopwatch_0_0_sim_netlist.v
// Design      : soc_multiwatch_lcd_myip_stopwatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (p_0_in,
    AR,
    ff_old_reg_0,
    E,
    ff_old_reg_1,
    ff_old_reg_2,
    ff_old_reg_3,
    D,
    \sec_reg[4] ,
    ff_old_reg_4,
    \sec_reg[5] ,
    \csec_reg[6] ,
    Q,
    s00_axi_aclk,
    s00_axi_aresetn,
    start_stop,
    p_0_in_0,
    lap_running_reg,
    CO,
    \sec_reg[0] ,
    \csec_reg[6]_0 ,
    \csec_reg[6]_1 ,
    \csec_reg[4] ,
    \sec_reg[2] ,
    \sec_reg[5]_0 ,
    \sec_reg[5]_1 ,
    cnt_sysclk0,
    \cnt_sysclk_reg[0] );
  output [1:0]p_0_in;
  output [0:0]AR;
  output ff_old_reg_0;
  output [0:0]E;
  output [0:0]ff_old_reg_1;
  output [0:0]ff_old_reg_2;
  output [0:0]ff_old_reg_3;
  output [6:0]D;
  output [5:0]\sec_reg[4] ;
  output [31:0]ff_old_reg_4;
  output [5:0]\sec_reg[5] ;
  output [6:0]\csec_reg[6] ;
  input [0:0]Q;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input start_stop;
  input [1:0]p_0_in_0;
  input lap_running_reg;
  input [0:0]CO;
  input \sec_reg[0] ;
  input [6:0]\csec_reg[6]_0 ;
  input \csec_reg[6]_1 ;
  input \csec_reg[4] ;
  input \sec_reg[2] ;
  input [5:0]\sec_reg[5]_0 ;
  input \sec_reg[5]_1 ;
  input [30:0]cnt_sysclk0;
  input [0:0]\cnt_sysclk_reg[0] ;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [30:0]cnt_sysclk0;
  wire [0:0]\cnt_sysclk_reg[0] ;
  wire \csec[4]_i_3_n_0 ;
  wire \csec_reg[4] ;
  wire [6:0]\csec_reg[6] ;
  wire [6:0]\csec_reg[6]_0 ;
  wire \csec_reg[6]_1 ;
  wire ff_old_reg_0;
  wire [0:0]ff_old_reg_1;
  wire [0:0]ff_old_reg_2;
  wire [0:0]ff_old_reg_3;
  wire [31:0]ff_old_reg_4;
  wire lap_running_reg;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sec_reg[0] ;
  wire \sec_reg[2] ;
  wire [5:0]\sec_reg[4] ;
  wire [5:0]\sec_reg[5] ;
  wire [5:0]\sec_reg[5]_0 ;
  wire \sec_reg[5]_1 ;
  wire start_stop;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \cnt_sysclk[0]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[10]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[9]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[11]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[10]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[12]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[11]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[13]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[12]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[14]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[13]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[15]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[14]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[16]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[15]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[17]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[16]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[18]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[17]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[19]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[18]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[1]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[20]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[19]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[21]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[20]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[22]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[21]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[23]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[22]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[24]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[23]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[25]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[24]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[26]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[25]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[27]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[26]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[28]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[27]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[29]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[28]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[2]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[30]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[29]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[30]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \cnt_sysclk[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(start_stop),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[31]_i_2 
       (.I0(CO),
        .I1(cnt_sysclk0[30]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[3]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[4]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[5]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[4]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[6]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[5]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[7]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[6]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[8]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[7]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt_sysclk[9]_i_1 
       (.I0(CO),
        .I1(cnt_sysclk0[8]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(ff_old_reg_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \csec[0]_i_1 
       (.I0(\csec_reg[6]_0 [0]),
        .I1(\sec_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h14001414)) 
    \csec[1]_i_1 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_0 [0]),
        .I2(\csec_reg[6]_0 [1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h1540000015401540)) 
    \csec[2]_i_1 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_0 [0]),
        .I2(\csec_reg[6]_0 [1]),
        .I3(\csec_reg[6]_0 [2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000015554000)) 
    \csec[3]_i_1 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_0 [1]),
        .I2(\csec_reg[6]_0 [0]),
        .I3(\csec_reg[6]_0 [2]),
        .I4(\csec_reg[6]_0 [3]),
        .I5(\csec[4]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000015554000)) 
    \csec[4]_i_1 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_0 [2]),
        .I2(\csec_reg[4] ),
        .I3(\csec_reg[6]_0 [3]),
        .I4(\csec_reg[6]_0 [4]),
        .I5(\csec[4]_i_3_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[4]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\csec[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h14001414)) 
    \csec[5]_i_1 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_1 ),
        .I2(\csec_reg[6]_0 [5]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \csec[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(CO),
        .I3(start_stop),
        .O(ff_old_reg_1));
  LUT6 #(
    .INIT(64'h1540000015401540)) 
    \csec[6]_i_2 
       (.I0(\sec_reg[0] ),
        .I1(\csec_reg[6]_1 ),
        .I2(\csec_reg[6]_0 [5]),
        .I3(\csec_reg[6]_0 [6]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(D[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[0]_i_1 
       (.I0(\csec_reg[6]_0 [0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[1]_i_1 
       (.I0(\csec_reg[6]_0 [1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[2]_i_1 
       (.I0(\csec_reg[6]_0 [2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[3]_i_1 
       (.I0(\csec_reg[6]_0 [3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[4]_i_1 
       (.I0(\csec_reg[6]_0 [4]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[5]_i_1 
       (.I0(\csec_reg[6]_0 [5]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [5]));
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_csec[6]_i_1 
       (.I0(\csec_reg[6]_0 [6]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\csec_reg[6] [6]));
  LUT6 #(
    .INIT(64'hBBBB0BBB0000B000)) 
    lap_running_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(start_stop),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(lap_running_reg),
        .O(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[0]_i_1 
       (.I0(\sec_reg[5]_0 [0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[1]_i_1 
       (.I0(\sec_reg[5]_0 [1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[2]_i_1 
       (.I0(\sec_reg[5]_0 [2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[3]_i_1 
       (.I0(\sec_reg[5]_0 [3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[4]_i_1 
       (.I0(\sec_reg[5]_0 [4]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \lap_sec[5]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(ff_old_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[5]_i_2 
       (.I0(\sec_reg[5]_0 [5]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\sec_reg[5] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \sec[0]_i_1 
       (.I0(\sec_reg[5]_0 [0]),
        .I1(\sec_reg[2] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\sec_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h14001414)) 
    \sec[1]_i_1 
       (.I0(\sec_reg[2] ),
        .I1(\sec_reg[5]_0 [0]),
        .I2(\sec_reg[5]_0 [1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\sec_reg[4] [1]));
  LUT6 #(
    .INIT(64'h1540000015401540)) 
    \sec[2]_i_1 
       (.I0(\sec_reg[2] ),
        .I1(\sec_reg[5]_0 [0]),
        .I2(\sec_reg[5]_0 [1]),
        .I3(\sec_reg[5]_0 [2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\sec_reg[4] [2]));
  LUT6 #(
    .INIT(64'h0000000015554000)) 
    \sec[3]_i_1 
       (.I0(\sec_reg[2] ),
        .I1(\sec_reg[5]_0 [1]),
        .I2(\sec_reg[5]_0 [0]),
        .I3(\sec_reg[5]_0 [2]),
        .I4(\sec_reg[5]_0 [3]),
        .I5(\csec[4]_i_3_n_0 ),
        .O(\sec_reg[4] [3]));
  LUT6 #(
    .INIT(64'h00000000622A6AAA)) 
    \sec[4]_i_1 
       (.I0(\sec_reg[5]_0 [4]),
        .I1(\sec_reg[5]_0 [3]),
        .I2(\sec_reg[5]_0 [2]),
        .I3(\sec_reg[5]_1 ),
        .I4(\sec_reg[5]_0 [5]),
        .I5(\csec[4]_i_3_n_0 ),
        .O(\sec_reg[4] [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4444444)) 
    \sec[5]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(CO),
        .I3(\sec_reg[0] ),
        .I4(start_stop),
        .O(ff_old_reg_2));
  LUT6 #(
    .INIT(64'h00000000777F8000)) 
    \sec[5]_i_2 
       (.I0(\sec_reg[5]_0 [4]),
        .I1(\sec_reg[5]_0 [3]),
        .I2(\sec_reg[5]_0 [2]),
        .I3(\sec_reg[5]_1 ),
        .I4(\sec_reg[5]_0 [5]),
        .I5(\csec[4]_i_3_n_0 ),
        .O(\sec_reg[4] [5]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0
   (p_0_in,
    Q,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]Q;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1
   (ff_old_reg_0,
    Q,
    s00_axi_aclk,
    AR,
    p_0_in,
    start_stop);
  output ff_old_reg_0;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input [1:0]p_0_in;
  input start_stop;

  wire [0:0]AR;
  wire [0:0]Q;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire start_stop;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(p_0_in_0[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
  LUT5 #(
    .INIT(32'hB0BB4444)) 
    start_stop_i_1
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(start_stop),
        .O(ff_old_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI myip_stopwatch_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire cp;
  wire nolabel_line354_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[31]_i_2_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(nolabel_line354_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(nolabel_line354_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFBFAAFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFF405500)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(nolabel_line354_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(nolabel_line354_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(nolabel_line354_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(nolabel_line354_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(nolabel_line354_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'hBF992600FFFF2600)) 
    axi_bvalid_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_bvalid_i_2_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(nolabel_line354_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(nolabel_line354_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch nolabel_line354
       (.Q({\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,cp,\slv_reg0_reg_n_0_[0] }),
        .SR(nolabel_line354_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata[6:0]),
        .\s00_axi_rdata[6] (slv_reg3[6:0]),
        .\s00_axi_rdata[6]_0 (\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_1_sp_1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_2_sp_1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_3_sp_1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_4_sp_1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_5_sp_1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .sel0(sel0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[10]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[11]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[12]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[13]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[14]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[15]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[16]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[17]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[18]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[19]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[20]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[21]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[22]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[23]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[24]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[25]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[26]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[27]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[28]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[29]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[30]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[31]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[7]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[8]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg3[9]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .I5(sel0[0]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(cp),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \slv_reg3[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg5[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg6[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg6[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(nolabel_line354_n_0));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(nolabel_line354_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(nolabel_line354_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_multiwatch_lcd_myip_stopwatch_0_0,myip_stopwatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_stopwatch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch
   (SR,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    sel0,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[6] ,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    \s00_axi_rdata[6]_0 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output [6:0]s00_axi_rdata;
  input [6:0]Q;
  input s00_axi_aclk;
  input [2:0]sel0;
  input s00_axi_rdata_0_sp_1;
  input [6:0]\s00_axi_rdata[6] ;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input \s00_axi_rdata[6]_0 ;
  input s00_axi_aresetn;

  wire [6:0]Q;
  wire [0:0]SR;
  wire [31:0]cnt_sysclk;
  wire [31:1]cnt_sysclk0;
  wire cnt_sysclk0_carry__0_n_0;
  wire cnt_sysclk0_carry__0_n_1;
  wire cnt_sysclk0_carry__0_n_2;
  wire cnt_sysclk0_carry__0_n_3;
  wire cnt_sysclk0_carry__1_n_0;
  wire cnt_sysclk0_carry__1_n_1;
  wire cnt_sysclk0_carry__1_n_2;
  wire cnt_sysclk0_carry__1_n_3;
  wire cnt_sysclk0_carry__2_n_0;
  wire cnt_sysclk0_carry__2_n_1;
  wire cnt_sysclk0_carry__2_n_2;
  wire cnt_sysclk0_carry__2_n_3;
  wire cnt_sysclk0_carry__3_n_0;
  wire cnt_sysclk0_carry__3_n_1;
  wire cnt_sysclk0_carry__3_n_2;
  wire cnt_sysclk0_carry__3_n_3;
  wire cnt_sysclk0_carry__4_n_0;
  wire cnt_sysclk0_carry__4_n_1;
  wire cnt_sysclk0_carry__4_n_2;
  wire cnt_sysclk0_carry__4_n_3;
  wire cnt_sysclk0_carry__5_n_0;
  wire cnt_sysclk0_carry__5_n_1;
  wire cnt_sysclk0_carry__5_n_2;
  wire cnt_sysclk0_carry__5_n_3;
  wire cnt_sysclk0_carry__6_n_2;
  wire cnt_sysclk0_carry__6_n_3;
  wire cnt_sysclk0_carry_n_0;
  wire cnt_sysclk0_carry_n_1;
  wire cnt_sysclk0_carry_n_2;
  wire cnt_sysclk0_carry_n_3;
  wire cnt_sysclk1_carry__0_i_1_n_0;
  wire cnt_sysclk1_carry__0_i_2_n_0;
  wire cnt_sysclk1_carry__0_i_3_n_0;
  wire cnt_sysclk1_carry__0_i_4_n_0;
  wire cnt_sysclk1_carry__0_i_5_n_0;
  wire cnt_sysclk1_carry__0_i_6_n_0;
  wire cnt_sysclk1_carry__0_n_0;
  wire cnt_sysclk1_carry__0_n_1;
  wire cnt_sysclk1_carry__0_n_2;
  wire cnt_sysclk1_carry__0_n_3;
  wire cnt_sysclk1_carry__1_i_1_n_0;
  wire cnt_sysclk1_carry__1_i_2_n_0;
  wire cnt_sysclk1_carry__1_i_3_n_0;
  wire cnt_sysclk1_carry__1_i_4_n_0;
  wire cnt_sysclk1_carry__1_i_5_n_0;
  wire cnt_sysclk1_carry__1_i_6_n_0;
  wire cnt_sysclk1_carry__1_i_7_n_0;
  wire cnt_sysclk1_carry__1_n_0;
  wire cnt_sysclk1_carry__1_n_1;
  wire cnt_sysclk1_carry__1_n_2;
  wire cnt_sysclk1_carry__1_n_3;
  wire cnt_sysclk1_carry__2_i_1_n_0;
  wire cnt_sysclk1_carry__2_i_2_n_0;
  wire cnt_sysclk1_carry__2_i_3_n_0;
  wire cnt_sysclk1_carry__2_i_4_n_0;
  wire cnt_sysclk1_carry__2_i_5_n_0;
  wire cnt_sysclk1_carry__2_i_6_n_0;
  wire cnt_sysclk1_carry__2_n_1;
  wire cnt_sysclk1_carry__2_n_2;
  wire cnt_sysclk1_carry__2_n_3;
  wire cnt_sysclk1_carry_i_1_n_0;
  wire cnt_sysclk1_carry_i_2_n_0;
  wire cnt_sysclk1_carry_i_3_n_0;
  wire cnt_sysclk1_carry_i_4_n_0;
  wire cnt_sysclk1_carry_i_5_n_0;
  wire cnt_sysclk1_carry_i_6_n_0;
  wire cnt_sysclk1_carry_i_7_n_0;
  wire cnt_sysclk1_carry_n_0;
  wire cnt_sysclk1_carry_n_1;
  wire cnt_sysclk1_carry_n_2;
  wire cnt_sysclk1_carry_n_3;
  wire \csec[4]_i_2_n_0 ;
  wire \csec[6]_i_3_n_0 ;
  wire \csec[6]_i_4_n_0 ;
  wire \csec_reg_n_0_[0] ;
  wire \csec_reg_n_0_[1] ;
  wire \csec_reg_n_0_[2] ;
  wire \csec_reg_n_0_[3] ;
  wire \csec_reg_n_0_[4] ;
  wire \csec_reg_n_0_[5] ;
  wire \csec_reg_n_0_[6] ;
  wire ed_clear_n_10;
  wire ed_clear_n_11;
  wire ed_clear_n_12;
  wire ed_clear_n_13;
  wire ed_clear_n_14;
  wire ed_clear_n_15;
  wire ed_clear_n_16;
  wire ed_clear_n_17;
  wire ed_clear_n_18;
  wire ed_clear_n_19;
  wire ed_clear_n_20;
  wire ed_clear_n_3;
  wire ed_clear_n_4;
  wire ed_clear_n_5;
  wire ed_clear_n_53;
  wire ed_clear_n_54;
  wire ed_clear_n_55;
  wire ed_clear_n_56;
  wire ed_clear_n_57;
  wire ed_clear_n_58;
  wire ed_clear_n_59;
  wire ed_clear_n_6;
  wire ed_clear_n_60;
  wire ed_clear_n_61;
  wire ed_clear_n_62;
  wire ed_clear_n_63;
  wire ed_clear_n_64;
  wire ed_clear_n_65;
  wire ed_clear_n_8;
  wire ed_clear_n_9;
  wire ed_start_n_0;
  wire [6:0]fnd_csec;
  wire \fnd_csec[0]_i_1_n_0 ;
  wire \fnd_csec[1]_i_1_n_0 ;
  wire \fnd_csec[2]_i_1_n_0 ;
  wire \fnd_csec[3]_i_1_n_0 ;
  wire \fnd_csec[4]_i_1_n_0 ;
  wire \fnd_csec[5]_i_1_n_0 ;
  wire \fnd_csec[6]_i_1_n_0 ;
  wire [5:0]fnd_sec;
  wire \fnd_sec[0]_i_1_n_0 ;
  wire \fnd_sec[1]_i_1_n_0 ;
  wire \fnd_sec[2]_i_1_n_0 ;
  wire \fnd_sec[3]_i_1_n_0 ;
  wire \fnd_sec[4]_i_1_n_0 ;
  wire \fnd_sec[5]_i_1_n_0 ;
  wire [6:0]lap_csec;
  wire lap_csec_0;
  wire lap_running_reg_n_0;
  wire [5:0]lap_sec;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [6:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire [6:0]\s00_axi_rdata[6] ;
  wire \s00_axi_rdata[6]_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire \sec[3]_i_2_n_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire \sec_reg_n_0_[0] ;
  wire \sec_reg_n_0_[1] ;
  wire \sec_reg_n_0_[2] ;
  wire \sec_reg_n_0_[3] ;
  wire \sec_reg_n_0_[4] ;
  wire \sec_reg_n_0_[5] ;
  wire [2:0]sel0;
  wire start_stop;
  wire [3:2]NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__2_O_UNCONNECTED;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry
       (.CI(1'b0),
        .CO({cnt_sysclk0_carry_n_0,cnt_sysclk0_carry_n_1,cnt_sysclk0_carry_n_2,cnt_sysclk0_carry_n_3}),
        .CYINIT(cnt_sysclk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[4:1]),
        .S(cnt_sysclk[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__0
       (.CI(cnt_sysclk0_carry_n_0),
        .CO({cnt_sysclk0_carry__0_n_0,cnt_sysclk0_carry__0_n_1,cnt_sysclk0_carry__0_n_2,cnt_sysclk0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[8:5]),
        .S(cnt_sysclk[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__1
       (.CI(cnt_sysclk0_carry__0_n_0),
        .CO({cnt_sysclk0_carry__1_n_0,cnt_sysclk0_carry__1_n_1,cnt_sysclk0_carry__1_n_2,cnt_sysclk0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[12:9]),
        .S(cnt_sysclk[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__2
       (.CI(cnt_sysclk0_carry__1_n_0),
        .CO({cnt_sysclk0_carry__2_n_0,cnt_sysclk0_carry__2_n_1,cnt_sysclk0_carry__2_n_2,cnt_sysclk0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[16:13]),
        .S(cnt_sysclk[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__3
       (.CI(cnt_sysclk0_carry__2_n_0),
        .CO({cnt_sysclk0_carry__3_n_0,cnt_sysclk0_carry__3_n_1,cnt_sysclk0_carry__3_n_2,cnt_sysclk0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[20:17]),
        .S(cnt_sysclk[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__4
       (.CI(cnt_sysclk0_carry__3_n_0),
        .CO({cnt_sysclk0_carry__4_n_0,cnt_sysclk0_carry__4_n_1,cnt_sysclk0_carry__4_n_2,cnt_sysclk0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[24:21]),
        .S(cnt_sysclk[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__5
       (.CI(cnt_sysclk0_carry__4_n_0),
        .CO({cnt_sysclk0_carry__5_n_0,cnt_sysclk0_carry__5_n_1,cnt_sysclk0_carry__5_n_2,cnt_sysclk0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[28:25]),
        .S(cnt_sysclk[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__6
       (.CI(cnt_sysclk0_carry__5_n_0),
        .CO({NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED[3:2],cnt_sysclk0_carry__6_n_2,cnt_sysclk0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk0_carry__6_O_UNCONNECTED[3],cnt_sysclk0[31:29]}),
        .S({1'b0,cnt_sysclk[31:29]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry
       (.CI(1'b0),
        .CO({cnt_sysclk1_carry_n_0,cnt_sysclk1_carry_n_1,cnt_sysclk1_carry_n_2,cnt_sysclk1_carry_n_3}),
        .CYINIT(cnt_sysclk1_carry_i_1_n_0),
        .DI({cnt_sysclk1_carry_i_2_n_0,cnt_sysclk1_carry_i_3_n_0,1'b0,1'b0}),
        .O(NLW_cnt_sysclk1_carry_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry_i_4_n_0,cnt_sysclk1_carry_i_5_n_0,cnt_sysclk1_carry_i_6_n_0,cnt_sysclk1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__0
       (.CI(cnt_sysclk1_carry_n_0),
        .CO({cnt_sysclk1_carry__0_n_0,cnt_sysclk1_carry__0_n_1,cnt_sysclk1_carry__0_n_2,cnt_sysclk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk[15],cnt_sysclk1_carry__0_i_1_n_0,cnt_sysclk1_carry__0_i_2_n_0}),
        .O(NLW_cnt_sysclk1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry__0_i_3_n_0,cnt_sysclk1_carry__0_i_4_n_0,cnt_sysclk1_carry__0_i_5_n_0,cnt_sysclk1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__0_i_1
       (.I0(cnt_sysclk[12]),
        .I1(cnt_sysclk[13]),
        .O(cnt_sysclk1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__0_i_2
       (.I0(cnt_sysclk[10]),
        .I1(cnt_sysclk[11]),
        .O(cnt_sysclk1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__0_i_3
       (.I0(cnt_sysclk[16]),
        .I1(cnt_sysclk[17]),
        .O(cnt_sysclk1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__0_i_4
       (.I0(cnt_sysclk[14]),
        .I1(cnt_sysclk[15]),
        .O(cnt_sysclk1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__0_i_5
       (.I0(cnt_sysclk[12]),
        .I1(cnt_sysclk[13]),
        .O(cnt_sysclk1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__0_i_6
       (.I0(cnt_sysclk[10]),
        .I1(cnt_sysclk[11]),
        .O(cnt_sysclk1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__1
       (.CI(cnt_sysclk1_carry__0_n_0),
        .CO({cnt_sysclk1_carry__1_n_0,cnt_sysclk1_carry__1_n_1,cnt_sysclk1_carry__1_n_2,cnt_sysclk1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk1_carry__1_i_1_n_0,cnt_sysclk1_carry__1_i_2_n_0,cnt_sysclk1_carry__1_i_3_n_0,1'b0}),
        .O(NLW_cnt_sysclk1_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry__1_i_4_n_0,cnt_sysclk1_carry__1_i_5_n_0,cnt_sysclk1_carry__1_i_6_n_0,cnt_sysclk1_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__1_i_1
       (.I0(cnt_sysclk[24]),
        .I1(cnt_sysclk[25]),
        .O(cnt_sysclk1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__1_i_2
       (.I0(cnt_sysclk[22]),
        .I1(cnt_sysclk[23]),
        .O(cnt_sysclk1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__1_i_3
       (.I0(cnt_sysclk[20]),
        .I1(cnt_sysclk[21]),
        .O(cnt_sysclk1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__1_i_4
       (.I0(cnt_sysclk[24]),
        .I1(cnt_sysclk[25]),
        .O(cnt_sysclk1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__1_i_5
       (.I0(cnt_sysclk[22]),
        .I1(cnt_sysclk[23]),
        .O(cnt_sysclk1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__1_i_6
       (.I0(cnt_sysclk[20]),
        .I1(cnt_sysclk[21]),
        .O(cnt_sysclk1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__1_i_7
       (.I0(cnt_sysclk[18]),
        .I1(cnt_sysclk[19]),
        .O(cnt_sysclk1_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__2
       (.CI(cnt_sysclk1_carry__1_n_0),
        .CO({NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED[3],cnt_sysclk1_carry__2_n_1,cnt_sysclk1_carry__2_n_2,cnt_sysclk1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk1_carry__2_i_1_n_0,cnt_sysclk1_carry__2_i_2_n_0,cnt_sysclk1_carry__2_i_3_n_0}),
        .O(NLW_cnt_sysclk1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt_sysclk1_carry__2_i_4_n_0,cnt_sysclk1_carry__2_i_5_n_0,cnt_sysclk1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__2_i_1
       (.I0(cnt_sysclk[30]),
        .I1(cnt_sysclk[31]),
        .O(cnt_sysclk1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__2_i_2
       (.I0(cnt_sysclk[28]),
        .I1(cnt_sysclk[29]),
        .O(cnt_sysclk1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__2_i_3
       (.I0(cnt_sysclk[26]),
        .I1(cnt_sysclk[27]),
        .O(cnt_sysclk1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__2_i_4
       (.I0(cnt_sysclk[30]),
        .I1(cnt_sysclk[31]),
        .O(cnt_sysclk1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__2_i_5
       (.I0(cnt_sysclk[28]),
        .I1(cnt_sysclk[29]),
        .O(cnt_sysclk1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__2_i_6
       (.I0(cnt_sysclk[26]),
        .I1(cnt_sysclk[27]),
        .O(cnt_sysclk1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_1
       (.I0(cnt_sysclk[0]),
        .I1(cnt_sysclk[1]),
        .O(cnt_sysclk1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_2
       (.I0(cnt_sysclk[8]),
        .I1(cnt_sysclk[9]),
        .O(cnt_sysclk1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry_i_3
       (.I0(cnt_sysclk[6]),
        .I1(cnt_sysclk[7]),
        .O(cnt_sysclk1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry_i_4
       (.I0(cnt_sysclk[9]),
        .I1(cnt_sysclk[8]),
        .O(cnt_sysclk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry_i_5
       (.I0(cnt_sysclk[6]),
        .I1(cnt_sysclk[7]),
        .O(cnt_sysclk1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_6
       (.I0(cnt_sysclk[4]),
        .I1(cnt_sysclk[5]),
        .O(cnt_sysclk1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_7
       (.I0(cnt_sysclk[2]),
        .I1(cnt_sysclk[3]),
        .O(cnt_sysclk1_carry_i_7_n_0));
  FDCE \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(cnt_sysclk[0]));
  FDCE \cnt_sysclk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[10]),
        .Q(cnt_sysclk[10]));
  FDCE \cnt_sysclk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[11]),
        .Q(cnt_sysclk[11]));
  FDCE \cnt_sysclk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[12]),
        .Q(cnt_sysclk[12]));
  FDCE \cnt_sysclk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[13]),
        .Q(cnt_sysclk[13]));
  FDCE \cnt_sysclk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[14]),
        .Q(cnt_sysclk[14]));
  FDCE \cnt_sysclk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[15]),
        .Q(cnt_sysclk[15]));
  FDCE \cnt_sysclk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[16]),
        .Q(cnt_sysclk[16]));
  FDCE \cnt_sysclk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[17]),
        .Q(cnt_sysclk[17]));
  FDCE \cnt_sysclk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[18]),
        .Q(cnt_sysclk[18]));
  FDCE \cnt_sysclk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[19]),
        .Q(cnt_sysclk[19]));
  FDCE \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(cnt_sysclk[1]));
  FDCE \cnt_sysclk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[20]),
        .Q(cnt_sysclk[20]));
  FDCE \cnt_sysclk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[21]),
        .Q(cnt_sysclk[21]));
  FDCE \cnt_sysclk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[22]),
        .Q(cnt_sysclk[22]));
  FDCE \cnt_sysclk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[23]),
        .Q(cnt_sysclk[23]));
  FDCE \cnt_sysclk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[24]),
        .Q(cnt_sysclk[24]));
  FDCE \cnt_sysclk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[25]),
        .Q(cnt_sysclk[25]));
  FDCE \cnt_sysclk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[26]),
        .Q(cnt_sysclk[26]));
  FDCE \cnt_sysclk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[27]),
        .Q(cnt_sysclk[27]));
  FDCE \cnt_sysclk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[28]),
        .Q(cnt_sysclk[28]));
  FDCE \cnt_sysclk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[29]),
        .Q(cnt_sysclk[29]));
  FDCE \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(cnt_sysclk[2]));
  FDCE \cnt_sysclk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[30]),
        .Q(cnt_sysclk[30]));
  FDCE \cnt_sysclk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[31]),
        .Q(cnt_sysclk[31]));
  FDCE \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(cnt_sysclk[3]));
  FDCE \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(cnt_sysclk[4]));
  FDCE \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(cnt_sysclk[5]));
  FDCE \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(cnt_sysclk[6]));
  FDCE \cnt_sysclk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(cnt_sysclk[7]));
  FDCE \cnt_sysclk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[8]),
        .Q(cnt_sysclk[8]));
  FDCE \cnt_sysclk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(p_1_in[9]),
        .Q(cnt_sysclk[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csec[4]_i_2 
       (.I0(\csec_reg_n_0_[1] ),
        .I1(\csec_reg_n_0_[0] ),
        .O(\csec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \csec[6]_i_3 
       (.I0(\csec_reg_n_0_[5] ),
        .I1(\csec_reg_n_0_[3] ),
        .I2(\csec_reg_n_0_[2] ),
        .I3(\csec[4]_i_2_n_0 ),
        .I4(\csec_reg_n_0_[4] ),
        .I5(\csec_reg_n_0_[6] ),
        .O(\csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \csec[6]_i_4 
       (.I0(\csec_reg_n_0_[4] ),
        .I1(\csec_reg_n_0_[2] ),
        .I2(\csec_reg_n_0_[0] ),
        .I3(\csec_reg_n_0_[1] ),
        .I4(\csec_reg_n_0_[3] ),
        .O(\csec[6]_i_4_n_0 ));
  FDCE \csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_14),
        .Q(\csec_reg_n_0_[0] ));
  FDCE \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_13),
        .Q(\csec_reg_n_0_[1] ));
  FDCE \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_12),
        .Q(\csec_reg_n_0_[2] ));
  FDCE \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_11),
        .Q(\csec_reg_n_0_[3] ));
  FDCE \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_10),
        .Q(\csec_reg_n_0_[4] ));
  FDCE \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_9),
        .Q(\csec_reg_n_0_[5] ));
  FDCE \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_8),
        .Q(\csec_reg_n_0_[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ed_clear
       (.AR(SR),
        .CO(cnt_sysclk1_carry__2_n_1),
        .D({ed_clear_n_8,ed_clear_n_9,ed_clear_n_10,ed_clear_n_11,ed_clear_n_12,ed_clear_n_13,ed_clear_n_14}),
        .E(ed_clear_n_4),
        .Q(Q[2]),
        .cnt_sysclk0(cnt_sysclk0),
        .\cnt_sysclk_reg[0] (cnt_sysclk[0]),
        .\csec_reg[4] (\csec[4]_i_2_n_0 ),
        .\csec_reg[6] ({ed_clear_n_59,ed_clear_n_60,ed_clear_n_61,ed_clear_n_62,ed_clear_n_63,ed_clear_n_64,ed_clear_n_65}),
        .\csec_reg[6]_0 ({\csec_reg_n_0_[6] ,\csec_reg_n_0_[5] ,\csec_reg_n_0_[4] ,\csec_reg_n_0_[3] ,\csec_reg_n_0_[2] ,\csec_reg_n_0_[1] ,\csec_reg_n_0_[0] }),
        .\csec_reg[6]_1 (\csec[6]_i_4_n_0 ),
        .ff_old_reg_0(ed_clear_n_3),
        .ff_old_reg_1(ed_clear_n_5),
        .ff_old_reg_2(ed_clear_n_6),
        .ff_old_reg_3(lap_csec_0),
        .ff_old_reg_4(p_1_in),
        .lap_running_reg(lap_running_reg_n_0),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sec_reg[0] (\csec[6]_i_3_n_0 ),
        .\sec_reg[2] (\sec[3]_i_2_n_0 ),
        .\sec_reg[4] ({ed_clear_n_15,ed_clear_n_16,ed_clear_n_17,ed_clear_n_18,ed_clear_n_19,ed_clear_n_20}),
        .\sec_reg[5] ({ed_clear_n_53,ed_clear_n_54,ed_clear_n_55,ed_clear_n_56,ed_clear_n_57,ed_clear_n_58}),
        .\sec_reg[5]_0 ({\sec_reg_n_0_[5] ,\sec_reg_n_0_[4] ,\sec_reg_n_0_[3] ,\sec_reg_n_0_[2] ,\sec_reg_n_0_[1] ,\sec_reg_n_0_[0] }),
        .\sec_reg[5]_1 (\sec[5]_i_3_n_0 ),
        .start_stop(start_stop));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 ed_lap
       (.AR(SR),
        .Q(Q[1]),
        .p_0_in(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1 ed_start
       (.AR(SR),
        .Q(Q[0]),
        .ff_old_reg_0(ed_start_n_0),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .start_stop(start_stop));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[0]_i_1 
       (.I0(lap_csec[0]),
        .I1(\csec_reg_n_0_[0] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[1]_i_1 
       (.I0(lap_csec[1]),
        .I1(\csec_reg_n_0_[1] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[2]_i_1 
       (.I0(lap_csec[2]),
        .I1(\csec_reg_n_0_[2] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[3]_i_1 
       (.I0(lap_csec[3]),
        .I1(\csec_reg_n_0_[3] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[4]_i_1 
       (.I0(lap_csec[4]),
        .I1(\csec_reg_n_0_[4] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[5]_i_1 
       (.I0(lap_csec[5]),
        .I1(\csec_reg_n_0_[5] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_csec[6]_i_1 
       (.I0(lap_csec[6]),
        .I1(\csec_reg_n_0_[6] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_csec[6]_i_1_n_0 ));
  FDCE \fnd_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[0]_i_1_n_0 ),
        .Q(fnd_csec[0]));
  FDCE \fnd_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[1]_i_1_n_0 ),
        .Q(fnd_csec[1]));
  FDCE \fnd_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[2]_i_1_n_0 ),
        .Q(fnd_csec[2]));
  FDCE \fnd_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[3]_i_1_n_0 ),
        .Q(fnd_csec[3]));
  FDCE \fnd_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[4]_i_1_n_0 ),
        .Q(fnd_csec[4]));
  FDCE \fnd_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[5]_i_1_n_0 ),
        .Q(fnd_csec[5]));
  FDCE \fnd_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_csec[6]_i_1_n_0 ),
        .Q(fnd_csec[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[0]_i_1 
       (.I0(lap_sec[0]),
        .I1(\sec_reg_n_0_[0] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[1]_i_1 
       (.I0(lap_sec[1]),
        .I1(\sec_reg_n_0_[1] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[2]_i_1 
       (.I0(lap_sec[2]),
        .I1(\sec_reg_n_0_[2] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[3]_i_1 
       (.I0(lap_sec[3]),
        .I1(\sec_reg_n_0_[3] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[4]_i_1 
       (.I0(lap_sec[4]),
        .I1(\sec_reg_n_0_[4] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fnd_sec[5]_i_1 
       (.I0(lap_sec[5]),
        .I1(\sec_reg_n_0_[5] ),
        .I2(lap_running_reg_n_0),
        .O(\fnd_sec[5]_i_1_n_0 ));
  FDCE \fnd_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[0]_i_1_n_0 ),
        .Q(fnd_sec[0]));
  FDCE \fnd_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[1]_i_1_n_0 ),
        .Q(fnd_sec[1]));
  FDCE \fnd_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[2]_i_1_n_0 ),
        .Q(fnd_sec[2]));
  FDCE \fnd_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[3]_i_1_n_0 ),
        .Q(fnd_sec[3]));
  FDCE \fnd_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[4]_i_1_n_0 ),
        .Q(fnd_sec[4]));
  FDCE \fnd_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\fnd_sec[5]_i_1_n_0 ),
        .Q(fnd_sec[5]));
  FDCE \lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_65),
        .Q(lap_csec[0]));
  FDCE \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_64),
        .Q(lap_csec[1]));
  FDCE \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_63),
        .Q(lap_csec[2]));
  FDCE \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_62),
        .Q(lap_csec[3]));
  FDCE \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_61),
        .Q(lap_csec[4]));
  FDCE \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_60),
        .Q(lap_csec[5]));
  FDCE \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_59),
        .Q(lap_csec[6]));
  FDCE lap_running_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_clear_n_3),
        .Q(lap_running_reg_n_0));
  FDCE \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_58),
        .Q(lap_sec[0]));
  FDCE \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_57),
        .Q(lap_sec[1]));
  FDCE \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_56),
        .Q(lap_sec[2]));
  FDCE \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_55),
        .Q(lap_sec[3]));
  FDCE \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_54),
        .Q(lap_sec[4]));
  FDCE \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(lap_csec_0),
        .CLR(SR),
        .D(ed_clear_n_53),
        .Q(lap_sec[5]));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_0_sn_1),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [0]),
        .I1(fnd_csec[0]),
        .I2(sel0[1]),
        .I3(fnd_sec[0]),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_1_sn_1),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [1]),
        .I1(fnd_csec[1]),
        .I2(sel0[1]),
        .I3(fnd_sec[1]),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_2_sn_1),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [2]),
        .I1(fnd_csec[2]),
        .I2(sel0[1]),
        .I3(fnd_sec[2]),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_3_sn_1),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [3]),
        .I1(fnd_csec[3]),
        .I2(sel0[1]),
        .I3(fnd_sec[3]),
        .I4(sel0[0]),
        .I5(Q[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_4_sn_1),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [4]),
        .I1(fnd_csec[4]),
        .I2(sel0[1]),
        .I3(fnd_sec[4]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_5_sn_1),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [5]),
        .I1(fnd_csec[5]),
        .I2(sel0[1]),
        .I3(fnd_sec[5]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6] [6]),
        .I1(fnd_csec[6]),
        .I2(sel0[1]),
        .I3(Q[6]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880808000000000)) 
    \sec[3]_i_2 
       (.I0(\sec_reg_n_0_[4] ),
        .I1(\sec_reg_n_0_[3] ),
        .I2(\sec_reg_n_0_[2] ),
        .I3(\sec_reg_n_0_[0] ),
        .I4(\sec_reg_n_0_[1] ),
        .I5(\sec_reg_n_0_[5] ),
        .O(\sec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sec[5]_i_3 
       (.I0(\sec_reg_n_0_[1] ),
        .I1(\sec_reg_n_0_[0] ),
        .O(\sec[5]_i_3_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_20),
        .Q(\sec_reg_n_0_[0] ));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_19),
        .Q(\sec_reg_n_0_[1] ));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_18),
        .Q(\sec_reg_n_0_[2] ));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_17),
        .Q(\sec_reg_n_0_[3] ));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_16),
        .Q(\sec_reg_n_0_[4] ));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_15),
        .Q(\sec_reg_n_0_[5] ));
  FDCE start_stop_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_start_n_0),
        .Q(start_stop));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
