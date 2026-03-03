// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Feb  6 12:13:39 2026
// Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_can_controller_1_myip_can_modified_1_0_sim_netlist.v
// Design      : soc_can_controller_1_myip_can_modified_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller
   (SR,
    tx_done_w,
    D,
    rx_valid_w,
    E,
    can_tx_port,
    \rx_id_reg[10] ,
    \rx_data_reg[63] ,
    s00_axi_aclk,
    can_rx_port,
    s00_axi_aresetn,
    \crc_reg_reg[0] ,
    Q,
    slv_reg1,
    \data_shift_reg[63] );
  output [0:0]SR;
  output tx_done_w;
  output [0:0]D;
  output rx_valid_w;
  output [0:0]E;
  output can_tx_port;
  output [14:0]\rx_id_reg[10] ;
  output [63:0]\rx_data_reg[63] ;
  input s00_axi_aclk;
  input can_rx_port;
  input s00_axi_aresetn;
  input \crc_reg_reg[0] ;
  input [14:0]Q;
  input [0:0]slv_reg1;
  input [63:0]\data_shift_reg[63] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [14:0]Q;
  wire [0:0]SR;
  wire ack_signal_core;
  wire can_rx_port;
  wire can_rx_reg;
  wire can_tx_port;
  wire \crc_reg_reg[0] ;
  wire [63:0]\data_shift_reg[63] ;
  wire [63:0]\rx_data_reg[63] ;
  wire [14:0]\rx_id_reg[10] ;
  wire rx_sync_1;
  wire rx_sync_2;
  wire rx_valid_w;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sample_en;
  wire [0:0]slv_reg1;
  wire tq_tick;
  wire tx_done_w;
  wire u_pre_n_1;
  wire u_tim_n_1;

  FDPE rx_sync_1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(can_rx_port),
        .PRE(SR),
        .Q(rx_sync_1));
  FDPE rx_sync_2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_sync_1),
        .PRE(SR),
        .Q(rx_sync_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler u_pre
       (.AR(SR),
        .E(u_pre_n_1),
        .can_rx_reg(can_rx_reg),
        .rx_sync_2(rx_sync_2),
        .s00_axi_aclk(s00_axi_aclk),
        .tq_tick(tq_tick));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core u_rx
       (.AR(SR),
        .E(E),
        .ack_signal_core(ack_signal_core),
        .\rx_data_reg[63]_0 (\rx_data_reg[63] ),
        .\rx_id_reg[10]_0 (\rx_id_reg[10] ),
        .rx_sync_2(rx_sync_2),
        .rx_valid_w(rx_valid_w),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sample_en(sample_en),
        .slv_reg1(slv_reg1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing u_tim
       (.AR(SR),
        .E(u_pre_n_1),
        .can_rx_reg(can_rx_reg),
        .rx_sync_2(rx_sync_2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(u_tim_n_1),
        .sample_en(sample_en),
        .tq_tick(tq_tick));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core u_tx
       (.AR(SR),
        .D(D),
        .Q(Q),
        .ack_signal_core(ack_signal_core),
        .can_tx_port(can_tx_port),
        .\crc_reg_reg[0]_0 (\crc_reg_reg[0] ),
        .\data_shift_reg[0]_0 (u_tim_n_1),
        .\data_shift_reg[63]_0 (\data_shift_reg[63] ),
        .rx_sync_2(rx_sync_2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sample_en(sample_en),
        .tx_done_w(tx_done_w));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing
   (can_rx_reg,
    s00_axi_aresetn_0,
    sample_en,
    rx_sync_2,
    s00_axi_aclk,
    AR,
    s00_axi_aresetn,
    tq_tick,
    E);
  output can_rx_reg;
  output s00_axi_aresetn_0;
  output sample_en;
  input rx_sync_2;
  input s00_axi_aclk;
  input [0:0]AR;
  input s00_axi_aresetn;
  input tq_tick;
  input [0:0]E;

  wire [0:0]AR;
  wire [0:0]E;
  wire can_rx_reg;
  wire rx_sync_2;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire sample_en;
  wire [4:0]tq_cnt;
  wire \tq_cnt[0]_i_1_n_0 ;
  wire \tq_cnt[1]_i_1_n_0 ;
  wire \tq_cnt[2]_i_1_n_0 ;
  wire \tq_cnt[3]_i_1_n_0 ;
  wire \tq_cnt[4]_i_2_n_0 ;
  wire \tq_cnt[4]_i_3_n_0 ;
  wire tq_tick;

  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(tq_cnt[4]),
        .I1(tq_cnt[0]),
        .I2(tq_tick),
        .I3(tq_cnt[3]),
        .I4(tq_cnt[1]),
        .I5(tq_cnt[2]),
        .O(sample_en));
  FDPE can_rx_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_sync_2),
        .PRE(AR),
        .Q(can_rx_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \data_shift[63]_i_2__0 
       (.I0(sample_en),
        .I1(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00000133)) 
    \tq_cnt[0]_i_1 
       (.I0(tq_cnt[2]),
        .I1(\tq_cnt[4]_i_3_n_0 ),
        .I2(tq_cnt[3]),
        .I3(tq_cnt[4]),
        .I4(tq_cnt[0]),
        .O(\tq_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000013301330000)) 
    \tq_cnt[1]_i_1 
       (.I0(tq_cnt[2]),
        .I1(\tq_cnt[4]_i_3_n_0 ),
        .I2(tq_cnt[3]),
        .I3(tq_cnt[4]),
        .I4(tq_cnt[1]),
        .I5(tq_cnt[0]),
        .O(\tq_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h006A0000006A006A)) 
    \tq_cnt[2]_i_1 
       (.I0(tq_cnt[2]),
        .I1(tq_cnt[1]),
        .I2(tq_cnt[0]),
        .I3(tq_cnt[4]),
        .I4(rx_sync_2),
        .I5(can_rx_reg),
        .O(\tq_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \tq_cnt[3]_i_1 
       (.I0(\tq_cnt[4]_i_3_n_0 ),
        .I1(tq_cnt[4]),
        .I2(tq_cnt[2]),
        .I3(tq_cnt[1]),
        .I4(tq_cnt[0]),
        .I5(tq_cnt[3]),
        .O(\tq_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000040404)) 
    \tq_cnt[4]_i_2 
       (.I0(\tq_cnt[4]_i_3_n_0 ),
        .I1(tq_cnt[4]),
        .I2(tq_cnt[3]),
        .I3(tq_cnt[0]),
        .I4(tq_cnt[1]),
        .I5(tq_cnt[2]),
        .O(\tq_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tq_cnt[4]_i_3 
       (.I0(can_rx_reg),
        .I1(rx_sync_2),
        .O(\tq_cnt[4]_i_3_n_0 ));
  FDCE \tq_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\tq_cnt[0]_i_1_n_0 ),
        .Q(tq_cnt[0]));
  FDCE \tq_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\tq_cnt[1]_i_1_n_0 ),
        .Q(tq_cnt[1]));
  FDCE \tq_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\tq_cnt[2]_i_1_n_0 ),
        .Q(tq_cnt[2]));
  FDCE \tq_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\tq_cnt[3]_i_1_n_0 ),
        .Q(tq_cnt[3]));
  FDCE \tq_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\tq_cnt[4]_i_2_n_0 ),
        .Q(tq_cnt[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler
   (tq_tick,
    E,
    s00_axi_aclk,
    AR,
    rx_sync_2,
    can_rx_reg);
  output tq_tick;
  output [0:0]E;
  input s00_axi_aclk;
  input [0:0]AR;
  input rx_sync_2;
  input can_rx_reg;

  wire [0:0]AR;
  wire [0:0]E;
  wire can_rx_reg;
  wire rx_sync_2;
  wire s00_axi_aclk;
  wire \sys_clk_cnt[0]_i_1_n_0 ;
  wire \sys_clk_cnt[1]_i_1_n_0 ;
  wire \sys_clk_cnt[2]_i_1_n_0 ;
  wire \sys_clk_cnt_reg_n_0_[0] ;
  wire \sys_clk_cnt_reg_n_0_[1] ;
  wire \sys_clk_cnt_reg_n_0_[2] ;
  wire tq_tick;

  LUT2 #(
    .INIT(4'h1)) 
    \sys_clk_cnt[0]_i_1 
       (.I0(\sys_clk_cnt_reg_n_0_[2] ),
        .I1(\sys_clk_cnt_reg_n_0_[0] ),
        .O(\sys_clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \sys_clk_cnt[1]_i_1 
       (.I0(\sys_clk_cnt_reg_n_0_[1] ),
        .I1(\sys_clk_cnt_reg_n_0_[0] ),
        .I2(\sys_clk_cnt_reg_n_0_[2] ),
        .O(\sys_clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sys_clk_cnt[2]_i_1 
       (.I0(\sys_clk_cnt_reg_n_0_[1] ),
        .I1(\sys_clk_cnt_reg_n_0_[0] ),
        .I2(\sys_clk_cnt_reg_n_0_[2] ),
        .O(\sys_clk_cnt[2]_i_1_n_0 ));
  FDCE \sys_clk_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\sys_clk_cnt[0]_i_1_n_0 ),
        .Q(\sys_clk_cnt_reg_n_0_[0] ));
  FDCE \sys_clk_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\sys_clk_cnt[1]_i_1_n_0 ),
        .Q(\sys_clk_cnt_reg_n_0_[1] ));
  FDCE \sys_clk_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\sys_clk_cnt[2]_i_1_n_0 ),
        .Q(\sys_clk_cnt_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hBA)) 
    \tq_cnt[4]_i_1 
       (.I0(tq_tick),
        .I1(rx_sync_2),
        .I2(can_rx_reg),
        .O(E));
  FDCE tq_tick_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\sys_clk_cnt_reg_n_0_[2] ),
        .Q(tq_tick));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core
   (AR,
    rx_valid_w,
    ack_signal_core,
    E,
    \rx_id_reg[10]_0 ,
    \rx_data_reg[63]_0 ,
    s00_axi_aclk,
    rx_sync_2,
    sample_en,
    s00_axi_aresetn,
    slv_reg1);
  output [0:0]AR;
  output rx_valid_w;
  output ack_signal_core;
  output [0:0]E;
  output [14:0]\rx_id_reg[10]_0 ;
  output [63:0]\rx_data_reg[63]_0 ;
  input s00_axi_aclk;
  input rx_sync_2;
  input sample_en;
  input s00_axi_aresetn;
  input [0:0]slv_reg1;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3__0_n_0 ;
  wire \FSM_sequential_state[3]_i_4__0_n_0 ;
  wire \FSM_sequential_state[3]_i_5__0_n_0 ;
  wire ack_out_i_1_n_0;
  wire ack_signal_core;
  wire [6:0]bit_cnt;
  wire [3:1]bit_cnt1;
  wire \bit_cnt[0]_i_2__0_n_0 ;
  wire \bit_cnt[0]_i_3__0_n_0 ;
  wire \bit_cnt[0]_i_4_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[3]_i_2__0_n_0 ;
  wire \bit_cnt[3]_i_3__0_n_0 ;
  wire \bit_cnt[3]_i_4_n_0 ;
  wire \bit_cnt[3]_i_5_n_0 ;
  wire \bit_cnt[3]_i_6_n_0 ;
  wire \bit_cnt[4]_i_2__0_n_0 ;
  wire \bit_cnt[4]_i_3__0_n_0 ;
  wire \bit_cnt[4]_i_4_n_0 ;
  wire \bit_cnt[4]_i_5__0_n_0 ;
  wire \bit_cnt[5]_i_2__0_n_0 ;
  wire \bit_cnt[5]_i_3__0_n_0 ;
  wire \bit_cnt[6]_i_10__0_n_0 ;
  wire \bit_cnt[6]_i_1_n_0 ;
  wire \bit_cnt[6]_i_3__0_n_0 ;
  wire \bit_cnt[6]_i_4__0_n_0 ;
  wire \bit_cnt[6]_i_5__0_n_0 ;
  wire \bit_cnt[6]_i_6__0_n_0 ;
  wire \bit_cnt[6]_i_7__0_n_0 ;
  wire \bit_cnt[6]_i_8__0_n_0 ;
  wire \bit_cnt[6]_i_9_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire \bit_cnt_reg_n_0_[4] ;
  wire \bit_cnt_reg_n_0_[5] ;
  wire \bit_cnt_reg_n_0_[6] ;
  wire [63:0]data_shift;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[10]_i_1_n_0 ;
  wire \data_shift[11]_i_1_n_0 ;
  wire \data_shift[12]_i_1_n_0 ;
  wire \data_shift[13]_i_1_n_0 ;
  wire \data_shift[14]_i_1_n_0 ;
  wire \data_shift[15]_i_1_n_0 ;
  wire \data_shift[16]_i_1_n_0 ;
  wire \data_shift[17]_i_1_n_0 ;
  wire \data_shift[18]_i_1_n_0 ;
  wire \data_shift[19]_i_1_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[20]_i_1_n_0 ;
  wire \data_shift[21]_i_1_n_0 ;
  wire \data_shift[22]_i_1_n_0 ;
  wire \data_shift[23]_i_1_n_0 ;
  wire \data_shift[23]_i_2_n_0 ;
  wire \data_shift[24]_i_1_n_0 ;
  wire \data_shift[25]_i_1_n_0 ;
  wire \data_shift[26]_i_1_n_0 ;
  wire \data_shift[27]_i_1_n_0 ;
  wire \data_shift[28]_i_1_n_0 ;
  wire \data_shift[29]_i_1_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[30]_i_1_n_0 ;
  wire \data_shift[31]_i_1_n_0 ;
  wire \data_shift[31]_i_2_n_0 ;
  wire \data_shift[32]_i_1_n_0 ;
  wire \data_shift[33]_i_1_n_0 ;
  wire \data_shift[34]_i_1_n_0 ;
  wire \data_shift[35]_i_1_n_0 ;
  wire \data_shift[36]_i_1_n_0 ;
  wire \data_shift[37]_i_1_n_0 ;
  wire \data_shift[38]_i_1_n_0 ;
  wire \data_shift[39]_i_1_n_0 ;
  wire \data_shift[39]_i_2_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[40]_i_1_n_0 ;
  wire \data_shift[41]_i_1_n_0 ;
  wire \data_shift[42]_i_1_n_0 ;
  wire \data_shift[43]_i_1_n_0 ;
  wire \data_shift[44]_i_1_n_0 ;
  wire \data_shift[45]_i_1_n_0 ;
  wire \data_shift[46]_i_1_n_0 ;
  wire \data_shift[47]_i_1_n_0 ;
  wire \data_shift[47]_i_2_n_0 ;
  wire \data_shift[48]_i_1_n_0 ;
  wire \data_shift[49]_i_1_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[50]_i_1_n_0 ;
  wire \data_shift[51]_i_1_n_0 ;
  wire \data_shift[52]_i_1_n_0 ;
  wire \data_shift[53]_i_1_n_0 ;
  wire \data_shift[54]_i_1_n_0 ;
  wire \data_shift[55]_i_1_n_0 ;
  wire \data_shift[55]_i_2_n_0 ;
  wire \data_shift[56]_i_1_n_0 ;
  wire \data_shift[56]_i_2_n_0 ;
  wire \data_shift[57]_i_1_n_0 ;
  wire \data_shift[57]_i_2_n_0 ;
  wire \data_shift[58]_i_1_n_0 ;
  wire \data_shift[58]_i_2_n_0 ;
  wire \data_shift[59]_i_1_n_0 ;
  wire \data_shift[59]_i_2_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[60]_i_1_n_0 ;
  wire \data_shift[60]_i_2_n_0 ;
  wire \data_shift[61]_i_1_n_0 ;
  wire \data_shift[61]_i_2_n_0 ;
  wire \data_shift[62]_i_1_n_0 ;
  wire \data_shift[62]_i_2_n_0 ;
  wire \data_shift[63]_i_1_n_0 ;
  wire \data_shift[63]_i_2_n_0 ;
  wire \data_shift[63]_i_3__0_n_0 ;
  wire \data_shift[63]_i_4_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[7]_i_1_n_0 ;
  wire \data_shift[8]_i_1_n_0 ;
  wire \data_shift[9]_i_1_n_0 ;
  wire \dlc_shift[0]_i_1_n_0 ;
  wire \dlc_shift[0]_i_2_n_0 ;
  wire \dlc_shift[1]_i_1_n_0 ;
  wire \dlc_shift[1]_i_2_n_0 ;
  wire \dlc_shift[2]_i_1_n_0 ;
  wire \dlc_shift[2]_i_2_n_0 ;
  wire \dlc_shift[3]_i_1_n_0 ;
  wire \dlc_shift[3]_i_2_n_0 ;
  wire \dlc_shift[3]_i_3_n_0 ;
  wire \dlc_shift_reg_n_0_[0] ;
  wire [10:0]id_shift;
  wire \id_shift[0]_i_1_n_0 ;
  wire \id_shift[10]_i_1_n_0 ;
  wire \id_shift[10]_i_2_n_0 ;
  wire \id_shift[10]_i_3_n_0 ;
  wire \id_shift[1]_i_1_n_0 ;
  wire \id_shift[2]_i_1_n_0 ;
  wire \id_shift[3]_i_1_n_0 ;
  wire \id_shift[4]_i_1_n_0 ;
  wire \id_shift[4]_i_2_n_0 ;
  wire \id_shift[5]_i_1_n_0 ;
  wire \id_shift[6]_i_1_n_0 ;
  wire \id_shift[6]_i_2_n_0 ;
  wire \id_shift[7]_i_1_n_0 ;
  wire \id_shift[7]_i_2_n_0 ;
  wire \id_shift[7]_i_3_n_0 ;
  wire \id_shift[8]_i_1_n_0 ;
  wire \id_shift[9]_i_1_n_0 ;
  wire last_bit_val__0;
  wire last_bit_val_i_1__0_n_0;
  wire [63:0]\rx_data_reg[63]_0 ;
  wire rx_done_tick_i_1_n_0;
  wire \rx_id[10]_i_1_n_0 ;
  wire [14:0]\rx_id_reg[10]_0 ;
  wire rx_sync_2;
  wire rx_valid_w;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sample_en;
  wire [0:0]slv_reg1;
  wire [3:0]state__0;
  wire [3:1]state__1;
  wire \stuff_cnt[0]_i_1__0_n_0 ;
  wire \stuff_cnt[0]_i_2__0_n_0 ;
  wire \stuff_cnt[0]_i_3_n_0 ;
  wire \stuff_cnt[1]_i_1__0_n_0 ;
  wire \stuff_cnt[2]_i_1__0_n_0 ;
  wire \stuff_cnt[2]_i_2__0_n_0 ;
  wire \stuff_cnt[2]_i_3_n_0 ;
  wire \stuff_cnt[2]_i_4_n_0 ;
  wire \stuff_cnt_reg_n_0_[0] ;
  wire \stuff_cnt_reg_n_0_[1] ;
  wire \stuff_cnt_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(bit_cnt1[2]),
        .I1(rx_sync_2),
        .I2(bit_cnt1[1]),
        .I3(bit_cnt1[3]),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'h544F000000000000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state[3]_i_3__0_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_4__0_n_0 ),
        .I5(sample_en),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state[3]_i_2__0 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .O(state__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_state[3]_i_3__0 
       (.I0(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAFFFBFFFB)) 
    \FSM_sequential_state[3]_i_4__0 
       (.I0(state__0[3]),
        .I1(rx_sync_2),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_3__0_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[3]_i_5__0 
       (.I0(\stuff_cnt_reg_n_0_[1] ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_5__0_n_0 ));
  (* FSM_ENCODED_STATES = "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__1[1]),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__1[2]),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__1[3]),
        .Q(state__0[3]));
  LUT6 #(
    .INIT(64'hFF7FFF7F00000202)) 
    ack_out_i_1
       (.I0(sample_en),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(ack_signal_core),
        .O(ack_out_i_1_n_0));
  FDPE ack_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ack_out_i_1_n_0),
        .PRE(AR),
        .Q(ack_signal_core));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT6 #(
    .INIT(64'h00000000DFD5FFFD)) 
    \bit_cnt[0]_i_1__0 
       (.I0(\bit_cnt[0]_i_2__0_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\bit_cnt[0]_i_3__0_n_0 ),
        .I5(\bit_cnt[0]_i_4_n_0 ),
        .O(bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \bit_cnt[0]_i_2__0 
       (.I0(bit_cnt1[3]),
        .I1(bit_cnt1[1]),
        .I2(rx_sync_2),
        .I3(bit_cnt1[2]),
        .I4(state__0[1]),
        .O(\bit_cnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bit_cnt[0]_i_3__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[5] ),
        .I2(\bit_cnt_reg_n_0_[6] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[0]_i_4 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(state__0[3]),
        .O(\bit_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05FF0001000105FF)) 
    \bit_cnt[1]_i_1__0 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(bit_cnt[1]));
  LUT6 #(
    .INIT(64'hF0F0F00700000000)) 
    \bit_cnt[2]_i_1__0 
       (.I0(\bit_cnt[2]_i_2_n_0 ),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt[6]_i_5__0_n_0 ),
        .O(bit_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \bit_cnt[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0D0C0D0CFF0C0D)) 
    \bit_cnt[3]_i_1__0 
       (.I0(\bit_cnt[3]_i_2__0_n_0 ),
        .I1(\bit_cnt[3]_i_3__0_n_0 ),
        .I2(state__0[3]),
        .I3(\bit_cnt[3]_i_4_n_0 ),
        .I4(\bit_cnt[3]_i_5_n_0 ),
        .I5(\bit_cnt[3]_i_6_n_0 ),
        .O(bit_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0CBC00B0)) 
    \bit_cnt[3]_i_2__0 
       (.I0(\bit_cnt[6]_i_3__0_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(\bit_cnt[3]_i_6_n_0 ),
        .O(\bit_cnt[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h010101C101010101)) 
    \bit_cnt[3]_i_3__0 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(rx_sync_2),
        .I5(\bit_cnt[0]_i_3__0_n_0 ),
        .O(\bit_cnt[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \bit_cnt[3]_i_4 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[3]_i_5 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .O(\bit_cnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_cnt[3]_i_6 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h82A080A082A082A0)) 
    \bit_cnt[4]_i_1__0 
       (.I0(\bit_cnt[6]_i_5__0_n_0 ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt[4]_i_2__0_n_0 ),
        .I4(\bit_cnt[4]_i_3__0_n_0 ),
        .I5(\bit_cnt[4]_i_4_n_0 ),
        .O(bit_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_cnt[4]_i_2__0 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF155)) 
    \bit_cnt[4]_i_3__0 
       (.I0(\bit_cnt[4]_i_5__0_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(\bit_cnt_reg_n_0_[6] ),
        .I5(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFFFFFFFF57FF)) 
    \bit_cnt[4]_i_4 
       (.I0(state__0[1]),
        .I1(bit_cnt1[2]),
        .I2(bit_cnt1[3]),
        .I3(state__0[0]),
        .I4(rx_sync_2),
        .I5(bit_cnt1[1]),
        .O(\bit_cnt[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h01000101)) 
    \bit_cnt[4]_i_5__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5522552000000000)) 
    \bit_cnt[5]_i_1__0 
       (.I0(\bit_cnt[5]_i_2__0_n_0 ),
        .I1(\bit_cnt[5]_i_3__0_n_0 ),
        .I2(state__0[0]),
        .I3(\bit_cnt_reg_n_0_[5] ),
        .I4(\bit_cnt_reg_n_0_[6] ),
        .I5(\bit_cnt[6]_i_5__0_n_0 ),
        .O(bit_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_cnt[5]_i_2__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF56)) 
    \bit_cnt[5]_i_3__0 
       (.I0(bit_cnt1[2]),
        .I1(bit_cnt1[1]),
        .I2(rx_sync_2),
        .I3(\bit_cnt[0]_i_2__0_n_0 ),
        .I4(\bit_cnt_reg_n_0_[6] ),
        .I5(state__0[2]),
        .O(\bit_cnt[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000000000000)) 
    \bit_cnt[6]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\bit_cnt[6]_i_3__0_n_0 ),
        .I3(\bit_cnt[6]_i_4__0_n_0 ),
        .I4(sample_en),
        .I5(s00_axi_aresetn),
        .O(\bit_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \bit_cnt[6]_i_10__0 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[6]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0800080AAAAAAAA)) 
    \bit_cnt[6]_i_2__0 
       (.I0(\bit_cnt[6]_i_5__0_n_0 ),
        .I1(\bit_cnt[6]_i_6__0_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(\bit_cnt[6]_i_3__0_n_0 ),
        .I5(\bit_cnt[6]_i_7__0_n_0 ),
        .O(bit_cnt[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bit_cnt[6]_i_3__0 
       (.I0(\bit_cnt[6]_i_8__0_n_0 ),
        .I1(\bit_cnt_reg_n_0_[4] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0003000303030311)) 
    \bit_cnt[6]_i_4__0 
       (.I0(rx_sync_2),
        .I1(state__0[3]),
        .I2(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\bit_cnt[6]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \bit_cnt[6]_i_5__0 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(\bit_cnt[6]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \bit_cnt[6]_i_6__0 
       (.I0(bit_cnt1[3]),
        .I1(\bit_cnt[6]_i_9_n_0 ),
        .I2(\bit_cnt[6]_i_8__0_n_0 ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(state__0[1]),
        .I5(\bit_cnt[6]_i_10__0_n_0 ),
        .O(\bit_cnt[6]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \bit_cnt[6]_i_7__0 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt[4]_i_2__0_n_0 ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[6] ),
        .O(\bit_cnt[6]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[6]_i_8__0 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .I1(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[6]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bit_cnt[6]_i_9 
       (.I0(bit_cnt1[1]),
        .I1(rx_sync_2),
        .I2(bit_cnt1[2]),
        .O(\bit_cnt[6]_i_9_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[0]),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[1]),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[2]),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[3]),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[4]),
        .Q(\bit_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[5]),
        .Q(\bit_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1_n_0 ),
        .D(bit_cnt[6]),
        .Q(\bit_cnt_reg_n_0_[6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[0]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[0]),
        .O(\data_shift[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[10]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[58]_i_2_n_0 ),
        .I3(data_shift[10]),
        .O(\data_shift[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[11]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[59]_i_2_n_0 ),
        .I3(data_shift[11]),
        .O(\data_shift[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[12]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[60]_i_2_n_0 ),
        .I3(data_shift[12]),
        .O(\data_shift[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[13]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[61]_i_2_n_0 ),
        .I3(data_shift[13]),
        .O(\data_shift[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[14]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[62]_i_2_n_0 ),
        .I3(data_shift[14]),
        .O(\data_shift[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[15]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[63]_i_2_n_0 ),
        .I3(data_shift[15]),
        .O(\data_shift[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[16]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[16]),
        .O(\data_shift[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[17]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[17]),
        .O(\data_shift[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[18]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[18]),
        .O(\data_shift[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[19]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[19]),
        .O(\data_shift[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[1]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[1]),
        .O(\data_shift[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[20]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[20]),
        .O(\data_shift[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[21]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[21]),
        .O(\data_shift[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[22]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[62]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[22]),
        .O(\data_shift[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[23]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[23]_i_2_n_0 ),
        .I3(data_shift[23]),
        .O(\data_shift[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \data_shift[23]_i_2 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[24]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[24]),
        .O(\data_shift[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[25]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[25]),
        .O(\data_shift[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[26]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[26]),
        .O(\data_shift[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[27]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[27]),
        .O(\data_shift[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[28]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[28]),
        .O(\data_shift[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[29]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[29]),
        .O(\data_shift[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[2]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[2]),
        .O(\data_shift[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[30]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[62]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[30]),
        .O(\data_shift[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[31]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[31]_i_2_n_0 ),
        .I3(data_shift[31]),
        .O(\data_shift[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \data_shift[31]_i_2 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[32]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[32]),
        .O(\data_shift[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[33]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[33]),
        .O(\data_shift[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[34]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[34]),
        .O(\data_shift[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[35]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[35]),
        .O(\data_shift[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[36]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[36]),
        .O(\data_shift[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[37]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[37]),
        .O(\data_shift[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[38]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[62]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[38]),
        .O(\data_shift[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[39]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[39]_i_2_n_0 ),
        .I3(data_shift[39]),
        .O(\data_shift[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \data_shift[39]_i_2 
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[5] ),
        .I3(\bit_cnt_reg_n_0_[6] ),
        .O(\data_shift[39]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[3]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[3]),
        .O(\data_shift[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[40]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[40]),
        .O(\data_shift[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[41]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[41]),
        .O(\data_shift[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[42]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[42]),
        .O(\data_shift[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[43]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[43]),
        .O(\data_shift[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[44]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[44]),
        .O(\data_shift[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[45]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[45]),
        .O(\data_shift[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[46]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[62]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[46]),
        .O(\data_shift[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[47]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[47]_i_2_n_0 ),
        .I3(data_shift[47]),
        .O(\data_shift[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \data_shift[47]_i_2 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[47]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[48]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[56]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[48]),
        .O(\data_shift[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[49]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[57]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[49]),
        .O(\data_shift[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[4]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[4]),
        .O(\data_shift[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[50]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[58]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[50]),
        .O(\data_shift[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[51]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[59]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[51]),
        .O(\data_shift[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[52]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[60]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[52]),
        .O(\data_shift[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[53]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[53]),
        .O(\data_shift[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[54]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[62]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[54]),
        .O(\data_shift[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_shift[55]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[55]_i_2_n_0 ),
        .I3(data_shift[55]),
        .O(\data_shift[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \data_shift[55]_i_2 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[55]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[56]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[56]_i_2_n_0 ),
        .I3(data_shift[56]),
        .O(\data_shift[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_shift[56]_i_2 
       (.I0(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[56]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[57]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[57]_i_2_n_0 ),
        .I3(data_shift[57]),
        .O(\data_shift[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \data_shift[57]_i_2 
       (.I0(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[57]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[58]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[58]_i_2_n_0 ),
        .I3(data_shift[58]),
        .O(\data_shift[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \data_shift[58]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[58]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[59]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[59]_i_2_n_0 ),
        .I3(data_shift[59]),
        .O(\data_shift[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_shift[59]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[59]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[5]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[61]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(data_shift[5]),
        .O(\data_shift[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[60]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[60]_i_2_n_0 ),
        .I3(data_shift[60]),
        .O(\data_shift[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_shift[60]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[60]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[61]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[61]_i_2_n_0 ),
        .I3(data_shift[61]),
        .O(\data_shift[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \data_shift[61]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[61]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[62]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_3__0_n_0 ),
        .I2(\data_shift[62]_i_2_n_0 ),
        .I3(data_shift[62]),
        .O(\data_shift[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_shift[62]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[62]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[63]_i_1 
       (.I0(rx_sync_2),
        .I1(\data_shift[63]_i_2_n_0 ),
        .I2(\data_shift[63]_i_3__0_n_0 ),
        .I3(data_shift[63]),
        .O(\data_shift[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \data_shift[63]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[3]_i_5__0_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\data_shift[63]_i_4_n_0 ),
        .O(\data_shift[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \data_shift[63]_i_3__0 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[63]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \data_shift[63]_i_4 
       (.I0(s00_axi_aresetn),
        .I1(sample_en),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_shift[63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[6]_i_1 
       (.I0(rx_sync_2),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\data_shift[62]_i_2_n_0 ),
        .I3(data_shift[6]),
        .O(\data_shift[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[7]_i_1 
       (.I0(rx_sync_2),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\data_shift[63]_i_2_n_0 ),
        .I3(data_shift[7]),
        .O(\data_shift[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[8]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[56]_i_2_n_0 ),
        .I3(data_shift[8]),
        .O(\data_shift[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_shift[9]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[10]_i_2_n_0 ),
        .I2(\data_shift[57]_i_2_n_0 ),
        .I3(data_shift[9]),
        .O(\data_shift[9]_i_1_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(data_shift[0]),
        .R(1'b0));
  FDRE \data_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[10]_i_1_n_0 ),
        .Q(data_shift[10]),
        .R(1'b0));
  FDRE \data_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[11]_i_1_n_0 ),
        .Q(data_shift[11]),
        .R(1'b0));
  FDRE \data_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[12]_i_1_n_0 ),
        .Q(data_shift[12]),
        .R(1'b0));
  FDRE \data_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[13]_i_1_n_0 ),
        .Q(data_shift[13]),
        .R(1'b0));
  FDRE \data_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[14]_i_1_n_0 ),
        .Q(data_shift[14]),
        .R(1'b0));
  FDRE \data_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[15]_i_1_n_0 ),
        .Q(data_shift[15]),
        .R(1'b0));
  FDRE \data_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[16]_i_1_n_0 ),
        .Q(data_shift[16]),
        .R(1'b0));
  FDRE \data_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[17]_i_1_n_0 ),
        .Q(data_shift[17]),
        .R(1'b0));
  FDRE \data_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[18]_i_1_n_0 ),
        .Q(data_shift[18]),
        .R(1'b0));
  FDRE \data_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[19]_i_1_n_0 ),
        .Q(data_shift[19]),
        .R(1'b0));
  FDRE \data_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(data_shift[1]),
        .R(1'b0));
  FDRE \data_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[20]_i_1_n_0 ),
        .Q(data_shift[20]),
        .R(1'b0));
  FDRE \data_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[21]_i_1_n_0 ),
        .Q(data_shift[21]),
        .R(1'b0));
  FDRE \data_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[22]_i_1_n_0 ),
        .Q(data_shift[22]),
        .R(1'b0));
  FDRE \data_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[23]_i_1_n_0 ),
        .Q(data_shift[23]),
        .R(1'b0));
  FDRE \data_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[24]_i_1_n_0 ),
        .Q(data_shift[24]),
        .R(1'b0));
  FDRE \data_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[25]_i_1_n_0 ),
        .Q(data_shift[25]),
        .R(1'b0));
  FDRE \data_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[26]_i_1_n_0 ),
        .Q(data_shift[26]),
        .R(1'b0));
  FDRE \data_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[27]_i_1_n_0 ),
        .Q(data_shift[27]),
        .R(1'b0));
  FDRE \data_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[28]_i_1_n_0 ),
        .Q(data_shift[28]),
        .R(1'b0));
  FDRE \data_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[29]_i_1_n_0 ),
        .Q(data_shift[29]),
        .R(1'b0));
  FDRE \data_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(data_shift[2]),
        .R(1'b0));
  FDRE \data_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[30]_i_1_n_0 ),
        .Q(data_shift[30]),
        .R(1'b0));
  FDRE \data_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[31]_i_1_n_0 ),
        .Q(data_shift[31]),
        .R(1'b0));
  FDRE \data_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[32]_i_1_n_0 ),
        .Q(data_shift[32]),
        .R(1'b0));
  FDRE \data_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[33]_i_1_n_0 ),
        .Q(data_shift[33]),
        .R(1'b0));
  FDRE \data_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[34]_i_1_n_0 ),
        .Q(data_shift[34]),
        .R(1'b0));
  FDRE \data_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[35]_i_1_n_0 ),
        .Q(data_shift[35]),
        .R(1'b0));
  FDRE \data_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[36]_i_1_n_0 ),
        .Q(data_shift[36]),
        .R(1'b0));
  FDRE \data_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[37]_i_1_n_0 ),
        .Q(data_shift[37]),
        .R(1'b0));
  FDRE \data_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[38]_i_1_n_0 ),
        .Q(data_shift[38]),
        .R(1'b0));
  FDRE \data_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[39]_i_1_n_0 ),
        .Q(data_shift[39]),
        .R(1'b0));
  FDRE \data_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(data_shift[3]),
        .R(1'b0));
  FDRE \data_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[40]_i_1_n_0 ),
        .Q(data_shift[40]),
        .R(1'b0));
  FDRE \data_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[41]_i_1_n_0 ),
        .Q(data_shift[41]),
        .R(1'b0));
  FDRE \data_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[42]_i_1_n_0 ),
        .Q(data_shift[42]),
        .R(1'b0));
  FDRE \data_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[43]_i_1_n_0 ),
        .Q(data_shift[43]),
        .R(1'b0));
  FDRE \data_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[44]_i_1_n_0 ),
        .Q(data_shift[44]),
        .R(1'b0));
  FDRE \data_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[45]_i_1_n_0 ),
        .Q(data_shift[45]),
        .R(1'b0));
  FDRE \data_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[46]_i_1_n_0 ),
        .Q(data_shift[46]),
        .R(1'b0));
  FDRE \data_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[47]_i_1_n_0 ),
        .Q(data_shift[47]),
        .R(1'b0));
  FDRE \data_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[48]_i_1_n_0 ),
        .Q(data_shift[48]),
        .R(1'b0));
  FDRE \data_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[49]_i_1_n_0 ),
        .Q(data_shift[49]),
        .R(1'b0));
  FDRE \data_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(data_shift[4]),
        .R(1'b0));
  FDRE \data_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[50]_i_1_n_0 ),
        .Q(data_shift[50]),
        .R(1'b0));
  FDRE \data_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[51]_i_1_n_0 ),
        .Q(data_shift[51]),
        .R(1'b0));
  FDRE \data_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[52]_i_1_n_0 ),
        .Q(data_shift[52]),
        .R(1'b0));
  FDRE \data_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[53]_i_1_n_0 ),
        .Q(data_shift[53]),
        .R(1'b0));
  FDRE \data_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[54]_i_1_n_0 ),
        .Q(data_shift[54]),
        .R(1'b0));
  FDRE \data_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[55]_i_1_n_0 ),
        .Q(data_shift[55]),
        .R(1'b0));
  FDRE \data_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[56]_i_1_n_0 ),
        .Q(data_shift[56]),
        .R(1'b0));
  FDRE \data_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[57]_i_1_n_0 ),
        .Q(data_shift[57]),
        .R(1'b0));
  FDRE \data_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[58]_i_1_n_0 ),
        .Q(data_shift[58]),
        .R(1'b0));
  FDRE \data_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[59]_i_1_n_0 ),
        .Q(data_shift[59]),
        .R(1'b0));
  FDRE \data_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(data_shift[5]),
        .R(1'b0));
  FDRE \data_shift_reg[60] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[60]_i_1_n_0 ),
        .Q(data_shift[60]),
        .R(1'b0));
  FDRE \data_shift_reg[61] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[61]_i_1_n_0 ),
        .Q(data_shift[61]),
        .R(1'b0));
  FDRE \data_shift_reg[62] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[62]_i_1_n_0 ),
        .Q(data_shift[62]),
        .R(1'b0));
  FDRE \data_shift_reg[63] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[63]_i_1_n_0 ),
        .Q(data_shift[63]),
        .R(1'b0));
  FDRE \data_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(data_shift[6]),
        .R(1'b0));
  FDRE \data_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[7]_i_1_n_0 ),
        .Q(data_shift[7]),
        .R(1'b0));
  FDRE \data_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[8]_i_1_n_0 ),
        .Q(data_shift[8]),
        .R(1'b0));
  FDRE \data_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\data_shift[9]_i_1_n_0 ),
        .Q(data_shift[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \dlc_shift[0]_i_1 
       (.I0(rx_sync_2),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\dlc_shift[0]_i_2_n_0 ),
        .I3(\dlc_shift[3]_i_3_n_0 ),
        .I4(\dlc_shift_reg_n_0_[0] ),
        .O(\dlc_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010100010101)) 
    \dlc_shift[0]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\stuff_cnt_reg_n_0_[2] ),
        .I4(\stuff_cnt_reg_n_0_[0] ),
        .I5(\stuff_cnt_reg_n_0_[1] ),
        .O(\dlc_shift[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \dlc_shift[1]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[3]_i_3_n_0 ),
        .I2(\dlc_shift[1]_i_2_n_0 ),
        .I3(\bit_cnt[3]_i_6_n_0 ),
        .I4(bit_cnt1[1]),
        .O(\dlc_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEFEFEFEFEF)) 
    \dlc_shift[1]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\stuff_cnt_reg_n_0_[1] ),
        .I4(\stuff_cnt_reg_n_0_[0] ),
        .I5(\stuff_cnt_reg_n_0_[2] ),
        .O(\dlc_shift[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \dlc_shift[2]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[3]_i_3_n_0 ),
        .I2(\dlc_shift[2]_i_2_n_0 ),
        .I3(\bit_cnt[3]_i_6_n_0 ),
        .I4(bit_cnt1[2]),
        .O(\dlc_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F70000)) 
    \dlc_shift[2]_i_2 
       (.I0(\stuff_cnt_reg_n_0_[2] ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\dlc_shift[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \dlc_shift[3]_i_1 
       (.I0(rx_sync_2),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\dlc_shift[3]_i_2_n_0 ),
        .I3(\dlc_shift[3]_i_3_n_0 ),
        .I4(bit_cnt1[3]),
        .O(\dlc_shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444044400000000)) 
    \dlc_shift[3]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\stuff_cnt_reg_n_0_[2] ),
        .I3(\stuff_cnt_reg_n_0_[0] ),
        .I4(\stuff_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(\dlc_shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \dlc_shift[3]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(sample_en),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\dlc_shift[3]_i_3_n_0 ));
  FDRE \dlc_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\dlc_shift[0]_i_1_n_0 ),
        .Q(\dlc_shift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dlc_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\dlc_shift[1]_i_1_n_0 ),
        .Q(bit_cnt1[1]),
        .R(1'b0));
  FDRE \dlc_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\dlc_shift[2]_i_1_n_0 ),
        .Q(bit_cnt1[2]),
        .R(1'b0));
  FDRE \dlc_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\dlc_shift[3]_i_1_n_0 ),
        .Q(bit_cnt1[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \id_shift[0]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[0]_i_2_n_0 ),
        .I2(\id_shift[7]_i_3_n_0 ),
        .I3(id_shift[0]),
        .O(\id_shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \id_shift[10]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[2]_i_2_n_0 ),
        .I2(\id_shift[10]_i_2_n_0 ),
        .I3(\id_shift[10]_i_3_n_0 ),
        .I4(id_shift[10]),
        .O(\id_shift[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \id_shift[10]_i_2 
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[5] ),
        .I3(\bit_cnt_reg_n_0_[6] ),
        .O(\id_shift[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \id_shift[10]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(sample_en),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\id_shift[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \id_shift[1]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[1]_i_2_n_0 ),
        .I2(\bit_cnt[3]_i_6_n_0 ),
        .I3(\id_shift[10]_i_3_n_0 ),
        .I4(id_shift[1]),
        .O(\id_shift[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \id_shift[2]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[2]_i_2_n_0 ),
        .I2(\id_shift[7]_i_3_n_0 ),
        .I3(id_shift[2]),
        .O(\id_shift[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \id_shift[3]_i_1 
       (.I0(rx_sync_2),
        .I1(\bit_cnt[3]_i_6_n_0 ),
        .I2(\dlc_shift[3]_i_2_n_0 ),
        .I3(\id_shift[10]_i_3_n_0 ),
        .I4(id_shift[3]),
        .O(\id_shift[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \id_shift[4]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[7]_i_3_n_0 ),
        .I2(\id_shift[4]_i_2_n_0 ),
        .I3(id_shift[4]),
        .O(\id_shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF08FFFFFFFF)) 
    \id_shift[4]_i_2 
       (.I0(\stuff_cnt_reg_n_0_[2] ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\id_shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \id_shift[5]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\id_shift[7]_i_2_n_0 ),
        .I5(id_shift[5]),
        .O(\id_shift[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \id_shift[6]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[7]_i_3_n_0 ),
        .I2(\id_shift[6]_i_2_n_0 ),
        .I3(id_shift[6]),
        .O(\id_shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF08FFFFFFFFFF)) 
    \id_shift[6]_i_2 
       (.I0(\stuff_cnt_reg_n_0_[2] ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(\id_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \id_shift[7]_i_1 
       (.I0(rx_sync_2),
        .I1(\id_shift[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\id_shift[7]_i_3_n_0 ),
        .I5(id_shift[7]),
        .O(\id_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    \id_shift[7]_i_2 
       (.I0(\stuff_cnt_reg_n_0_[2] ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\id_shift[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \id_shift[7]_i_3 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[4] ),
        .I2(\bit_cnt_reg_n_0_[6] ),
        .I3(\bit_cnt_reg_n_0_[5] ),
        .I4(\id_shift[10]_i_3_n_0 ),
        .O(\id_shift[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \id_shift[8]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[0]_i_2_n_0 ),
        .I2(\id_shift[10]_i_2_n_0 ),
        .I3(\id_shift[10]_i_3_n_0 ),
        .I4(id_shift[8]),
        .O(\id_shift[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \id_shift[9]_i_1 
       (.I0(rx_sync_2),
        .I1(\dlc_shift[1]_i_2_n_0 ),
        .I2(\id_shift[10]_i_2_n_0 ),
        .I3(\id_shift[10]_i_3_n_0 ),
        .I4(id_shift[9]),
        .O(\id_shift[9]_i_1_n_0 ));
  FDRE \id_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[0]_i_1_n_0 ),
        .Q(id_shift[0]),
        .R(1'b0));
  FDRE \id_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[10]_i_1_n_0 ),
        .Q(id_shift[10]),
        .R(1'b0));
  FDRE \id_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[1]_i_1_n_0 ),
        .Q(id_shift[1]),
        .R(1'b0));
  FDRE \id_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[2]_i_1_n_0 ),
        .Q(id_shift[2]),
        .R(1'b0));
  FDRE \id_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[3]_i_1_n_0 ),
        .Q(id_shift[3]),
        .R(1'b0));
  FDRE \id_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[4]_i_1_n_0 ),
        .Q(id_shift[4]),
        .R(1'b0));
  FDRE \id_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[5]_i_1_n_0 ),
        .Q(id_shift[5]),
        .R(1'b0));
  FDRE \id_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[6]_i_1_n_0 ),
        .Q(id_shift[6]),
        .R(1'b0));
  FDRE \id_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[7]_i_1_n_0 ),
        .Q(id_shift[7]),
        .R(1'b0));
  FDRE \id_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[8]_i_1_n_0 ),
        .Q(id_shift[8]),
        .R(1'b0));
  FDRE \id_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\id_shift[9]_i_1_n_0 ),
        .Q(id_shift[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDDDDD88888880)) 
    last_bit_val_i_1__0
       (.I0(\stuff_cnt[2]_i_4_n_0 ),
        .I1(rx_sync_2),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(last_bit_val__0),
        .O(last_bit_val_i_1__0_n_0));
  FDPE last_bit_val_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(last_bit_val_i_1__0_n_0),
        .PRE(AR),
        .Q(last_bit_val__0));
  FDCE \rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[0]),
        .Q(\rx_data_reg[63]_0 [0]));
  FDCE \rx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[10]),
        .Q(\rx_data_reg[63]_0 [10]));
  FDCE \rx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[11]),
        .Q(\rx_data_reg[63]_0 [11]));
  FDCE \rx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[12]),
        .Q(\rx_data_reg[63]_0 [12]));
  FDCE \rx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[13]),
        .Q(\rx_data_reg[63]_0 [13]));
  FDCE \rx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[14]),
        .Q(\rx_data_reg[63]_0 [14]));
  FDCE \rx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[15]),
        .Q(\rx_data_reg[63]_0 [15]));
  FDCE \rx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[16]),
        .Q(\rx_data_reg[63]_0 [16]));
  FDCE \rx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[17]),
        .Q(\rx_data_reg[63]_0 [17]));
  FDCE \rx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[18]),
        .Q(\rx_data_reg[63]_0 [18]));
  FDCE \rx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[19]),
        .Q(\rx_data_reg[63]_0 [19]));
  FDCE \rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[1]),
        .Q(\rx_data_reg[63]_0 [1]));
  FDCE \rx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[20]),
        .Q(\rx_data_reg[63]_0 [20]));
  FDCE \rx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[21]),
        .Q(\rx_data_reg[63]_0 [21]));
  FDCE \rx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[22]),
        .Q(\rx_data_reg[63]_0 [22]));
  FDCE \rx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[23]),
        .Q(\rx_data_reg[63]_0 [23]));
  FDCE \rx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[24]),
        .Q(\rx_data_reg[63]_0 [24]));
  FDCE \rx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[25]),
        .Q(\rx_data_reg[63]_0 [25]));
  FDCE \rx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[26]),
        .Q(\rx_data_reg[63]_0 [26]));
  FDCE \rx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[27]),
        .Q(\rx_data_reg[63]_0 [27]));
  FDCE \rx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[28]),
        .Q(\rx_data_reg[63]_0 [28]));
  FDCE \rx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[29]),
        .Q(\rx_data_reg[63]_0 [29]));
  FDCE \rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[2]),
        .Q(\rx_data_reg[63]_0 [2]));
  FDCE \rx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[30]),
        .Q(\rx_data_reg[63]_0 [30]));
  FDCE \rx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[31]),
        .Q(\rx_data_reg[63]_0 [31]));
  FDCE \rx_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[32]),
        .Q(\rx_data_reg[63]_0 [32]));
  FDCE \rx_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[33]),
        .Q(\rx_data_reg[63]_0 [33]));
  FDCE \rx_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[34]),
        .Q(\rx_data_reg[63]_0 [34]));
  FDCE \rx_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[35]),
        .Q(\rx_data_reg[63]_0 [35]));
  FDCE \rx_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[36]),
        .Q(\rx_data_reg[63]_0 [36]));
  FDCE \rx_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[37]),
        .Q(\rx_data_reg[63]_0 [37]));
  FDCE \rx_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[38]),
        .Q(\rx_data_reg[63]_0 [38]));
  FDCE \rx_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[39]),
        .Q(\rx_data_reg[63]_0 [39]));
  FDCE \rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[3]),
        .Q(\rx_data_reg[63]_0 [3]));
  FDCE \rx_data_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[40]),
        .Q(\rx_data_reg[63]_0 [40]));
  FDCE \rx_data_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[41]),
        .Q(\rx_data_reg[63]_0 [41]));
  FDCE \rx_data_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[42]),
        .Q(\rx_data_reg[63]_0 [42]));
  FDCE \rx_data_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[43]),
        .Q(\rx_data_reg[63]_0 [43]));
  FDCE \rx_data_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[44]),
        .Q(\rx_data_reg[63]_0 [44]));
  FDCE \rx_data_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[45]),
        .Q(\rx_data_reg[63]_0 [45]));
  FDCE \rx_data_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[46]),
        .Q(\rx_data_reg[63]_0 [46]));
  FDCE \rx_data_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[47]),
        .Q(\rx_data_reg[63]_0 [47]));
  FDCE \rx_data_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[48]),
        .Q(\rx_data_reg[63]_0 [48]));
  FDCE \rx_data_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[49]),
        .Q(\rx_data_reg[63]_0 [49]));
  FDCE \rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[4]),
        .Q(\rx_data_reg[63]_0 [4]));
  FDCE \rx_data_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[50]),
        .Q(\rx_data_reg[63]_0 [50]));
  FDCE \rx_data_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[51]),
        .Q(\rx_data_reg[63]_0 [51]));
  FDCE \rx_data_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[52]),
        .Q(\rx_data_reg[63]_0 [52]));
  FDCE \rx_data_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[53]),
        .Q(\rx_data_reg[63]_0 [53]));
  FDCE \rx_data_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[54]),
        .Q(\rx_data_reg[63]_0 [54]));
  FDCE \rx_data_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[55]),
        .Q(\rx_data_reg[63]_0 [55]));
  FDCE \rx_data_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[56]),
        .Q(\rx_data_reg[63]_0 [56]));
  FDCE \rx_data_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[57]),
        .Q(\rx_data_reg[63]_0 [57]));
  FDCE \rx_data_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[58]),
        .Q(\rx_data_reg[63]_0 [58]));
  FDCE \rx_data_reg[59] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[59]),
        .Q(\rx_data_reg[63]_0 [59]));
  FDCE \rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[5]),
        .Q(\rx_data_reg[63]_0 [5]));
  FDCE \rx_data_reg[60] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[60]),
        .Q(\rx_data_reg[63]_0 [60]));
  FDCE \rx_data_reg[61] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[61]),
        .Q(\rx_data_reg[63]_0 [61]));
  FDCE \rx_data_reg[62] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[62]),
        .Q(\rx_data_reg[63]_0 [62]));
  FDCE \rx_data_reg[63] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[63]),
        .Q(\rx_data_reg[63]_0 [63]));
  FDCE \rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[6]),
        .Q(\rx_data_reg[63]_0 [6]));
  FDCE \rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[7]),
        .Q(\rx_data_reg[63]_0 [7]));
  FDCE \rx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[8]),
        .Q(\rx_data_reg[63]_0 [8]));
  FDCE \rx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(data_shift[9]),
        .Q(\rx_data_reg[63]_0 [9]));
  FDCE \rx_dlc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(\dlc_shift_reg_n_0_[0] ),
        .Q(\rx_id_reg[10]_0 [0]));
  FDCE \rx_dlc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_cnt1[1]),
        .Q(\rx_id_reg[10]_0 [1]));
  FDCE \rx_dlc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_cnt1[2]),
        .Q(\rx_id_reg[10]_0 [2]));
  FDCE \rx_dlc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_cnt1[3]),
        .Q(\rx_id_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    rx_done_tick_i_1
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(sample_en),
        .I5(rx_valid_w),
        .O(rx_done_tick_i_1_n_0));
  FDCE rx_done_tick_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(rx_done_tick_i_1_n_0),
        .Q(rx_valid_w));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rx_id[10]_i_1 
       (.I0(sample_en),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .O(\rx_id[10]_i_1_n_0 ));
  FDCE \rx_id_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[0]),
        .Q(\rx_id_reg[10]_0 [4]));
  FDCE \rx_id_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[10]),
        .Q(\rx_id_reg[10]_0 [14]));
  FDCE \rx_id_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[1]),
        .Q(\rx_id_reg[10]_0 [5]));
  FDCE \rx_id_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[2]),
        .Q(\rx_id_reg[10]_0 [6]));
  FDCE \rx_id_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[3]),
        .Q(\rx_id_reg[10]_0 [7]));
  FDCE \rx_id_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[4]),
        .Q(\rx_id_reg[10]_0 [8]));
  FDCE \rx_id_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[5]),
        .Q(\rx_id_reg[10]_0 [9]));
  FDCE \rx_id_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[6]),
        .Q(\rx_id_reg[10]_0 [10]));
  FDCE \rx_id_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[7]),
        .Q(\rx_id_reg[10]_0 [11]));
  FDCE \rx_id_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[8]),
        .Q(\rx_id_reg[10]_0 [12]));
  FDCE \rx_id_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_id[10]_i_1_n_0 ),
        .CLR(AR),
        .D(id_shift[9]),
        .Q(\rx_id_reg[10]_0 [13]));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_reg5[14]_i_1 
       (.I0(rx_valid_w),
        .I1(slv_reg1),
        .O(E));
  LUT6 #(
    .INIT(64'h8AA8FFFFAAAA0000)) 
    \stuff_cnt[0]_i_1__0 
       (.I0(\stuff_cnt[0]_i_2__0_n_0 ),
        .I1(\stuff_cnt[0]_i_3_n_0 ),
        .I2(last_bit_val__0),
        .I3(rx_sync_2),
        .I4(\stuff_cnt[2]_i_4_n_0 ),
        .I5(\stuff_cnt_reg_n_0_[0] ),
        .O(\stuff_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555551)) 
    \stuff_cnt[0]_i_2__0 
       (.I0(state__0[3]),
        .I1(rx_sync_2),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .O(\stuff_cnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h01010101FF010101)) 
    \stuff_cnt[0]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\stuff_cnt_reg_n_0_[2] ),
        .I4(\stuff_cnt_reg_n_0_[0] ),
        .I5(\stuff_cnt_reg_n_0_[1] ),
        .O(\stuff_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202FFFF00080000)) 
    \stuff_cnt[1]_i_1__0 
       (.I0(\stuff_cnt[2]_i_2__0_n_0 ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt[2]_i_3_n_0 ),
        .I3(\stuff_cnt_reg_n_0_[2] ),
        .I4(\stuff_cnt[2]_i_4_n_0 ),
        .I5(\stuff_cnt_reg_n_0_[1] ),
        .O(\stuff_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0022FFFF00800000)) 
    \stuff_cnt[2]_i_1__0 
       (.I0(\stuff_cnt[2]_i_2__0_n_0 ),
        .I1(\stuff_cnt_reg_n_0_[0] ),
        .I2(\stuff_cnt_reg_n_0_[1] ),
        .I3(\stuff_cnt[2]_i_3_n_0 ),
        .I4(\stuff_cnt[2]_i_4_n_0 ),
        .I5(\stuff_cnt_reg_n_0_[2] ),
        .O(\stuff_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \stuff_cnt[2]_i_2__0 
       (.I0(state__0[3]),
        .I1(last_bit_val__0),
        .I2(rx_sync_2),
        .O(\stuff_cnt[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \stuff_cnt[2]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\stuff_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \stuff_cnt[2]_i_4 
       (.I0(sample_en),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(\stuff_cnt[2]_i_4_n_0 ));
  FDCE \stuff_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[0]_i_1__0_n_0 ),
        .Q(\stuff_cnt_reg_n_0_[0] ));
  FDCE \stuff_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[1]_i_1__0_n_0 ),
        .Q(\stuff_cnt_reg_n_0_[1] ));
  FDCE \stuff_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[2]_i_1__0_n_0 ),
        .Q(\stuff_cnt_reg_n_0_[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core
   (tx_done_w,
    D,
    can_tx_port,
    s00_axi_aclk,
    AR,
    \data_shift_reg[0]_0 ,
    s00_axi_aresetn,
    sample_en,
    \crc_reg_reg[0]_0 ,
    Q,
    rx_sync_2,
    ack_signal_core,
    \data_shift_reg[63]_0 );
  output tx_done_w;
  output [0:0]D;
  output can_tx_port;
  input s00_axi_aclk;
  input [0:0]AR;
  input \data_shift_reg[0]_0 ;
  input s00_axi_aresetn;
  input sample_en;
  input \crc_reg_reg[0]_0 ;
  input [14:0]Q;
  input rx_sync_2;
  input ack_signal_core;
  input [63:0]\data_shift_reg[63]_0 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1__0_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire [14:0]Q;
  wire ack_captured_i_1_n_0;
  wire ack_captured_reg_n_0;
  wire \ack_fail_cnt[0]_i_1_n_0 ;
  wire \ack_fail_cnt[1]_i_1_n_0 ;
  wire \ack_fail_cnt[2]_i_1_n_0 ;
  wire \ack_fail_cnt[3]_i_1_n_0 ;
  wire \ack_fail_cnt[4]_i_1_n_0 ;
  wire \ack_fail_cnt[5]_i_1_n_0 ;
  wire \ack_fail_cnt[5]_i_2_n_0 ;
  wire \ack_fail_cnt[6]_i_1_n_0 ;
  wire \ack_fail_cnt[6]_i_2_n_0 ;
  wire \ack_fail_cnt[6]_i_3_n_0 ;
  wire \ack_fail_cnt[6]_i_4_n_0 ;
  wire \ack_fail_cnt_reg_n_0_[0] ;
  wire \ack_fail_cnt_reg_n_0_[1] ;
  wire \ack_fail_cnt_reg_n_0_[2] ;
  wire \ack_fail_cnt_reg_n_0_[3] ;
  wire \ack_fail_cnt_reg_n_0_[4] ;
  wire \ack_fail_cnt_reg_n_0_[5] ;
  wire \ack_fail_cnt_reg_n_0_[6] ;
  wire ack_signal_core;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[0]_i_2_n_0 ;
  wire \bit_cnt[0]_i_3_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2__0_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[3]_i_2_n_0 ;
  wire \bit_cnt[3]_i_3_n_0 ;
  wire \bit_cnt[4]_i_1_n_0 ;
  wire \bit_cnt[4]_i_2_n_0 ;
  wire \bit_cnt[4]_i_3_n_0 ;
  wire \bit_cnt[4]_i_4__0_n_0 ;
  wire \bit_cnt[4]_i_5_n_0 ;
  wire \bit_cnt[5]_i_1_n_0 ;
  wire \bit_cnt[5]_i_2_n_0 ;
  wire \bit_cnt[5]_i_3_n_0 ;
  wire \bit_cnt[5]_i_4_n_0 ;
  wire \bit_cnt[6]_i_10_n_0 ;
  wire \bit_cnt[6]_i_11_n_0 ;
  wire \bit_cnt[6]_i_12_n_0 ;
  wire \bit_cnt[6]_i_13_n_0 ;
  wire \bit_cnt[6]_i_1__0_n_0 ;
  wire \bit_cnt[6]_i_2_n_0 ;
  wire \bit_cnt[6]_i_3_n_0 ;
  wire \bit_cnt[6]_i_4_n_0 ;
  wire \bit_cnt[6]_i_5_n_0 ;
  wire \bit_cnt[6]_i_6_n_0 ;
  wire \bit_cnt[6]_i_7_n_0 ;
  wire \bit_cnt[6]_i_8_n_0 ;
  wire \bit_cnt[6]_i_9__0_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire \bit_cnt_reg_n_0_[4] ;
  wire \bit_cnt_reg_n_0_[5] ;
  wire \bit_cnt_reg_n_0_[6] ;
  wire can_tx_i_1_n_0;
  wire can_tx_i_2_n_0;
  wire can_tx_i_3_n_0;
  wire can_tx_i_4_n_0;
  wire can_tx_i_5_n_0;
  wire can_tx_port;
  wire \crc_reg[0]_i_1_n_0 ;
  wire \crc_reg[10]_i_1_n_0 ;
  wire \crc_reg[11]_i_1_n_0 ;
  wire \crc_reg[12]_i_1_n_0 ;
  wire \crc_reg[13]_i_1_n_0 ;
  wire \crc_reg[14]_i_1_n_0 ;
  wire \crc_reg[14]_i_2_n_0 ;
  wire \crc_reg[14]_i_3_n_0 ;
  wire \crc_reg[14]_i_4_n_0 ;
  wire \crc_reg[14]_i_5_n_0 ;
  wire \crc_reg[14]_i_6_n_0 ;
  wire \crc_reg[14]_i_7_n_0 ;
  wire \crc_reg[1]_i_1_n_0 ;
  wire \crc_reg[2]_i_1_n_0 ;
  wire \crc_reg[3]_i_1_n_0 ;
  wire \crc_reg[3]_i_2_n_0 ;
  wire \crc_reg[3]_i_3_n_0 ;
  wire \crc_reg[3]_i_4_n_0 ;
  wire \crc_reg[3]_i_5_n_0 ;
  wire \crc_reg[4]_i_1_n_0 ;
  wire \crc_reg[5]_i_1_n_0 ;
  wire \crc_reg[6]_i_1_n_0 ;
  wire \crc_reg[7]_i_1_n_0 ;
  wire \crc_reg[8]_i_1_n_0 ;
  wire \crc_reg[9]_i_1_n_0 ;
  wire \crc_reg_reg[0]_0 ;
  wire \crc_reg_reg_n_0_[0] ;
  wire \crc_reg_reg_n_0_[10] ;
  wire \crc_reg_reg_n_0_[11] ;
  wire \crc_reg_reg_n_0_[12] ;
  wire \crc_reg_reg_n_0_[13] ;
  wire \crc_reg_reg_n_0_[1] ;
  wire \crc_reg_reg_n_0_[2] ;
  wire \crc_reg_reg_n_0_[3] ;
  wire \crc_reg_reg_n_0_[4] ;
  wire \crc_reg_reg_n_0_[5] ;
  wire \crc_reg_reg_n_0_[6] ;
  wire \crc_reg_reg_n_0_[7] ;
  wire \crc_reg_reg_n_0_[8] ;
  wire \crc_reg_reg_n_0_[9] ;
  wire \data_shift[63]_i_1__0_n_0 ;
  wire \data_shift[63]_i_3_n_0 ;
  wire [63:0]data_shift__0;
  wire \data_shift_reg[0]_0 ;
  wire [63:0]\data_shift_reg[63]_0 ;
  wire last_bit_val_i_10_n_0;
  wire last_bit_val_i_11_n_0;
  wire last_bit_val_i_12_n_0;
  wire last_bit_val_i_13_n_0;
  wire last_bit_val_i_1_n_0;
  wire last_bit_val_i_2_n_0;
  wire last_bit_val_i_3_n_0;
  wire last_bit_val_i_4_n_0;
  wire last_bit_val_i_5_n_0;
  wire last_bit_val_i_7_n_0;
  wire last_bit_val_reg_i_6_n_0;
  wire last_bit_val_reg_i_8_n_0;
  wire last_bit_val_reg_i_9_n_0;
  wire last_bit_val_reg_n_0;
  wire p_0_in;
  wire rx_sync_2;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sample_en;
  wire [3:0]state__0;
  wire \stuff_cnt[0]_i_1_n_0 ;
  wire \stuff_cnt[0]_i_2_n_0 ;
  wire \stuff_cnt[0]_i_3__0_n_0 ;
  wire \stuff_cnt[0]_i_4_n_0 ;
  wire \stuff_cnt[0]_i_5_n_0 ;
  wire \stuff_cnt[0]_i_6_n_0 ;
  wire \stuff_cnt[0]_i_7_n_0 ;
  wire \stuff_cnt[0]_i_8_n_0 ;
  wire \stuff_cnt[1]_i_1_n_0 ;
  wire \stuff_cnt[2]_i_10_n_0 ;
  wire \stuff_cnt[2]_i_11_n_0 ;
  wire \stuff_cnt[2]_i_1_n_0 ;
  wire \stuff_cnt[2]_i_24_n_0 ;
  wire \stuff_cnt[2]_i_25_n_0 ;
  wire \stuff_cnt[2]_i_26_n_0 ;
  wire \stuff_cnt[2]_i_27_n_0 ;
  wire \stuff_cnt[2]_i_28_n_0 ;
  wire \stuff_cnt[2]_i_29_n_0 ;
  wire \stuff_cnt[2]_i_2_n_0 ;
  wire \stuff_cnt[2]_i_30_n_0 ;
  wire \stuff_cnt[2]_i_31_n_0 ;
  wire \stuff_cnt[2]_i_32_n_0 ;
  wire \stuff_cnt[2]_i_33_n_0 ;
  wire \stuff_cnt[2]_i_34_n_0 ;
  wire \stuff_cnt[2]_i_35_n_0 ;
  wire \stuff_cnt[2]_i_36_n_0 ;
  wire \stuff_cnt[2]_i_37_n_0 ;
  wire \stuff_cnt[2]_i_38_n_0 ;
  wire \stuff_cnt[2]_i_39_n_0 ;
  wire \stuff_cnt[2]_i_3__0_n_0 ;
  wire \stuff_cnt[2]_i_4__0_n_0 ;
  wire \stuff_cnt[2]_i_5_n_0 ;
  wire \stuff_cnt[2]_i_6_n_0 ;
  wire \stuff_cnt[2]_i_7_n_0 ;
  wire \stuff_cnt[2]_i_8_n_0 ;
  wire \stuff_cnt[2]_i_9_n_0 ;
  wire [2:0]stuff_cnt__0;
  wire \stuff_cnt_reg[2]_i_12_n_0 ;
  wire \stuff_cnt_reg[2]_i_13_n_0 ;
  wire \stuff_cnt_reg[2]_i_14_n_0 ;
  wire \stuff_cnt_reg[2]_i_15_n_0 ;
  wire \stuff_cnt_reg[2]_i_16_n_0 ;
  wire \stuff_cnt_reg[2]_i_17_n_0 ;
  wire \stuff_cnt_reg[2]_i_18_n_0 ;
  wire \stuff_cnt_reg[2]_i_19_n_0 ;
  wire \stuff_cnt_reg[2]_i_20_n_0 ;
  wire \stuff_cnt_reg[2]_i_21_n_0 ;
  wire \stuff_cnt_reg[2]_i_22_n_0 ;
  wire \stuff_cnt_reg[2]_i_23_n_0 ;
  wire tx_busy_i_1_n_0;
  wire tx_busy_i_2_n_0;
  wire tx_busy_i_3_n_0;
  wire tx_done_tick_i_1_n_0;
  wire tx_done_w;
  wire tx_signal_core;

  LUT6 #(
    .INIT(64'h0000202000FFFFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(state__0[3]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(rx_sync_2),
        .I1(ack_captured_reg_n_0),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1320)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBAAAAAAAA)) 
    \FSM_sequential_state[3]_i_1__0 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(sample_en),
        .O(\FSM_sequential_state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F800F8000800F80)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(rx_sync_2),
        .I5(ack_captured_reg_n_0),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\crc_reg_reg[0]_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h747F303F444F303F)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\bit_cnt[4]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(state__0[3]),
        .I5(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[5] ),
        .I2(\bit_cnt_reg_n_0_[4] ),
        .I3(\bit_cnt_reg_n_0_[6] ),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .I5(\bit_cnt[3]_i_3_n_0 ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2A2AAA)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[6] ),
        .I2(\ack_fail_cnt_reg_n_0_[5] ),
        .I3(\ack_fail_cnt_reg_n_0_[4] ),
        .I4(\ack_fail_cnt_reg_n_0_[2] ),
        .I5(\ack_fail_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5515)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(state__0[3]),
        .I1(stuff_cnt__0[2]),
        .I2(stuff_cnt__0[0]),
        .I3(stuff_cnt__0[1]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state__0[3]));
  LUT6 #(
    .INIT(64'hFFFEFFFE00002004)) 
    ack_captured_i_1
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(rx_sync_2),
        .I5(ack_captured_reg_n_0),
        .O(ack_captured_i_1_n_0));
  FDCE ack_captured_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ack_captured_i_1_n_0),
        .Q(ack_captured_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ack_fail_cnt[0]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[0] ),
        .O(\ack_fail_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ack_fail_cnt[1]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[1] ),
        .I2(\ack_fail_cnt_reg_n_0_[0] ),
        .O(\ack_fail_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \ack_fail_cnt[2]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[0] ),
        .I2(\ack_fail_cnt_reg_n_0_[1] ),
        .I3(\ack_fail_cnt_reg_n_0_[2] ),
        .O(\ack_fail_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \ack_fail_cnt[3]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[1] ),
        .I2(\ack_fail_cnt_reg_n_0_[0] ),
        .I3(\ack_fail_cnt_reg_n_0_[2] ),
        .I4(\ack_fail_cnt_reg_n_0_[3] ),
        .O(\ack_fail_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \ack_fail_cnt[4]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt_reg_n_0_[2] ),
        .I2(\ack_fail_cnt_reg_n_0_[0] ),
        .I3(\ack_fail_cnt_reg_n_0_[1] ),
        .I4(\ack_fail_cnt_reg_n_0_[3] ),
        .I5(\ack_fail_cnt_reg_n_0_[4] ),
        .O(\ack_fail_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ack_fail_cnt[5]_i_1 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt[5]_i_2_n_0 ),
        .I2(\ack_fail_cnt_reg_n_0_[5] ),
        .O(\ack_fail_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ack_fail_cnt[5]_i_2 
       (.I0(\ack_fail_cnt_reg_n_0_[3] ),
        .I1(\ack_fail_cnt_reg_n_0_[1] ),
        .I2(\ack_fail_cnt_reg_n_0_[0] ),
        .I3(\ack_fail_cnt_reg_n_0_[2] ),
        .I4(\ack_fail_cnt_reg_n_0_[4] ),
        .O(\ack_fail_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00030001)) 
    \ack_fail_cnt[6]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(sample_en),
        .O(\ack_fail_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ack_fail_cnt[6]_i_2 
       (.I0(\ack_fail_cnt[6]_i_3_n_0 ),
        .I1(\ack_fail_cnt[6]_i_4_n_0 ),
        .I2(\ack_fail_cnt_reg_n_0_[6] ),
        .O(\ack_fail_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \ack_fail_cnt[6]_i_3 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\ack_fail_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ack_fail_cnt[6]_i_4 
       (.I0(\ack_fail_cnt_reg_n_0_[5] ),
        .I1(\ack_fail_cnt_reg_n_0_[4] ),
        .I2(\ack_fail_cnt_reg_n_0_[2] ),
        .I3(\ack_fail_cnt_reg_n_0_[0] ),
        .I4(\ack_fail_cnt_reg_n_0_[1] ),
        .I5(\ack_fail_cnt_reg_n_0_[3] ),
        .O(\ack_fail_cnt[6]_i_4_n_0 ));
  FDCE \ack_fail_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[0]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[0] ));
  FDCE \ack_fail_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[1]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[1] ));
  FDCE \ack_fail_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[2]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[2] ));
  FDCE \ack_fail_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[3]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[3] ));
  FDCE \ack_fail_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[4]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[4] ));
  FDCE \ack_fail_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[5]_i_1_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[5] ));
  FDCE \ack_fail_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ack_fail_cnt[6]_i_1_n_0 ),
        .CLR(AR),
        .D(\ack_fail_cnt[6]_i_2_n_0 ),
        .Q(\ack_fail_cnt_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h4500454055505550)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt[0]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\bit_cnt[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\bit_cnt[2]_i_3_n_0 ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \bit_cnt[0]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(\bit_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bit_cnt[0]_i_3 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3C3C3C3D7C3FF)) 
    \bit_cnt[1]_i_1 
       (.I0(state__0[0]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(state__0[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBAAFBAAAAFB)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt[2]_i_2__0_n_0 ),
        .I1(\bit_cnt[2]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_cnt[2]_i_2__0 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\bit_cnt[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[2]_i_3 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .O(\bit_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01FF0101010101FF)) 
    \bit_cnt[3]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(\bit_cnt[3]_i_2_n_0 ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .I5(\bit_cnt[3]_i_3_n_0 ),
        .O(\bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000100000001F1F)) 
    \bit_cnt[3]_i_2 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt[6]_i_13_n_0 ),
        .I2(state__0[1]),
        .I3(Q[0]),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(\bit_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_cnt[3]_i_3 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3000FFFF30007500)) 
    \bit_cnt[4]_i_1 
       (.I0(\bit_cnt[4]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\bit_cnt[4]_i_3_n_0 ),
        .I3(\bit_cnt[6]_i_7_n_0 ),
        .I4(\bit_cnt[4]_i_4__0_n_0 ),
        .I5(\bit_cnt[4]_i_5_n_0 ),
        .O(\bit_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_cnt[4]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt[6]_i_13_n_0 ),
        .O(\bit_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0041004100000041)) 
    \bit_cnt[4]_i_3 
       (.I0(\bit_cnt[0]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \bit_cnt[4]_i_4__0 
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFBF8C8C8)) 
    \bit_cnt[4]_i_5 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(\bit_cnt[6]_i_13_n_0 ),
        .O(\bit_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888F8C)) 
    \bit_cnt[5]_i_1 
       (.I0(\bit_cnt[5]_i_2_n_0 ),
        .I1(\bit_cnt[6]_i_7_n_0 ),
        .I2(\bit_cnt[5]_i_3_n_0 ),
        .I3(\bit_cnt[6]_i_10_n_0 ),
        .I4(\bit_cnt[5]_i_4_n_0 ),
        .I5(\bit_cnt[6]_i_9__0_n_0 ),
        .O(\bit_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8888AAAA88888)) 
    \bit_cnt[5]_i_2 
       (.I0(\bit_cnt[4]_i_2_n_0 ),
        .I1(\bit_cnt[3]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\bit_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \bit_cnt[5]_i_3 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[4] ),
        .I5(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00015555)) 
    \bit_cnt[5]_i_4 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .I1(\bit_cnt[3]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bit_cnt[6]_i_10 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .O(\bit_cnt[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \bit_cnt[6]_i_11 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[4] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bit_cnt[6]_i_12 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\bit_cnt[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_cnt[6]_i_13 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .I1(\bit_cnt_reg_n_0_[4] ),
        .I2(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[6]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00E00000)) 
    \bit_cnt[6]_i_1__0 
       (.I0(\bit_cnt[6]_i_3_n_0 ),
        .I1(\bit_cnt[6]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\bit_cnt[6]_i_5_n_0 ),
        .I4(sample_en),
        .O(\bit_cnt[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4FF44FF444F44444)) 
    \bit_cnt[6]_i_2 
       (.I0(\bit_cnt[6]_i_6_n_0 ),
        .I1(\bit_cnt[6]_i_7_n_0 ),
        .I2(\bit_cnt_reg_n_0_[6] ),
        .I3(\bit_cnt[6]_i_8_n_0 ),
        .I4(\bit_cnt[6]_i_9__0_n_0 ),
        .I5(\bit_cnt[6]_i_10_n_0 ),
        .O(\bit_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00010000000105F0)) 
    \bit_cnt[6]_i_3 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(\stuff_cnt[0]_i_4_n_0 ),
        .O(\bit_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00040C0C)) 
    \bit_cnt[6]_i_4 
       (.I0(\stuff_cnt[0]_i_4_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\bit_cnt[4]_i_2_n_0 ),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(\bit_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_cnt[6]_i_5 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(\bit_cnt[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD9D909D9D)) 
    \bit_cnt[6]_i_6 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .I1(\bit_cnt[6]_i_8_n_0 ),
        .I2(\bit_cnt[6]_i_11_n_0 ),
        .I3(\bit_cnt[6]_i_12_n_0 ),
        .I4(Q[3]),
        .I5(\bit_cnt[6]_i_13_n_0 ),
        .O(\bit_cnt[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[6]_i_7 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\bit_cnt[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bit_cnt[6]_i_8 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[4] ),
        .I5(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \bit_cnt[6]_i_9__0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\bit_cnt[6]_i_9__0_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[4]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[5]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\bit_cnt[6]_i_1__0_n_0 ),
        .D(\bit_cnt[6]_i_2_n_0 ),
        .Q(\bit_cnt_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0DFFFFFF0D0000)) 
    can_tx_i_1
       (.I0(last_bit_val_i_3_n_0),
        .I1(can_tx_i_2_n_0),
        .I2(state__0[3]),
        .I3(can_tx_i_3_n_0),
        .I4(can_tx_i_4_n_0),
        .I5(tx_signal_core),
        .O(can_tx_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF740074)) 
    can_tx_i_2
       (.I0(last_bit_val_reg_n_0),
        .I1(\stuff_cnt[0]_i_4_n_0 ),
        .I2(\stuff_cnt[2]_i_8_n_0 ),
        .I3(state__0[1]),
        .I4(can_tx_i_5_n_0),
        .I5(state__0[0]),
        .O(can_tx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    can_tx_i_3
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .O(can_tx_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h03FF0001)) 
    can_tx_i_4
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(sample_en),
        .O(can_tx_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hDFFF1000)) 
    can_tx_i_5
       (.I0(last_bit_val_reg_n_0),
        .I1(stuff_cnt__0[1]),
        .I2(stuff_cnt__0[0]),
        .I3(stuff_cnt__0[2]),
        .I4(\stuff_cnt[2]_i_7_n_0 ),
        .O(can_tx_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    can_tx_port_INST_0
       (.I0(tx_signal_core),
        .I1(ack_signal_core),
        .O(can_tx_port));
  FDPE can_tx_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(can_tx_i_1_n_0),
        .PRE(AR),
        .Q(tx_signal_core));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    \crc_reg[0]_i_1 
       (.I0(\crc_reg[14]_i_4_n_0 ),
        .I1(state__0[1]),
        .I2(\crc_reg[14]_i_5_n_0 ),
        .I3(state__0[2]),
        .O(\crc_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA556060)) 
    \crc_reg[10]_i_1 
       (.I0(\crc_reg_reg_n_0_[9] ),
        .I1(\crc_reg[14]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\crc_reg[14]_i_5_n_0 ),
        .I4(state__0[2]),
        .O(\crc_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[11]_i_1 
       (.I0(\crc_reg_reg_n_0_[10] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[12]_i_1 
       (.I0(\crc_reg_reg_n_0_[11] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[13]_i_1 
       (.I0(\crc_reg_reg_n_0_[12] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0303033200000002)) 
    \crc_reg[14]_i_1 
       (.I0(\crc_reg_reg[0]_0 ),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\crc_reg[14]_i_3_n_0 ),
        .O(\crc_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA556060)) 
    \crc_reg[14]_i_2 
       (.I0(\crc_reg_reg_n_0_[13] ),
        .I1(\crc_reg[14]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\crc_reg[14]_i_5_n_0 ),
        .I4(state__0[2]),
        .O(\crc_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA02AAAAAAAAAAAA)) 
    \crc_reg[14]_i_3 
       (.I0(sample_en),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(stuff_cnt__0[1]),
        .I4(stuff_cnt__0[0]),
        .I5(stuff_cnt__0[2]),
        .O(\crc_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C553C553C55)) 
    \crc_reg[14]_i_4 
       (.I0(\crc_reg[3]_i_3_n_0 ),
        .I1(p_0_in),
        .I2(\crc_reg[14]_i_6_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\crc_reg[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc_reg[14]_i_5 
       (.I0(p_0_in),
        .I1(\stuff_cnt[2]_i_8_n_0 ),
        .O(\crc_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \crc_reg[14]_i_6 
       (.I0(\crc_reg[14]_i_7_n_0 ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[5] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[6] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\crc_reg[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_reg[14]_i_7 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(Q[0]),
        .O(\crc_reg[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[1]_i_1 
       (.I0(\crc_reg_reg_n_0_[0] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[2]_i_1 
       (.I0(\crc_reg_reg_n_0_[1] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0A0C050305F30)) 
    \crc_reg[3]_i_1 
       (.I0(\crc_reg[3]_i_2_n_0 ),
        .I1(\crc_reg[3]_i_3_n_0 ),
        .I2(\crc_reg[3]_i_4_n_0 ),
        .I3(\crc_reg[3]_i_5_n_0 ),
        .I4(\crc_reg[14]_i_5_n_0 ),
        .I5(\crc_reg_reg_n_0_[2] ),
        .O(\crc_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc_reg[3]_i_2 
       (.I0(p_0_in),
        .I1(\crc_reg[14]_i_6_n_0 ),
        .O(\crc_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc_reg[3]_i_3 
       (.I0(p_0_in),
        .I1(\stuff_cnt[2]_i_7_n_0 ),
        .O(\crc_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \crc_reg[3]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\crc_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \crc_reg[3]_i_5 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(\crc_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAA556060)) 
    \crc_reg[4]_i_1 
       (.I0(\crc_reg_reg_n_0_[3] ),
        .I1(\crc_reg[14]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\crc_reg[14]_i_5_n_0 ),
        .I4(state__0[2]),
        .O(\crc_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[5]_i_1 
       (.I0(\crc_reg_reg_n_0_[4] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[6]_i_1 
       (.I0(\crc_reg_reg_n_0_[5] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hAA556060)) 
    \crc_reg[7]_i_1 
       (.I0(\crc_reg_reg_n_0_[6] ),
        .I1(\crc_reg[14]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\crc_reg[14]_i_5_n_0 ),
        .I4(state__0[2]),
        .O(\crc_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAA556060)) 
    \crc_reg[8]_i_1 
       (.I0(\crc_reg_reg_n_0_[7] ),
        .I1(\crc_reg[14]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\crc_reg[14]_i_5_n_0 ),
        .I4(state__0[2]),
        .O(\crc_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_reg[9]_i_1 
       (.I0(\crc_reg_reg_n_0_[8] ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\crc_reg[9]_i_1_n_0 ));
  FDCE \crc_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[0]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[0] ));
  FDCE \crc_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[10]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[10] ));
  FDCE \crc_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[11]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[11] ));
  FDCE \crc_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[12]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[12] ));
  FDCE \crc_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[13]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[13] ));
  FDCE \crc_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[14]_i_2_n_0 ),
        .Q(p_0_in));
  FDCE \crc_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[1]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[1] ));
  FDCE \crc_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[2]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[2] ));
  FDCE \crc_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[3]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[3] ));
  FDCE \crc_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[4]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[4] ));
  FDCE \crc_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[5]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[5] ));
  FDCE \crc_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[6]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[6] ));
  FDCE \crc_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[7]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[7] ));
  FDCE \crc_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[8]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[8] ));
  FDCE \crc_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\crc_reg[14]_i_1_n_0 ),
        .CLR(AR),
        .D(\crc_reg[9]_i_1_n_0 ),
        .Q(\crc_reg_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \data_shift[63]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\bit_cnt[3]_i_3_n_0 ),
        .I2(\bit_cnt[6]_i_7_n_0 ),
        .I3(state__0[2]),
        .I4(\data_shift_reg[0]_0 ),
        .I5(\data_shift[63]_i_3_n_0 ),
        .O(\data_shift[63]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_shift[63]_i_3 
       (.I0(\stuff_cnt[0]_i_4_n_0 ),
        .I1(state__0[3]),
        .I2(\bit_cnt_reg_n_0_[6] ),
        .I3(\bit_cnt_reg_n_0_[4] ),
        .I4(\bit_cnt_reg_n_0_[5] ),
        .I5(\bit_cnt_reg_n_0_[3] ),
        .O(\data_shift[63]_i_3_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [0]),
        .Q(data_shift__0[0]),
        .R(1'b0));
  FDRE \data_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [10]),
        .Q(data_shift__0[10]),
        .R(1'b0));
  FDRE \data_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [11]),
        .Q(data_shift__0[11]),
        .R(1'b0));
  FDRE \data_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [12]),
        .Q(data_shift__0[12]),
        .R(1'b0));
  FDRE \data_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [13]),
        .Q(data_shift__0[13]),
        .R(1'b0));
  FDRE \data_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [14]),
        .Q(data_shift__0[14]),
        .R(1'b0));
  FDRE \data_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [15]),
        .Q(data_shift__0[15]),
        .R(1'b0));
  FDRE \data_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [16]),
        .Q(data_shift__0[16]),
        .R(1'b0));
  FDRE \data_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [17]),
        .Q(data_shift__0[17]),
        .R(1'b0));
  FDRE \data_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [18]),
        .Q(data_shift__0[18]),
        .R(1'b0));
  FDRE \data_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [19]),
        .Q(data_shift__0[19]),
        .R(1'b0));
  FDRE \data_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [1]),
        .Q(data_shift__0[1]),
        .R(1'b0));
  FDRE \data_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [20]),
        .Q(data_shift__0[20]),
        .R(1'b0));
  FDRE \data_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [21]),
        .Q(data_shift__0[21]),
        .R(1'b0));
  FDRE \data_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [22]),
        .Q(data_shift__0[22]),
        .R(1'b0));
  FDRE \data_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [23]),
        .Q(data_shift__0[23]),
        .R(1'b0));
  FDRE \data_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [24]),
        .Q(data_shift__0[24]),
        .R(1'b0));
  FDRE \data_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [25]),
        .Q(data_shift__0[25]),
        .R(1'b0));
  FDRE \data_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [26]),
        .Q(data_shift__0[26]),
        .R(1'b0));
  FDRE \data_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [27]),
        .Q(data_shift__0[27]),
        .R(1'b0));
  FDRE \data_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [28]),
        .Q(data_shift__0[28]),
        .R(1'b0));
  FDRE \data_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [29]),
        .Q(data_shift__0[29]),
        .R(1'b0));
  FDRE \data_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [2]),
        .Q(data_shift__0[2]),
        .R(1'b0));
  FDRE \data_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [30]),
        .Q(data_shift__0[30]),
        .R(1'b0));
  FDRE \data_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [31]),
        .Q(data_shift__0[31]),
        .R(1'b0));
  FDRE \data_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [32]),
        .Q(data_shift__0[32]),
        .R(1'b0));
  FDRE \data_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [33]),
        .Q(data_shift__0[33]),
        .R(1'b0));
  FDRE \data_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [34]),
        .Q(data_shift__0[34]),
        .R(1'b0));
  FDRE \data_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [35]),
        .Q(data_shift__0[35]),
        .R(1'b0));
  FDRE \data_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [36]),
        .Q(data_shift__0[36]),
        .R(1'b0));
  FDRE \data_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [37]),
        .Q(data_shift__0[37]),
        .R(1'b0));
  FDRE \data_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [38]),
        .Q(data_shift__0[38]),
        .R(1'b0));
  FDRE \data_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [39]),
        .Q(data_shift__0[39]),
        .R(1'b0));
  FDRE \data_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [3]),
        .Q(data_shift__0[3]),
        .R(1'b0));
  FDRE \data_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [40]),
        .Q(data_shift__0[40]),
        .R(1'b0));
  FDRE \data_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [41]),
        .Q(data_shift__0[41]),
        .R(1'b0));
  FDRE \data_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [42]),
        .Q(data_shift__0[42]),
        .R(1'b0));
  FDRE \data_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [43]),
        .Q(data_shift__0[43]),
        .R(1'b0));
  FDRE \data_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [44]),
        .Q(data_shift__0[44]),
        .R(1'b0));
  FDRE \data_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [45]),
        .Q(data_shift__0[45]),
        .R(1'b0));
  FDRE \data_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [46]),
        .Q(data_shift__0[46]),
        .R(1'b0));
  FDRE \data_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [47]),
        .Q(data_shift__0[47]),
        .R(1'b0));
  FDRE \data_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [48]),
        .Q(data_shift__0[48]),
        .R(1'b0));
  FDRE \data_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [49]),
        .Q(data_shift__0[49]),
        .R(1'b0));
  FDRE \data_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [4]),
        .Q(data_shift__0[4]),
        .R(1'b0));
  FDRE \data_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [50]),
        .Q(data_shift__0[50]),
        .R(1'b0));
  FDRE \data_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [51]),
        .Q(data_shift__0[51]),
        .R(1'b0));
  FDRE \data_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [52]),
        .Q(data_shift__0[52]),
        .R(1'b0));
  FDRE \data_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [53]),
        .Q(data_shift__0[53]),
        .R(1'b0));
  FDRE \data_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [54]),
        .Q(data_shift__0[54]),
        .R(1'b0));
  FDRE \data_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [55]),
        .Q(data_shift__0[55]),
        .R(1'b0));
  FDRE \data_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [56]),
        .Q(data_shift__0[56]),
        .R(1'b0));
  FDRE \data_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [57]),
        .Q(data_shift__0[57]),
        .R(1'b0));
  FDRE \data_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [58]),
        .Q(data_shift__0[58]),
        .R(1'b0));
  FDRE \data_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [59]),
        .Q(data_shift__0[59]),
        .R(1'b0));
  FDRE \data_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [5]),
        .Q(data_shift__0[5]),
        .R(1'b0));
  FDRE \data_shift_reg[60] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [60]),
        .Q(data_shift__0[60]),
        .R(1'b0));
  FDRE \data_shift_reg[61] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [61]),
        .Q(data_shift__0[61]),
        .R(1'b0));
  FDRE \data_shift_reg[62] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [62]),
        .Q(data_shift__0[62]),
        .R(1'b0));
  FDRE \data_shift_reg[63] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [63]),
        .Q(data_shift__0[63]),
        .R(1'b0));
  FDRE \data_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [6]),
        .Q(data_shift__0[6]),
        .R(1'b0));
  FDRE \data_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [7]),
        .Q(data_shift__0[7]),
        .R(1'b0));
  FDRE \data_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [8]),
        .Q(data_shift__0[8]),
        .R(1'b0));
  FDRE \data_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_shift[63]_i_1__0_n_0 ),
        .D(\data_shift_reg[63]_0 [9]),
        .Q(data_shift__0[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h454545FF45454500)) 
    last_bit_val_i_1
       (.I0(state__0[3]),
        .I1(last_bit_val_i_2_n_0),
        .I2(last_bit_val_i_3_n_0),
        .I3(\FSM_sequential_state[3]_i_3_n_0 ),
        .I4(last_bit_val_i_4_n_0),
        .I5(last_bit_val_reg_n_0),
        .O(last_bit_val_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    last_bit_val_i_10
       (.I0(\crc_reg_reg_n_0_[3] ),
        .I1(\crc_reg_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\crc_reg_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\crc_reg_reg_n_0_[0] ),
        .O(last_bit_val_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    last_bit_val_i_11
       (.I0(\crc_reg_reg_n_0_[7] ),
        .I1(\crc_reg_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\crc_reg_reg_n_0_[5] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\crc_reg_reg_n_0_[4] ),
        .O(last_bit_val_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    last_bit_val_i_12
       (.I0(\crc_reg_reg_n_0_[11] ),
        .I1(\crc_reg_reg_n_0_[10] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\crc_reg_reg_n_0_[9] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\crc_reg_reg_n_0_[8] ),
        .O(last_bit_val_i_12_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    last_bit_val_i_13
       (.I0(p_0_in),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\crc_reg_reg_n_0_[13] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\crc_reg_reg_n_0_[12] ),
        .O(last_bit_val_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    last_bit_val_i_2
       (.I0(last_bit_val_i_5_n_0),
        .I1(state__0[2]),
        .I2(\stuff_cnt[2]_i_8_n_0 ),
        .I3(\stuff_cnt[0]_i_4_n_0 ),
        .I4(last_bit_val_reg_n_0),
        .I5(state__0[0]),
        .O(last_bit_val_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000008BFFFFFF)) 
    last_bit_val_i_3
       (.I0(last_bit_val_reg_n_0),
        .I1(\stuff_cnt[0]_i_4_n_0 ),
        .I2(last_bit_val_reg_i_6_n_0),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(last_bit_val_i_7_n_0),
        .O(last_bit_val_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h002A00A8)) 
    last_bit_val_i_4
       (.I0(sample_en),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(last_bit_val_i_4_n_0));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    last_bit_val_i_5
       (.I0(last_bit_val_reg_n_0),
        .I1(\stuff_cnt[0]_i_4_n_0 ),
        .I2(\stuff_cnt[2]_i_7_n_0 ),
        .I3(state__0[1]),
        .I4(\crc_reg_reg[0]_0 ),
        .O(last_bit_val_i_5_n_0));
  LUT6 #(
    .INIT(64'hBFBAAAAA00000000)) 
    last_bit_val_i_7
       (.I0(state__0[2]),
        .I1(last_bit_val_reg_n_0),
        .I2(\stuff_cnt[0]_i_4_n_0 ),
        .I3(\crc_reg[14]_i_6_n_0 ),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(last_bit_val_i_7_n_0));
  FDPE last_bit_val_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(last_bit_val_i_1_n_0),
        .PRE(AR),
        .Q(last_bit_val_reg_n_0));
  MUXF8 last_bit_val_reg_i_6
       (.I0(last_bit_val_reg_i_8_n_0),
        .I1(last_bit_val_reg_i_9_n_0),
        .O(last_bit_val_reg_i_6_n_0),
        .S(\bit_cnt_reg_n_0_[3] ));
  MUXF7 last_bit_val_reg_i_8
       (.I0(last_bit_val_i_10_n_0),
        .I1(last_bit_val_i_11_n_0),
        .O(last_bit_val_reg_i_8_n_0),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 last_bit_val_reg_i_9
       (.I0(last_bit_val_i_12_n_0),
        .I1(last_bit_val_i_13_n_0),
        .O(last_bit_val_reg_i_9_n_0),
        .S(\bit_cnt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFF54FFFFFF550000)) 
    \stuff_cnt[0]_i_1 
       (.I0(\stuff_cnt[0]_i_2_n_0 ),
        .I1(\stuff_cnt[0]_i_3__0_n_0 ),
        .I2(\stuff_cnt[0]_i_4_n_0 ),
        .I3(\stuff_cnt[0]_i_5_n_0 ),
        .I4(\stuff_cnt[2]_i_4__0_n_0 ),
        .I5(stuff_cnt__0[0]),
        .O(\stuff_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \stuff_cnt[0]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .O(\stuff_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \stuff_cnt[0]_i_3__0 
       (.I0(last_bit_val_reg_n_0),
        .I1(\stuff_cnt[2]_i_8_n_0 ),
        .O(\stuff_cnt[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \stuff_cnt[0]_i_4 
       (.I0(stuff_cnt__0[1]),
        .I1(stuff_cnt__0[0]),
        .I2(stuff_cnt__0[2]),
        .O(\stuff_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBAA0000)) 
    \stuff_cnt[0]_i_5 
       (.I0(\stuff_cnt[0]_i_6_n_0 ),
        .I1(state__0[2]),
        .I2(\stuff_cnt[2]_i_6_n_0 ),
        .I3(\stuff_cnt[2]_i_5_n_0 ),
        .I4(\stuff_cnt[0]_i_7_n_0 ),
        .I5(\stuff_cnt[0]_i_8_n_0 ),
        .O(\stuff_cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \stuff_cnt[0]_i_6 
       (.I0(stuff_cnt__0[2]),
        .I1(stuff_cnt__0[1]),
        .I2(stuff_cnt__0[0]),
        .O(\stuff_cnt[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \stuff_cnt[0]_i_7 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .O(\stuff_cnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BE000000)) 
    \stuff_cnt[0]_i_8 
       (.I0(\stuff_cnt[0]_i_6_n_0 ),
        .I1(last_bit_val_reg_n_0),
        .I2(\stuff_cnt[2]_i_7_n_0 ),
        .I3(state__0[1]),
        .I4(\bit_cnt[2]_i_3_n_0 ),
        .I5(state__0[0]),
        .O(\stuff_cnt[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0404FFFF00400000)) 
    \stuff_cnt[1]_i_1 
       (.I0(\stuff_cnt[2]_i_2_n_0 ),
        .I1(\stuff_cnt[2]_i_3__0_n_0 ),
        .I2(stuff_cnt__0[0]),
        .I3(stuff_cnt__0[2]),
        .I4(\stuff_cnt[2]_i_4__0_n_0 ),
        .I5(stuff_cnt__0[1]),
        .O(\stuff_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044FFFF40000000)) 
    \stuff_cnt[2]_i_1 
       (.I0(\stuff_cnt[2]_i_2_n_0 ),
        .I1(\stuff_cnt[2]_i_3__0_n_0 ),
        .I2(stuff_cnt__0[1]),
        .I3(stuff_cnt__0[0]),
        .I4(\stuff_cnt[2]_i_4__0_n_0 ),
        .I5(stuff_cnt__0[2]),
        .O(\stuff_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_10 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(Q[5]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(Q[4]),
        .O(\stuff_cnt[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \stuff_cnt[2]_i_11 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(Q[12]),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(Q[13]),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(Q[14]),
        .O(\stuff_cnt[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFBBBFEEEBBBB)) 
    \stuff_cnt[2]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\stuff_cnt[2]_i_5_n_0 ),
        .I4(state__0[1]),
        .I5(\stuff_cnt[2]_i_6_n_0 ),
        .O(\stuff_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_24 
       (.I0(data_shift__0[51]),
        .I1(data_shift__0[50]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[49]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[48]),
        .O(\stuff_cnt[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_25 
       (.I0(data_shift__0[55]),
        .I1(data_shift__0[54]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[53]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[52]),
        .O(\stuff_cnt[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_26 
       (.I0(data_shift__0[59]),
        .I1(data_shift__0[58]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[57]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[56]),
        .O(\stuff_cnt[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_27 
       (.I0(data_shift__0[63]),
        .I1(data_shift__0[62]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[61]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[60]),
        .O(\stuff_cnt[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_28 
       (.I0(data_shift__0[35]),
        .I1(data_shift__0[34]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[33]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[32]),
        .O(\stuff_cnt[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_29 
       (.I0(data_shift__0[39]),
        .I1(data_shift__0[38]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[37]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[36]),
        .O(\stuff_cnt[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_30 
       (.I0(data_shift__0[43]),
        .I1(data_shift__0[42]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[41]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[40]),
        .O(\stuff_cnt[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_31 
       (.I0(data_shift__0[47]),
        .I1(data_shift__0[46]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[45]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[44]),
        .O(\stuff_cnt[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_32 
       (.I0(data_shift__0[19]),
        .I1(data_shift__0[18]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[17]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[16]),
        .O(\stuff_cnt[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_33 
       (.I0(data_shift__0[23]),
        .I1(data_shift__0[22]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[21]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[20]),
        .O(\stuff_cnt[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_34 
       (.I0(data_shift__0[27]),
        .I1(data_shift__0[26]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[25]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[24]),
        .O(\stuff_cnt[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_35 
       (.I0(data_shift__0[31]),
        .I1(data_shift__0[30]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[29]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[28]),
        .O(\stuff_cnt[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_36 
       (.I0(data_shift__0[3]),
        .I1(data_shift__0[2]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[1]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[0]),
        .O(\stuff_cnt[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_37 
       (.I0(data_shift__0[7]),
        .I1(data_shift__0[6]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[5]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[4]),
        .O(\stuff_cnt[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_38 
       (.I0(data_shift__0[11]),
        .I1(data_shift__0[10]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[9]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[8]),
        .O(\stuff_cnt[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_39 
       (.I0(data_shift__0[15]),
        .I1(data_shift__0[14]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data_shift__0[13]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data_shift__0[12]),
        .O(\stuff_cnt[2]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF99A5)) 
    \stuff_cnt[2]_i_3__0 
       (.I0(last_bit_val_reg_n_0),
        .I1(\stuff_cnt[2]_i_7_n_0 ),
        .I2(\stuff_cnt[2]_i_8_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(\stuff_cnt[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h13330001)) 
    \stuff_cnt[2]_i_4__0 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(sample_en),
        .O(\stuff_cnt[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \stuff_cnt[2]_i_5 
       (.I0(\crc_reg[14]_i_6_n_0 ),
        .I1(last_bit_val_reg_n_0),
        .I2(state__0[1]),
        .O(\stuff_cnt[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \stuff_cnt[2]_i_6 
       (.I0(last_bit_val_reg_n_0),
        .I1(last_bit_val_reg_i_6_n_0),
        .O(\stuff_cnt[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4540FFFF)) 
    \stuff_cnt[2]_i_7 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\stuff_cnt[2]_i_9_n_0 ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\stuff_cnt[2]_i_10_n_0 ),
        .I4(\stuff_cnt[2]_i_11_n_0 ),
        .O(\stuff_cnt[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_8 
       (.I0(\stuff_cnt_reg[2]_i_12_n_0 ),
        .I1(\stuff_cnt_reg[2]_i_13_n_0 ),
        .I2(\bit_cnt_reg_n_0_[5] ),
        .I3(\stuff_cnt_reg[2]_i_14_n_0 ),
        .I4(\bit_cnt_reg_n_0_[4] ),
        .I5(\stuff_cnt_reg[2]_i_15_n_0 ),
        .O(\stuff_cnt[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \stuff_cnt[2]_i_9 
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(Q[9]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(Q[8]),
        .O(\stuff_cnt[2]_i_9_n_0 ));
  FDCE \stuff_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[0]_i_1_n_0 ),
        .Q(stuff_cnt__0[0]));
  FDCE \stuff_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[1]_i_1_n_0 ),
        .Q(stuff_cnt__0[1]));
  FDCE \stuff_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\stuff_cnt[2]_i_1_n_0 ),
        .Q(stuff_cnt__0[2]));
  MUXF8 \stuff_cnt_reg[2]_i_12 
       (.I0(\stuff_cnt_reg[2]_i_16_n_0 ),
        .I1(\stuff_cnt_reg[2]_i_17_n_0 ),
        .O(\stuff_cnt_reg[2]_i_12_n_0 ),
        .S(\bit_cnt_reg_n_0_[3] ));
  MUXF8 \stuff_cnt_reg[2]_i_13 
       (.I0(\stuff_cnt_reg[2]_i_18_n_0 ),
        .I1(\stuff_cnt_reg[2]_i_19_n_0 ),
        .O(\stuff_cnt_reg[2]_i_13_n_0 ),
        .S(\bit_cnt_reg_n_0_[3] ));
  MUXF8 \stuff_cnt_reg[2]_i_14 
       (.I0(\stuff_cnt_reg[2]_i_20_n_0 ),
        .I1(\stuff_cnt_reg[2]_i_21_n_0 ),
        .O(\stuff_cnt_reg[2]_i_14_n_0 ),
        .S(\bit_cnt_reg_n_0_[3] ));
  MUXF8 \stuff_cnt_reg[2]_i_15 
       (.I0(\stuff_cnt_reg[2]_i_22_n_0 ),
        .I1(\stuff_cnt_reg[2]_i_23_n_0 ),
        .O(\stuff_cnt_reg[2]_i_15_n_0 ),
        .S(\bit_cnt_reg_n_0_[3] ));
  MUXF7 \stuff_cnt_reg[2]_i_16 
       (.I0(\stuff_cnt[2]_i_24_n_0 ),
        .I1(\stuff_cnt[2]_i_25_n_0 ),
        .O(\stuff_cnt_reg[2]_i_16_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_17 
       (.I0(\stuff_cnt[2]_i_26_n_0 ),
        .I1(\stuff_cnt[2]_i_27_n_0 ),
        .O(\stuff_cnt_reg[2]_i_17_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_18 
       (.I0(\stuff_cnt[2]_i_28_n_0 ),
        .I1(\stuff_cnt[2]_i_29_n_0 ),
        .O(\stuff_cnt_reg[2]_i_18_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_19 
       (.I0(\stuff_cnt[2]_i_30_n_0 ),
        .I1(\stuff_cnt[2]_i_31_n_0 ),
        .O(\stuff_cnt_reg[2]_i_19_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_20 
       (.I0(\stuff_cnt[2]_i_32_n_0 ),
        .I1(\stuff_cnt[2]_i_33_n_0 ),
        .O(\stuff_cnt_reg[2]_i_20_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_21 
       (.I0(\stuff_cnt[2]_i_34_n_0 ),
        .I1(\stuff_cnt[2]_i_35_n_0 ),
        .O(\stuff_cnt_reg[2]_i_21_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_22 
       (.I0(\stuff_cnt[2]_i_36_n_0 ),
        .I1(\stuff_cnt[2]_i_37_n_0 ),
        .O(\stuff_cnt_reg[2]_i_22_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  MUXF7 \stuff_cnt_reg[2]_i_23 
       (.I0(\stuff_cnt[2]_i_38_n_0 ),
        .I1(\stuff_cnt[2]_i_39_n_0 ),
        .O(\stuff_cnt_reg[2]_i_23_n_0 ),
        .S(\bit_cnt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFF007FFFFF0000)) 
    tx_busy_i_1
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(tx_busy_i_2_n_0),
        .I2(tx_busy_i_3_n_0),
        .I3(tx_done_tick_i_1_n_0),
        .I4(\FSM_sequential_state[3]_i_3_n_0 ),
        .I5(D),
        .O(tx_busy_i_1_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    tx_busy_i_2
       (.I0(\ack_fail_cnt_reg_n_0_[3] ),
        .I1(\ack_fail_cnt_reg_n_0_[2] ),
        .I2(\ack_fail_cnt_reg_n_0_[4] ),
        .I3(\ack_fail_cnt_reg_n_0_[5] ),
        .I4(\ack_fail_cnt_reg_n_0_[6] ),
        .O(tx_busy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    tx_busy_i_3
       (.I0(sample_en),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(tx_busy_i_3_n_0));
  FDCE tx_busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(tx_busy_i_1_n_0),
        .Q(D));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    tx_done_tick_i_1
       (.I0(sample_en),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(\bit_cnt[4]_i_2_n_0 ),
        .O(tx_done_tick_i_1_n_0));
  FDCE tx_done_tick_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(tx_done_tick_i_1_n_0),
        .Q(tx_done_w));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    axi_wready_reg,
    s00_axi_rdata,
    can_tx_port,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_aclk,
    can_rx_port,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output axi_wready_reg;
  output [31:0]s00_axi_rdata;
  output can_tx_port;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input s00_axi_aclk;
  input can_rx_port;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire can_rx_port;
  wire can_tx_port;
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
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI myip_can_modified_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .can_rx_port(can_rx_port),
        .can_tx_port(can_tx_port),
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
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    axi_wready_reg_0,
    s00_axi_rdata,
    can_tx_port,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_aclk,
    can_rx_port,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output axi_wready_reg_0;
  output [31:0]s00_axi_rdata;
  output can_tx_port;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input s00_axi_aclk;
  input can_rx_port;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
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
  wire axi_wready_reg_0;
  wire can_rx_port;
  wire can_tx_port;
  wire [63:0]rx_data_w;
  wire [3:0]rx_dlc_w;
  wire [10:0]rx_id_w;
  wire rx_valid_w;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
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
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
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
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0[0]_i_1_n_0 ;
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
  wire \slv_reg0_reg_n_0_[1] ;
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
  wire [2:2]slv_reg1;
  wire \slv_reg1[1]_i_1_n_0 ;
  wire \slv_reg1[2]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire [14:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
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
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [14:0]slv_reg5;
  wire slv_reg5_0;
  wire [31:0]slv_reg6;
  wire [31:0]slv_reg7;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire tx_busy_w;
  wire tx_done_w;
  wire u_can_inst_n_0;

  LUT6 #(
    .INIT(64'hFFFF0FFF8888FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88880FFF0000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(u_can_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(u_can_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFFBFAAFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFF405500)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(u_can_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(u_can_inst_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[4]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
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
        .R(u_can_inst_n_0));
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
        .R(u_can_inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(u_can_inst_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(u_can_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hF2F2B3F3)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(state_write[0]),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(state_write[1]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(u_can_inst_n_0));
  LUT6 #(
    .INIT(64'hF7FF3434C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
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
        .R(u_can_inst_n_0));
  LUT6 #(
    .INIT(64'hF0FF0000FFFF8080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(u_can_inst_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(axi_wready_reg_0),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(axi_wready_reg_0),
        .R(u_can_inst_n_0));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[10] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg3[15]),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg4[15]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg3[16]),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[16] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg4[16]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg3[17]),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg4[17]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg3[18]),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[18] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg4[18]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg3[19]),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[19] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg4[19]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg3[20]),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[20] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg4[20]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg3[21]),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg4[21]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg3[22]),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[22] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg4[22]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg3[23]),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[23] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg4[23]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg3[24]),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[24] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg4[24]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg3[25]),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg4[25]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg3[26]),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[26] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg4[26]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg3[27]),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[27] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg4[27]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg3[28]),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[28] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg4[28]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg3[29]),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg4[29]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg3[30]),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[30] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg4[30]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg3[31]),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[31] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg4[31]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[4] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[6] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
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
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[8] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \slv_reg0[0]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[0]),
        .I4(\slv_reg0_reg_n_0_[0] ),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(axi_wready_reg_0),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg0[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(u_can_inst_n_0));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \slv_reg1[1]_i_1 
       (.I0(tx_done_w),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[1]),
        .I4(\slv_reg1_reg_n_0_[1] ),
        .O(\slv_reg1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \slv_reg1[2]_i_1 
       (.I0(rx_valid_w),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wdata[2]),
        .I4(slv_reg1),
        .O(\slv_reg1[2]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_busy_w),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[2]_i_1_n_0 ),
        .Q(slv_reg1),
        .R(u_can_inst_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg2[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg2[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg2[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \slv_reg2[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_wvalid),
        .I5(axi_wready_reg_0),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg2[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(u_can_inst_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(u_can_inst_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg4[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg4[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg4[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \slv_reg4[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(axi_awready_reg_0),
        .I5(s00_axi_awvalid),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slv_reg4[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_dlc_w[0]),
        .Q(slv_reg5[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[6]),
        .Q(slv_reg5[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[7]),
        .Q(slv_reg5[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[8]),
        .Q(slv_reg5[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[9]),
        .Q(slv_reg5[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[10]),
        .Q(slv_reg5[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_dlc_w[1]),
        .Q(slv_reg5[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_dlc_w[2]),
        .Q(slv_reg5[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_dlc_w[3]),
        .Q(slv_reg5[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[0]),
        .Q(slv_reg5[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[1]),
        .Q(slv_reg5[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[2]),
        .Q(slv_reg5[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[3]),
        .Q(slv_reg5[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[4]),
        .Q(slv_reg5[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_id_w[5]),
        .Q(slv_reg5[9]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[0]),
        .Q(slv_reg6[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[10]),
        .Q(slv_reg6[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[11]),
        .Q(slv_reg6[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[12]),
        .Q(slv_reg6[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[13]),
        .Q(slv_reg6[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[14]),
        .Q(slv_reg6[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[15]),
        .Q(slv_reg6[15]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[16]),
        .Q(slv_reg6[16]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[17]),
        .Q(slv_reg6[17]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[18]),
        .Q(slv_reg6[18]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[19]),
        .Q(slv_reg6[19]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[1]),
        .Q(slv_reg6[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[20]),
        .Q(slv_reg6[20]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[21]),
        .Q(slv_reg6[21]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[22]),
        .Q(slv_reg6[22]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[23]),
        .Q(slv_reg6[23]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[24]),
        .Q(slv_reg6[24]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[25]),
        .Q(slv_reg6[25]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[26]),
        .Q(slv_reg6[26]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[27]),
        .Q(slv_reg6[27]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[28]),
        .Q(slv_reg6[28]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[29]),
        .Q(slv_reg6[29]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[2]),
        .Q(slv_reg6[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[30]),
        .Q(slv_reg6[30]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[31]),
        .Q(slv_reg6[31]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[3]),
        .Q(slv_reg6[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[4]),
        .Q(slv_reg6[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[5]),
        .Q(slv_reg6[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[6]),
        .Q(slv_reg6[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[7]),
        .Q(slv_reg6[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[8]),
        .Q(slv_reg6[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[9]),
        .Q(slv_reg6[9]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[32]),
        .Q(slv_reg7[0]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[42]),
        .Q(slv_reg7[10]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[43]),
        .Q(slv_reg7[11]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[44]),
        .Q(slv_reg7[12]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[45]),
        .Q(slv_reg7[13]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[46]),
        .Q(slv_reg7[14]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[47]),
        .Q(slv_reg7[15]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[48]),
        .Q(slv_reg7[16]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[49]),
        .Q(slv_reg7[17]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[50]),
        .Q(slv_reg7[18]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[51]),
        .Q(slv_reg7[19]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[33]),
        .Q(slv_reg7[1]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[52]),
        .Q(slv_reg7[20]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[53]),
        .Q(slv_reg7[21]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[54]),
        .Q(slv_reg7[22]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[55]),
        .Q(slv_reg7[23]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[56]),
        .Q(slv_reg7[24]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[57]),
        .Q(slv_reg7[25]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[58]),
        .Q(slv_reg7[26]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[59]),
        .Q(slv_reg7[27]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[60]),
        .Q(slv_reg7[28]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[61]),
        .Q(slv_reg7[29]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[34]),
        .Q(slv_reg7[2]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[62]),
        .Q(slv_reg7[30]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[63]),
        .Q(slv_reg7[31]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[35]),
        .Q(slv_reg7[3]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[36]),
        .Q(slv_reg7[4]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[37]),
        .Q(slv_reg7[5]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[38]),
        .Q(slv_reg7[6]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[39]),
        .Q(slv_reg7[7]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[40]),
        .Q(slv_reg7[8]),
        .R(u_can_inst_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5_0),
        .D(rx_data_w[41]),
        .Q(slv_reg7[9]),
        .R(u_can_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller u_can_inst
       (.D(tx_busy_w),
        .E(slv_reg5_0),
        .Q(slv_reg2),
        .SR(u_can_inst_n_0),
        .can_rx_port(can_rx_port),
        .can_tx_port(can_tx_port),
        .\crc_reg_reg[0] (\slv_reg0_reg_n_0_[0] ),
        .\data_shift_reg[63] ({slv_reg4,slv_reg3}),
        .\rx_data_reg[63] (rx_data_w),
        .\rx_id_reg[10] ({rx_id_w,rx_dlc_w}),
        .rx_valid_w(rx_valid_w),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg1(slv_reg1),
        .tx_done_w(tx_done_w));
endmodule

(* CHECK_LICENSE_TYPE = "soc_can_controller_1_myip_can_modified_1_0,myip_can_modified,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_can_modified,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (can_rx_port,
    can_tx_port,
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
  input can_rx_port;
  output can_tx_port;
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
  wire can_rx_port;
  wire can_tx_port;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .axi_wready_reg(s00_axi_wready),
        .can_rx_port(can_rx_port),
        .can_tx_port(can_tx_port),
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
