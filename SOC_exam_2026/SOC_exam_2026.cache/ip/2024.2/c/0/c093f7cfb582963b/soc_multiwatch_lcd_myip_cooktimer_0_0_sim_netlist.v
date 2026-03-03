// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 28 19:21:36 2026
// Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_multiwatch_lcd_myip_cooktimer_0_0_sim_netlist.v
// Design      : soc_multiwatch_lcd_myip_cooktimer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer
   (SR,
    alarm_reg_0,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    \min_reg[7]_0 ,
    \sec_reg[7]_0 ,
    s00_axi_aresetn,
    sel0,
    \s00_axi_rdata[7] ,
    \s00_axi_rdata[7]_0 ,
    \s00_axi_rdata[7]_1 );
  output [0:0]SR;
  output alarm_reg_0;
  output [7:0]s00_axi_rdata;
  input [7:0]Q;
  input s00_axi_aclk;
  input [7:0]\min_reg[7]_0 ;
  input [7:0]\sec_reg[7]_0 ;
  input s00_axi_aresetn;
  input [2:0]sel0;
  input [7:0]\s00_axi_rdata[7] ;
  input [7:0]\s00_axi_rdata[7]_0 ;
  input [7:0]\s00_axi_rdata[7]_1 ;

  wire [7:0]Q;
  wire [0:0]SR;
  wire alarm_i_3_n_0;
  wire alarm_i_4_n_0;
  wire alarm_i_5_n_0;
  wire alarm_reg_0;
  wire cnt_sysclk0;
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
  wire cnt_sysclk1_carry__1_n_0;
  wire cnt_sysclk1_carry__1_n_1;
  wire cnt_sysclk1_carry__1_n_2;
  wire cnt_sysclk1_carry__1_n_3;
  wire cnt_sysclk1_carry__2_i_1_n_0;
  wire cnt_sysclk1_carry__2_i_2_n_0;
  wire cnt_sysclk1_carry__2_i_3_n_0;
  wire cnt_sysclk1_carry__2_i_4_n_0;
  wire cnt_sysclk1_carry__2_i_5_n_0;
  wire cnt_sysclk1_carry__2_n_1;
  wire cnt_sysclk1_carry__2_n_2;
  wire cnt_sysclk1_carry__2_n_3;
  wire cnt_sysclk1_carry_i_1_n_0;
  wire cnt_sysclk1_carry_i_2_n_0;
  wire cnt_sysclk1_carry_i_3_n_0;
  wire cnt_sysclk1_carry_i_4_n_0;
  wire cnt_sysclk1_carry_i_5_n_0;
  wire cnt_sysclk1_carry_i_6_n_0;
  wire cnt_sysclk1_carry_n_0;
  wire cnt_sysclk1_carry_n_1;
  wire cnt_sysclk1_carry_n_2;
  wire cnt_sysclk1_carry_n_3;
  wire \cnt_sysclk[0]_i_3_n_0 ;
  wire \cnt_sysclk[0]_i_4_n_0 ;
  wire \cnt_sysclk[0]_i_5_n_0 ;
  wire \cnt_sysclk[0]_i_6_n_0 ;
  wire \cnt_sysclk[0]_i_7_n_0 ;
  wire \cnt_sysclk[12]_i_2_n_0 ;
  wire \cnt_sysclk[12]_i_3_n_0 ;
  wire \cnt_sysclk[12]_i_4_n_0 ;
  wire \cnt_sysclk[12]_i_5_n_0 ;
  wire \cnt_sysclk[16]_i_2_n_0 ;
  wire \cnt_sysclk[16]_i_3_n_0 ;
  wire \cnt_sysclk[16]_i_4_n_0 ;
  wire \cnt_sysclk[16]_i_5_n_0 ;
  wire \cnt_sysclk[20]_i_2_n_0 ;
  wire \cnt_sysclk[20]_i_3_n_0 ;
  wire \cnt_sysclk[20]_i_4_n_0 ;
  wire \cnt_sysclk[20]_i_5_n_0 ;
  wire \cnt_sysclk[24]_i_2_n_0 ;
  wire \cnt_sysclk[24]_i_3_n_0 ;
  wire \cnt_sysclk[24]_i_4_n_0 ;
  wire \cnt_sysclk[24]_i_5_n_0 ;
  wire \cnt_sysclk[28]_i_2_n_0 ;
  wire \cnt_sysclk[28]_i_3_n_0 ;
  wire \cnt_sysclk[28]_i_4_n_0 ;
  wire \cnt_sysclk[28]_i_5_n_0 ;
  wire \cnt_sysclk[4]_i_2_n_0 ;
  wire \cnt_sysclk[4]_i_3_n_0 ;
  wire \cnt_sysclk[4]_i_4_n_0 ;
  wire \cnt_sysclk[4]_i_5_n_0 ;
  wire \cnt_sysclk[8]_i_2_n_0 ;
  wire \cnt_sysclk[8]_i_3_n_0 ;
  wire \cnt_sysclk[8]_i_4_n_0 ;
  wire \cnt_sysclk[8]_i_5_n_0 ;
  wire [31:0]cnt_sysclk_reg;
  wire \cnt_sysclk_reg[0]_i_2_n_0 ;
  wire \cnt_sysclk_reg[0]_i_2_n_1 ;
  wire \cnt_sysclk_reg[0]_i_2_n_2 ;
  wire \cnt_sysclk_reg[0]_i_2_n_3 ;
  wire \cnt_sysclk_reg[0]_i_2_n_4 ;
  wire \cnt_sysclk_reg[0]_i_2_n_5 ;
  wire \cnt_sysclk_reg[0]_i_2_n_6 ;
  wire \cnt_sysclk_reg[0]_i_2_n_7 ;
  wire \cnt_sysclk_reg[12]_i_1_n_0 ;
  wire \cnt_sysclk_reg[12]_i_1_n_1 ;
  wire \cnt_sysclk_reg[12]_i_1_n_2 ;
  wire \cnt_sysclk_reg[12]_i_1_n_3 ;
  wire \cnt_sysclk_reg[12]_i_1_n_4 ;
  wire \cnt_sysclk_reg[12]_i_1_n_5 ;
  wire \cnt_sysclk_reg[12]_i_1_n_6 ;
  wire \cnt_sysclk_reg[12]_i_1_n_7 ;
  wire \cnt_sysclk_reg[16]_i_1_n_0 ;
  wire \cnt_sysclk_reg[16]_i_1_n_1 ;
  wire \cnt_sysclk_reg[16]_i_1_n_2 ;
  wire \cnt_sysclk_reg[16]_i_1_n_3 ;
  wire \cnt_sysclk_reg[16]_i_1_n_4 ;
  wire \cnt_sysclk_reg[16]_i_1_n_5 ;
  wire \cnt_sysclk_reg[16]_i_1_n_6 ;
  wire \cnt_sysclk_reg[16]_i_1_n_7 ;
  wire \cnt_sysclk_reg[20]_i_1_n_0 ;
  wire \cnt_sysclk_reg[20]_i_1_n_1 ;
  wire \cnt_sysclk_reg[20]_i_1_n_2 ;
  wire \cnt_sysclk_reg[20]_i_1_n_3 ;
  wire \cnt_sysclk_reg[20]_i_1_n_4 ;
  wire \cnt_sysclk_reg[20]_i_1_n_5 ;
  wire \cnt_sysclk_reg[20]_i_1_n_6 ;
  wire \cnt_sysclk_reg[20]_i_1_n_7 ;
  wire \cnt_sysclk_reg[24]_i_1_n_0 ;
  wire \cnt_sysclk_reg[24]_i_1_n_1 ;
  wire \cnt_sysclk_reg[24]_i_1_n_2 ;
  wire \cnt_sysclk_reg[24]_i_1_n_3 ;
  wire \cnt_sysclk_reg[24]_i_1_n_4 ;
  wire \cnt_sysclk_reg[24]_i_1_n_5 ;
  wire \cnt_sysclk_reg[24]_i_1_n_6 ;
  wire \cnt_sysclk_reg[24]_i_1_n_7 ;
  wire \cnt_sysclk_reg[28]_i_1_n_1 ;
  wire \cnt_sysclk_reg[28]_i_1_n_2 ;
  wire \cnt_sysclk_reg[28]_i_1_n_3 ;
  wire \cnt_sysclk_reg[28]_i_1_n_4 ;
  wire \cnt_sysclk_reg[28]_i_1_n_5 ;
  wire \cnt_sysclk_reg[28]_i_1_n_6 ;
  wire \cnt_sysclk_reg[28]_i_1_n_7 ;
  wire \cnt_sysclk_reg[4]_i_1_n_0 ;
  wire \cnt_sysclk_reg[4]_i_1_n_1 ;
  wire \cnt_sysclk_reg[4]_i_1_n_2 ;
  wire \cnt_sysclk_reg[4]_i_1_n_3 ;
  wire \cnt_sysclk_reg[4]_i_1_n_4 ;
  wire \cnt_sysclk_reg[4]_i_1_n_5 ;
  wire \cnt_sysclk_reg[4]_i_1_n_6 ;
  wire \cnt_sysclk_reg[4]_i_1_n_7 ;
  wire \cnt_sysclk_reg[8]_i_1_n_0 ;
  wire \cnt_sysclk_reg[8]_i_1_n_1 ;
  wire \cnt_sysclk_reg[8]_i_1_n_2 ;
  wire \cnt_sysclk_reg[8]_i_1_n_3 ;
  wire \cnt_sysclk_reg[8]_i_1_n_4 ;
  wire \cnt_sysclk_reg[8]_i_1_n_5 ;
  wire \cnt_sysclk_reg[8]_i_1_n_6 ;
  wire \cnt_sysclk_reg[8]_i_1_n_7 ;
  wire dcnt_set2_out;
  wire dcnt_set_reg_n_0;
  wire ed_start_n_1;
  wire ed_start_n_2;
  wire ed_start_n_4;
  wire [7:0]min;
  wire \min[6]_i_2_n_0 ;
  wire \min[7]_i_3_n_0 ;
  wire [7:0]\min_reg[7]_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire [7:0]\s00_axi_rdata[7] ;
  wire [7:0]\s00_axi_rdata[7]_0 ;
  wire [7:0]\s00_axi_rdata[7]_1 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire [7:0]sec;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[6]_i_2_n_0 ;
  wire \sec[7]_i_3_n_0 ;
  wire [7:0]\sec_reg[7]_0 ;
  wire [2:0]sel0;
  wire [3:0]NLW_cnt_sysclk1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    alarm_i_3
       (.I0(alarm_i_4_n_0),
        .I1(\min[6]_i_2_n_0 ),
        .I2(\sec[5]_i_2_n_0 ),
        .I3(alarm_i_5_n_0),
        .O(alarm_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    alarm_i_4
       (.I0(min[7]),
        .I1(min[6]),
        .I2(min[5]),
        .I3(min[4]),
        .O(alarm_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    alarm_i_5
       (.I0(sec[7]),
        .I1(sec[6]),
        .I2(sec[5]),
        .I3(sec[4]),
        .O(alarm_i_5_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    alarm_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_start_n_4),
        .Q(alarm_reg_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry
       (.CI(1'b0),
        .CO({cnt_sysclk1_carry_n_0,cnt_sysclk1_carry_n_1,cnt_sysclk1_carry_n_2,cnt_sysclk1_carry_n_3}),
        .CYINIT(cnt_sysclk1_carry_i_1_n_0),
        .DI({cnt_sysclk1_carry_i_2_n_0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt_sysclk1_carry_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry_i_3_n_0,cnt_sysclk1_carry_i_4_n_0,cnt_sysclk1_carry_i_5_n_0,cnt_sysclk1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__0
       (.CI(cnt_sysclk1_carry_n_0),
        .CO({cnt_sysclk1_carry__0_n_0,cnt_sysclk1_carry__0_n_1,cnt_sysclk1_carry__0_n_2,cnt_sysclk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk_reg[17],1'b0,cnt_sysclk1_carry__0_i_1_n_0,cnt_sysclk1_carry__0_i_2_n_0}),
        .O(NLW_cnt_sysclk1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry__0_i_3_n_0,cnt_sysclk1_carry__0_i_4_n_0,cnt_sysclk1_carry__0_i_5_n_0,cnt_sysclk1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__0_i_1
       (.I0(cnt_sysclk_reg[12]),
        .I1(cnt_sysclk_reg[13]),
        .O(cnt_sysclk1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__0_i_2
       (.I0(cnt_sysclk_reg[11]),
        .I1(cnt_sysclk_reg[10]),
        .O(cnt_sysclk1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__0_i_3
       (.I0(cnt_sysclk_reg[16]),
        .I1(cnt_sysclk_reg[17]),
        .O(cnt_sysclk1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__0_i_4
       (.I0(cnt_sysclk_reg[14]),
        .I1(cnt_sysclk_reg[15]),
        .O(cnt_sysclk1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__0_i_5
       (.I0(cnt_sysclk_reg[13]),
        .I1(cnt_sysclk_reg[12]),
        .O(cnt_sysclk1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__0_i_6
       (.I0(cnt_sysclk_reg[10]),
        .I1(cnt_sysclk_reg[11]),
        .O(cnt_sysclk1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__1
       (.CI(cnt_sysclk1_carry__0_n_0),
        .CO({cnt_sysclk1_carry__1_n_0,cnt_sysclk1_carry__1_n_1,cnt_sysclk1_carry__1_n_2,cnt_sysclk1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk_reg[25],1'b0,1'b0,cnt_sysclk_reg[19]}),
        .O(NLW_cnt_sysclk1_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk1_carry__1_i_1_n_0,cnt_sysclk1_carry__1_i_2_n_0,cnt_sysclk1_carry__1_i_3_n_0,cnt_sysclk1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__1_i_1
       (.I0(cnt_sysclk_reg[24]),
        .I1(cnt_sysclk_reg[25]),
        .O(cnt_sysclk1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__1_i_2
       (.I0(cnt_sysclk_reg[22]),
        .I1(cnt_sysclk_reg[23]),
        .O(cnt_sysclk1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry__1_i_3
       (.I0(cnt_sysclk_reg[20]),
        .I1(cnt_sysclk_reg[21]),
        .O(cnt_sysclk1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__1_i_4
       (.I0(cnt_sysclk_reg[18]),
        .I1(cnt_sysclk_reg[19]),
        .O(cnt_sysclk1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk1_carry__2
       (.CI(cnt_sysclk1_carry__1_n_0),
        .CO({NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED[3],cnt_sysclk1_carry__2_n_1,cnt_sysclk1_carry__2_n_2,cnt_sysclk1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk1_carry__2_i_1_n_0,cnt_sysclk1_carry__2_i_2_n_0,cnt_sysclk_reg[27]}),
        .O(NLW_cnt_sysclk1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt_sysclk1_carry__2_i_3_n_0,cnt_sysclk1_carry__2_i_4_n_0,cnt_sysclk1_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__2_i_1
       (.I0(cnt_sysclk_reg[30]),
        .I1(cnt_sysclk_reg[31]),
        .O(cnt_sysclk1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry__2_i_2
       (.I0(cnt_sysclk_reg[29]),
        .I1(cnt_sysclk_reg[28]),
        .O(cnt_sysclk1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__2_i_3
       (.I0(cnt_sysclk_reg[30]),
        .I1(cnt_sysclk_reg[31]),
        .O(cnt_sysclk1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry__2_i_4
       (.I0(cnt_sysclk_reg[28]),
        .I1(cnt_sysclk_reg[29]),
        .O(cnt_sysclk1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk1_carry__2_i_5
       (.I0(cnt_sysclk_reg[26]),
        .I1(cnt_sysclk_reg[27]),
        .O(cnt_sysclk1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_1
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .O(cnt_sysclk1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk1_carry_i_2
       (.I0(cnt_sysclk_reg[9]),
        .I1(cnt_sysclk_reg[8]),
        .O(cnt_sysclk1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk1_carry_i_3
       (.I0(cnt_sysclk_reg[8]),
        .I1(cnt_sysclk_reg[9]),
        .O(cnt_sysclk1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_4
       (.I0(cnt_sysclk_reg[6]),
        .I1(cnt_sysclk_reg[7]),
        .O(cnt_sysclk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_5
       (.I0(cnt_sysclk_reg[4]),
        .I1(cnt_sysclk_reg[5]),
        .O(cnt_sysclk1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk1_carry_i_6
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .O(cnt_sysclk1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[0]_i_1 
       (.I0(dcnt_set_reg_n_0),
        .I1(alarm_reg_0),
        .O(cnt_sysclk0));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[0]_i_3 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[0]_i_4 
       (.I0(cnt_sysclk_reg[3]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[0]_i_5 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[0]_i_6 
       (.I0(cnt_sysclk_reg[1]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_sysclk[0]_i_7 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[12]_i_2 
       (.I0(cnt_sysclk_reg[15]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[12]_i_3 
       (.I0(cnt_sysclk_reg[14]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[12]_i_4 
       (.I0(cnt_sysclk_reg[13]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[12]_i_5 
       (.I0(cnt_sysclk_reg[12]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[16]_i_2 
       (.I0(cnt_sysclk_reg[19]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[16]_i_3 
       (.I0(cnt_sysclk_reg[18]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[16]_i_4 
       (.I0(cnt_sysclk_reg[17]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[16]_i_5 
       (.I0(cnt_sysclk_reg[16]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[20]_i_2 
       (.I0(cnt_sysclk_reg[23]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[20]_i_3 
       (.I0(cnt_sysclk_reg[22]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[20]_i_4 
       (.I0(cnt_sysclk_reg[21]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[20]_i_5 
       (.I0(cnt_sysclk_reg[20]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[24]_i_2 
       (.I0(cnt_sysclk_reg[27]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[24]_i_3 
       (.I0(cnt_sysclk_reg[26]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[24]_i_4 
       (.I0(cnt_sysclk_reg[25]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[24]_i_5 
       (.I0(cnt_sysclk_reg[24]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[28]_i_2 
       (.I0(cnt_sysclk_reg[31]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[28]_i_3 
       (.I0(cnt_sysclk_reg[30]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[28]_i_4 
       (.I0(cnt_sysclk_reg[29]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[28]_i_5 
       (.I0(cnt_sysclk_reg[28]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[4]_i_2 
       (.I0(cnt_sysclk_reg[7]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[4]_i_3 
       (.I0(cnt_sysclk_reg[6]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[4]_i_4 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[4]_i_5 
       (.I0(cnt_sysclk_reg[4]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[8]_i_2 
       (.I0(cnt_sysclk_reg[11]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[8]_i_3 
       (.I0(cnt_sysclk_reg[10]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[8]_i_4 
       (.I0(cnt_sysclk_reg[9]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[8]_i_5 
       (.I0(cnt_sysclk_reg[8]),
        .I1(cnt_sysclk1_carry__2_n_1),
        .O(\cnt_sysclk[8]_i_5_n_0 ));
  FDCE \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_2_n_7 ),
        .Q(cnt_sysclk_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_sysclk_reg[0]_i_2_n_0 ,\cnt_sysclk_reg[0]_i_2_n_1 ,\cnt_sysclk_reg[0]_i_2_n_2 ,\cnt_sysclk_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cnt_sysclk[0]_i_3_n_0 }),
        .O({\cnt_sysclk_reg[0]_i_2_n_4 ,\cnt_sysclk_reg[0]_i_2_n_5 ,\cnt_sysclk_reg[0]_i_2_n_6 ,\cnt_sysclk_reg[0]_i_2_n_7 }),
        .S({\cnt_sysclk[0]_i_4_n_0 ,\cnt_sysclk[0]_i_5_n_0 ,\cnt_sysclk[0]_i_6_n_0 ,\cnt_sysclk[0]_i_7_n_0 }));
  FDCE \cnt_sysclk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[10]));
  FDCE \cnt_sysclk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[11]));
  FDCE \cnt_sysclk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[12]_i_1 
       (.CI(\cnt_sysclk_reg[8]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[12]_i_1_n_0 ,\cnt_sysclk_reg[12]_i_1_n_1 ,\cnt_sysclk_reg[12]_i_1_n_2 ,\cnt_sysclk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[12]_i_1_n_4 ,\cnt_sysclk_reg[12]_i_1_n_5 ,\cnt_sysclk_reg[12]_i_1_n_6 ,\cnt_sysclk_reg[12]_i_1_n_7 }),
        .S({\cnt_sysclk[12]_i_2_n_0 ,\cnt_sysclk[12]_i_3_n_0 ,\cnt_sysclk[12]_i_4_n_0 ,\cnt_sysclk[12]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[13]));
  FDCE \cnt_sysclk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[14]));
  FDCE \cnt_sysclk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[15]));
  FDCE \cnt_sysclk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[16]_i_1 
       (.CI(\cnt_sysclk_reg[12]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[16]_i_1_n_0 ,\cnt_sysclk_reg[16]_i_1_n_1 ,\cnt_sysclk_reg[16]_i_1_n_2 ,\cnt_sysclk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[16]_i_1_n_4 ,\cnt_sysclk_reg[16]_i_1_n_5 ,\cnt_sysclk_reg[16]_i_1_n_6 ,\cnt_sysclk_reg[16]_i_1_n_7 }),
        .S({\cnt_sysclk[16]_i_2_n_0 ,\cnt_sysclk[16]_i_3_n_0 ,\cnt_sysclk[16]_i_4_n_0 ,\cnt_sysclk[16]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[17]));
  FDCE \cnt_sysclk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[18]));
  FDCE \cnt_sysclk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[19]));
  FDCE \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_2_n_6 ),
        .Q(cnt_sysclk_reg[1]));
  FDCE \cnt_sysclk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[20]_i_1 
       (.CI(\cnt_sysclk_reg[16]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[20]_i_1_n_0 ,\cnt_sysclk_reg[20]_i_1_n_1 ,\cnt_sysclk_reg[20]_i_1_n_2 ,\cnt_sysclk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[20]_i_1_n_4 ,\cnt_sysclk_reg[20]_i_1_n_5 ,\cnt_sysclk_reg[20]_i_1_n_6 ,\cnt_sysclk_reg[20]_i_1_n_7 }),
        .S({\cnt_sysclk[20]_i_2_n_0 ,\cnt_sysclk[20]_i_3_n_0 ,\cnt_sysclk[20]_i_4_n_0 ,\cnt_sysclk[20]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[21]));
  FDCE \cnt_sysclk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[22]));
  FDCE \cnt_sysclk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[23]));
  FDCE \cnt_sysclk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[24]_i_1 
       (.CI(\cnt_sysclk_reg[20]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[24]_i_1_n_0 ,\cnt_sysclk_reg[24]_i_1_n_1 ,\cnt_sysclk_reg[24]_i_1_n_2 ,\cnt_sysclk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[24]_i_1_n_4 ,\cnt_sysclk_reg[24]_i_1_n_5 ,\cnt_sysclk_reg[24]_i_1_n_6 ,\cnt_sysclk_reg[24]_i_1_n_7 }),
        .S({\cnt_sysclk[24]_i_2_n_0 ,\cnt_sysclk[24]_i_3_n_0 ,\cnt_sysclk[24]_i_4_n_0 ,\cnt_sysclk[24]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[25]));
  FDCE \cnt_sysclk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[26]));
  FDCE \cnt_sysclk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[27]));
  FDCE \cnt_sysclk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[28]_i_1 
       (.CI(\cnt_sysclk_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_sysclk_reg[28]_i_1_n_1 ,\cnt_sysclk_reg[28]_i_1_n_2 ,\cnt_sysclk_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[28]_i_1_n_4 ,\cnt_sysclk_reg[28]_i_1_n_5 ,\cnt_sysclk_reg[28]_i_1_n_6 ,\cnt_sysclk_reg[28]_i_1_n_7 }),
        .S({\cnt_sysclk[28]_i_2_n_0 ,\cnt_sysclk[28]_i_3_n_0 ,\cnt_sysclk[28]_i_4_n_0 ,\cnt_sysclk[28]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[29]));
  FDCE \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_2_n_5 ),
        .Q(cnt_sysclk_reg[2]));
  FDCE \cnt_sysclk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[30]));
  FDCE \cnt_sysclk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[31]));
  FDCE \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_2_n_4 ),
        .Q(cnt_sysclk_reg[3]));
  FDCE \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[4]_i_1 
       (.CI(\cnt_sysclk_reg[0]_i_2_n_0 ),
        .CO({\cnt_sysclk_reg[4]_i_1_n_0 ,\cnt_sysclk_reg[4]_i_1_n_1 ,\cnt_sysclk_reg[4]_i_1_n_2 ,\cnt_sysclk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[4]_i_1_n_4 ,\cnt_sysclk_reg[4]_i_1_n_5 ,\cnt_sysclk_reg[4]_i_1_n_6 ,\cnt_sysclk_reg[4]_i_1_n_7 }),
        .S({\cnt_sysclk[4]_i_2_n_0 ,\cnt_sysclk[4]_i_3_n_0 ,\cnt_sysclk[4]_i_4_n_0 ,\cnt_sysclk[4]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[5]));
  FDCE \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[6]));
  FDCE \cnt_sysclk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[7]));
  FDCE \cnt_sysclk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[8]_i_1 
       (.CI(\cnt_sysclk_reg[4]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[8]_i_1_n_0 ,\cnt_sysclk_reg[8]_i_1_n_1 ,\cnt_sysclk_reg[8]_i_1_n_2 ,\cnt_sysclk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[8]_i_1_n_4 ,\cnt_sysclk_reg[8]_i_1_n_5 ,\cnt_sysclk_reg[8]_i_1_n_6 ,\cnt_sysclk_reg[8]_i_1_n_7 }),
        .S({\cnt_sysclk[8]_i_2_n_0 ,\cnt_sysclk[8]_i_3_n_0 ,\cnt_sysclk[8]_i_4_n_0 ,\cnt_sysclk[8]_i_5_n_0 }));
  FDCE \cnt_sysclk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk0),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    dcnt_set_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dcnt_set2_out),
        .Q(dcnt_set_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ed_start
       (.CO(cnt_sysclk1_carry__2_n_1),
        .E(ed_start_n_1),
        .Q(Q[1:0]),
        .alarm_reg(dcnt_set_reg_n_0),
        .alarm_reg_0(alarm_i_3_n_0),
        .dcnt_set2_out(dcnt_set2_out),
        .dcnt_set_reg(ed_start_n_2),
        .\min_reg[0] (\sec[6]_i_2_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(SR),
        .\sec_reg[0] (alarm_reg_0),
        .\slv_reg2_reg[1] (ed_start_n_4));
  LUT4 #(
    .INIT(16'hF704)) 
    \min[0]_i_1 
       (.I0(min[0]),
        .I1(dcnt_set_reg_n_0),
        .I2(alarm_reg_0),
        .I3(\min_reg[7]_0 [0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \min[1]_i_1 
       (.I0(min[0]),
        .I1(min[1]),
        .I2(dcnt_set_reg_n_0),
        .I3(alarm_reg_0),
        .I4(\min_reg[7]_0 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFFE1FF0000E100)) 
    \min[2]_i_1 
       (.I0(min[0]),
        .I1(min[1]),
        .I2(min[2]),
        .I3(dcnt_set_reg_n_0),
        .I4(alarm_reg_0),
        .I5(\min_reg[7]_0 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \min[3]_i_1 
       (.I0(min[3]),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .I4(cnt_sysclk0),
        .I5(\min_reg[7]_0 [3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \min[4]_i_1 
       (.I0(min[4]),
        .I1(\min[6]_i_2_n_0 ),
        .I2(dcnt_set_reg_n_0),
        .I3(alarm_reg_0),
        .I4(\min_reg[7]_0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFA9FF0000A900)) 
    \min[5]_i_1 
       (.I0(min[5]),
        .I1(\min[6]_i_2_n_0 ),
        .I2(min[4]),
        .I3(dcnt_set_reg_n_0),
        .I4(alarm_reg_0),
        .I5(\min_reg[7]_0 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \min[6]_i_1 
       (.I0(min[6]),
        .I1(min[5]),
        .I2(min[4]),
        .I3(\min[6]_i_2_n_0 ),
        .I4(cnt_sysclk0),
        .I5(\min_reg[7]_0 [6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \min[6]_i_2 
       (.I0(min[3]),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .O(\min[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9AFF00009A00)) 
    \min[7]_i_2 
       (.I0(min[7]),
        .I1(min[6]),
        .I2(\min[7]_i_3_n_0 ),
        .I3(dcnt_set_reg_n_0),
        .I4(alarm_reg_0),
        .I5(\min_reg[7]_0 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \min[7]_i_3 
       (.I0(min[3]),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .I4(min[4]),
        .I5(min[5]),
        .O(\min[7]_i_3_n_0 ));
  FDCE \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[0]),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[1]),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[2]),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[3]),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[4]),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[5]),
        .Q(min[5]));
  FDCE \min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[6]),
        .Q(min[6]));
  FDCE \min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_1),
        .CLR(SR),
        .D(p_0_in[7]),
        .Q(min[7]));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(sec[0]),
        .I1(Q[0]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [0]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [0]),
        .I1(\s00_axi_rdata[7]_0 [0]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [0]),
        .I4(sel0[0]),
        .I5(min[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(sec[1]),
        .I1(Q[1]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [1]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [1]),
        .I1(\s00_axi_rdata[7]_0 [1]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [1]),
        .I4(sel0[0]),
        .I5(min[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(sec[2]),
        .I1(Q[2]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [2]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [2]),
        .I1(\s00_axi_rdata[7]_0 [2]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [2]),
        .I4(sel0[0]),
        .I5(min[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(sec[3]),
        .I1(Q[3]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [3]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [3]),
        .I1(\s00_axi_rdata[7]_0 [3]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [3]),
        .I4(sel0[0]),
        .I5(min[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(sec[4]),
        .I1(Q[4]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [4]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [4]),
        .I1(\s00_axi_rdata[7]_0 [4]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [4]),
        .I4(sel0[0]),
        .I5(min[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(sec[5]),
        .I1(Q[5]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [5]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [5]),
        .I1(\s00_axi_rdata[7]_0 [5]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [5]),
        .I4(sel0[0]),
        .I5(min[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(sec[6]),
        .I1(Q[6]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [6]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [6]),
        .I1(\s00_axi_rdata[7]_0 [6]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [6]),
        .I4(sel0[0]),
        .I5(min[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(sec[7]),
        .I1(Q[7]),
        .I2(sel0[1]),
        .I3(\min_reg[7]_0 [7]),
        .I4(sel0[0]),
        .I5(\sec_reg[7]_0 [7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7] [7]),
        .I1(\s00_axi_rdata[7]_0 [7]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[7]_1 [7]),
        .I4(sel0[0]),
        .I5(min[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF704)) 
    \sec[0]_i_1 
       (.I0(sec[0]),
        .I1(dcnt_set_reg_n_0),
        .I2(alarm_reg_0),
        .I3(\sec_reg[7]_0 [0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \sec[1]_i_1 
       (.I0(sec[0]),
        .I1(sec[1]),
        .I2(dcnt_set_reg_n_0),
        .I3(alarm_reg_0),
        .I4(\sec_reg[7]_0 [1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hA802FFFFA8020000)) 
    \sec[2]_i_1 
       (.I0(\sec[6]_i_2_n_0 ),
        .I1(sec[0]),
        .I2(sec[1]),
        .I3(sec[2]),
        .I4(cnt_sysclk0),
        .I5(\sec_reg[7]_0 [2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \sec[3]_i_1 
       (.I0(sec[3]),
        .I1(sec[2]),
        .I2(sec[0]),
        .I3(sec[1]),
        .I4(cnt_sysclk0),
        .I5(\sec_reg[7]_0 [3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFF6F0060)) 
    \sec[4]_i_1 
       (.I0(sec[4]),
        .I1(\sec[5]_i_2_n_0 ),
        .I2(dcnt_set_reg_n_0),
        .I3(alarm_reg_0),
        .I4(\sec_reg[7]_0 [4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFF9AFF00009A00)) 
    \sec[5]_i_1 
       (.I0(sec[5]),
        .I1(sec[4]),
        .I2(\sec[5]_i_2_n_0 ),
        .I3(dcnt_set_reg_n_0),
        .I4(alarm_reg_0),
        .I5(\sec_reg[7]_0 [5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \sec[5]_i_2 
       (.I0(sec[1]),
        .I1(sec[0]),
        .I2(sec[3]),
        .I3(sec[2]),
        .O(\sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF28FF00002800)) 
    \sec[6]_i_1 
       (.I0(\sec[6]_i_2_n_0 ),
        .I1(\sec[7]_i_3_n_0 ),
        .I2(sec[6]),
        .I3(dcnt_set_reg_n_0),
        .I4(alarm_reg_0),
        .I5(\sec_reg[7]_0 [6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \sec[6]_i_2 
       (.I0(alarm_i_4_n_0),
        .I1(\min[6]_i_2_n_0 ),
        .I2(\sec[5]_i_2_n_0 ),
        .I3(alarm_i_5_n_0),
        .O(\sec[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFFFFFBAA0000)) 
    \sec[7]_i_2 
       (.I0(alarm_i_3_n_0),
        .I1(\sec[7]_i_3_n_0 ),
        .I2(sec[6]),
        .I3(sec[7]),
        .I4(cnt_sysclk0),
        .I5(\sec_reg[7]_0 [7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sec[7]_i_3 
       (.I0(sec[4]),
        .I1(sec[1]),
        .I2(sec[0]),
        .I3(sec[3]),
        .I4(sec[2]),
        .I5(sec[5]),
        .O(\sec[7]_i_3_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(sec[5]));
  FDCE \sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(sec[6]));
  FDCE \sec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_2),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(sec[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (s00_axi_aresetn_0,
    E,
    dcnt_set_reg,
    dcnt_set2_out,
    \slv_reg2_reg[1] ,
    Q,
    s00_axi_aclk,
    CO,
    \sec_reg[0] ,
    alarm_reg,
    \min_reg[0] ,
    s00_axi_aresetn,
    alarm_reg_0);
  output s00_axi_aresetn_0;
  output [0:0]E;
  output [0:0]dcnt_set_reg;
  output dcnt_set2_out;
  output \slv_reg2_reg[1] ;
  input [1:0]Q;
  input s00_axi_aclk;
  input [0:0]CO;
  input \sec_reg[0] ;
  input alarm_reg;
  input \min_reg[0] ;
  input s00_axi_aresetn;
  input alarm_reg_0;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire alarm_reg;
  wire alarm_reg_0;
  wire dcnt_set2_out;
  wire [0:0]dcnt_set_reg;
  wire \min_reg[0] ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire \sec_reg[0] ;
  wire \slv_reg2_reg[1] ;

  LUT6 #(
    .INIT(64'h5555555545440000)) 
    alarm_i_1
       (.I0(Q[1]),
        .I1(alarm_reg),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(alarm_reg_0),
        .I5(\sec_reg[0] ),
        .O(\slv_reg2_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    alarm_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  LUT4 #(
    .INIT(16'h5504)) 
    dcnt_set_i_1
       (.I0(Q[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(alarm_reg),
        .O(dcnt_set2_out));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(Q[0]),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT6 #(
    .INIT(64'h3000303030AA3030)) 
    \min[7]_i_1 
       (.I0(CO),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\sec_reg[0] ),
        .I4(alarm_reg),
        .I5(\min_reg[0] ),
        .O(E));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \sec[7]_i_1 
       (.I0(CO),
        .I1(alarm_reg),
        .I2(\sec_reg[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(dcnt_set_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    alarm_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output alarm_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire alarm_reg;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI myip_cooktimer_slave_lite_v1_0_S00_AXI_inst
       (.alarm_reg(alarm_reg),
        .axi_arready_reg_0(axi_arready_reg),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    alarm_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output alarm_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire alarm_reg;
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
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire ctimer_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [1:1]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[31]_i_3_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
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
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFF0FFF8888FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88880FFF0000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(ctimer_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(ctimer_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(ctimer_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(ctimer_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
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
    .INIT(64'hA2A2A2A2FFAFAFAF)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_rready),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(ctimer_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(ctimer_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(ctimer_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(ctimer_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCFCCCF4F)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[0]),
        .I3(s00_axi_wvalid),
        .I4(state_write[1]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(ctimer_n_0));
  LUT6 #(
    .INIT(64'hAAF2AA22F2AAF2AA)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(axi_awready0__0),
        .I5(state_write[0]),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(ctimer_n_0));
  LUT6 #(
    .INIT(64'hF000FF00FF80FF80)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[0]),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_rready),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(ctimer_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(ctimer_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer ctimer
       (.Q({\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,slv_reg2,\slv_reg2_reg_n_0_[0] }),
        .SR(ctimer_n_0),
        .alarm_reg_0(alarm_reg),
        .\min_reg[7]_0 (slv_reg1[7:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata[7:0]),
        .\s00_axi_rdata[7] (slv_reg7[7:0]),
        .\s00_axi_rdata[7]_0 (slv_reg6[7:0]),
        .\s00_axi_rdata[7]_1 (slv_reg5[7:0]),
        .\sec_reg[7]_0 (slv_reg0[7:0]),
        .sel0(sel0));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[10] ),
        .I1(sel0[1]),
        .I2(slv_reg1[10]),
        .I3(sel0[0]),
        .I4(slv_reg0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[11] ),
        .I1(sel0[1]),
        .I2(slv_reg1[11]),
        .I3(sel0[0]),
        .I4(slv_reg0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[12] ),
        .I1(sel0[1]),
        .I2(slv_reg1[12]),
        .I3(sel0[0]),
        .I4(slv_reg0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[13] ),
        .I1(sel0[1]),
        .I2(slv_reg1[13]),
        .I3(sel0[0]),
        .I4(slv_reg0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[14] ),
        .I1(sel0[1]),
        .I2(slv_reg1[14]),
        .I3(sel0[0]),
        .I4(slv_reg0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[15] ),
        .I1(sel0[1]),
        .I2(slv_reg1[15]),
        .I3(sel0[0]),
        .I4(slv_reg0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[16] ),
        .I1(sel0[1]),
        .I2(slv_reg1[16]),
        .I3(sel0[0]),
        .I4(slv_reg0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[17] ),
        .I1(sel0[1]),
        .I2(slv_reg1[17]),
        .I3(sel0[0]),
        .I4(slv_reg0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[18] ),
        .I1(sel0[1]),
        .I2(slv_reg1[18]),
        .I3(sel0[0]),
        .I4(slv_reg0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[19] ),
        .I1(sel0[1]),
        .I2(slv_reg1[19]),
        .I3(sel0[0]),
        .I4(slv_reg0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[20] ),
        .I1(sel0[1]),
        .I2(slv_reg1[20]),
        .I3(sel0[0]),
        .I4(slv_reg0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[21] ),
        .I1(sel0[1]),
        .I2(slv_reg1[21]),
        .I3(sel0[0]),
        .I4(slv_reg0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[22] ),
        .I1(sel0[1]),
        .I2(slv_reg1[22]),
        .I3(sel0[0]),
        .I4(slv_reg0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[23] ),
        .I1(sel0[1]),
        .I2(slv_reg1[23]),
        .I3(sel0[0]),
        .I4(slv_reg0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[24] ),
        .I1(sel0[1]),
        .I2(slv_reg1[24]),
        .I3(sel0[0]),
        .I4(slv_reg0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[25] ),
        .I1(sel0[1]),
        .I2(slv_reg1[25]),
        .I3(sel0[0]),
        .I4(slv_reg0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[26] ),
        .I1(sel0[1]),
        .I2(slv_reg1[26]),
        .I3(sel0[0]),
        .I4(slv_reg0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[27] ),
        .I1(sel0[1]),
        .I2(slv_reg1[27]),
        .I3(sel0[0]),
        .I4(slv_reg0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[28] ),
        .I1(sel0[1]),
        .I2(slv_reg1[28]),
        .I3(sel0[0]),
        .I4(slv_reg0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[29] ),
        .I1(sel0[1]),
        .I2(slv_reg1[29]),
        .I3(sel0[0]),
        .I4(slv_reg0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[30] ),
        .I1(sel0[1]),
        .I2(slv_reg1[30]),
        .I3(sel0[0]),
        .I4(slv_reg0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[31] ),
        .I1(sel0[1]),
        .I2(slv_reg1[31]),
        .I3(sel0[0]),
        .I4(slv_reg0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[8] ),
        .I1(sel0[1]),
        .I2(slv_reg1[8]),
        .I3(sel0[0]),
        .I4(slv_reg0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\slv_reg2_reg_n_0_[9] ),
        .I1(sel0[1]),
        .I2(slv_reg1[9]),
        .I3(sel0[0]),
        .I4(slv_reg0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000511110005)) 
    \slv_reg0[31]_i_2 
       (.I0(\slv_reg2[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(ctimer_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(ctimer_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0000000C0A0A)) 
    \slv_reg1[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[31]_i_3 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(ctimer_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(ctimer_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0000000C0A0A)) 
    \slv_reg2[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\slv_reg2[31]_i_3_n_0 ),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg2[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[31]_i_3 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(ctimer_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(ctimer_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8308800)) 
    \slv_reg5[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(ctimer_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(ctimer_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg6[15]_i_1 
       (.I0(\slv_reg6[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg6[23]_i_1 
       (.I0(\slv_reg6[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg6[31]_i_1 
       (.I0(\slv_reg6[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A800000)) 
    \slv_reg6[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\slv_reg1[31]_i_3_n_0 ),
        .I5(\slv_reg2[31]_i_3_n_0 ),
        .O(\slv_reg6[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg6[7]_i_1 
       (.I0(\slv_reg6[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(ctimer_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(ctimer_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg7[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\slv_reg2[31]_i_3_n_0 ),
        .I5(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg7[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(ctimer_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(ctimer_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_multiwatch_lcd_myip_cooktimer_0_0,myip_cooktimer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_cooktimer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (alarm,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
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
    s00_axi_rready);
  output alarm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
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

  wire \<const0> ;
  wire alarm;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer inst
       (.alarm_reg(alarm),
        .axi_arready_reg(s00_axi_arready),
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
