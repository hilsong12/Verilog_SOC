// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 28 19:22:29 2026
// Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/user12/data/work/SOC_exam_2026/SOC_exam_2026.gen/sources_1/bd/soc_multiwatch_lcd/ip/soc_multiwatch_lcd_myip_iic_cntr_0_0/soc_multiwatch_lcd_myip_iic_cntr_0_0_sim_netlist.v
// Design      : soc_multiwatch_lcd_myip_iic_cntr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_multiwatch_lcd_myip_iic_cntr_0_0,myip_iic_cntr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_iic_cntr,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module soc_multiwatch_lcd_myip_iic_cntr_0_0
   (scl,
    sda,
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
  output scl;
  output sda;
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
  wire inst_n_0;
  wire inst_n_7;
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
  wire scl;
  wire sda;
  wire sda_INST_0_i_1_n_0;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_myip_iic_cntr inst
       (.SR(inst_n_0),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .ff_old_reg(inst_n_7),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_1(sda_INST_0_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sda_INST_0_i_1
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_7),
        .PRE(inst_n_0),
        .Q(sda_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "I2C_master" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_I2C_master
   (AR,
    scl,
    ff_old_reg,
    sda,
    s00_axi_aclk,
    ff_cur_reg,
    sda_INST_0_i_1,
    s00_axi_aresetn,
    Q);
  output [0:0]AR;
  output scl;
  output ff_old_reg;
  output sda;
  input s00_axi_aclk;
  input ff_cur_reg;
  input sda_INST_0_i_1;
  input s00_axi_aresetn;
  input [6:0]Q;

  wire [0:0]AR;
  wire [6:0]Q;
  wire cnt_bit;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire [2:2]count_usec5;
  wire \count_usec5[0]_i_1_n_0 ;
  wire \count_usec5[1]_i_1_n_0 ;
  wire \count_usec5[2]_i_1_n_0 ;
  wire \count_usec5_reg_n_0_[0] ;
  wire \count_usec5_reg_n_0_[1] ;
  wire [1:0]\ed/p_0_in ;
  wire ed_scl_n_1;
  wire ed_scl_n_2;
  wire ed_scl_n_5;
  wire ed_start_n_0;
  wire ff_cur_reg;
  wire ff_old_reg;
  wire next_state;
  wire \next_state[0]_i_1__0__0_n_0 ;
  wire \next_state[0]_i_2__0_n_0 ;
  wire \next_state[1]_i_1__1_n_0 ;
  wire \next_state[2]_i_1__0__0_n_0 ;
  wire \next_state[2]_i_2__0_n_0 ;
  wire \next_state[3]_i_1__0_n_0 ;
  wire \next_state[4]_i_1__0_n_0 ;
  wire \next_state[5]_i_1__0_n_0 ;
  wire \next_state[6]_i_2_n_0 ;
  wire \next_state[6]_i_3_n_0 ;
  wire \next_state[6]_i_6_n_0 ;
  wire \next_state[6]_i_7_n_0 ;
  wire next_state__1_n_0;
  wire next_state__2_n_0;
  wire next_state__3_n_0;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire \next_state_reg_n_0_[4] ;
  wire \next_state_reg_n_0_[5] ;
  wire \next_state_reg_n_0_[6] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire scl_e_i_1_n_0;
  wire scl_e_i_2_n_0;
  wire scl_e_reg_n_0;
  wire sda;
  wire sda_INST_0_i_1;
  wire sda_INST_0_i_4_n_0;
  wire sda_INST_0_i_6_n_0;
  wire sda_tristate_oe_i_10_n_0;
  wire sda_tristate_oe_i_2_n_0;
  wire sda_tristate_oe_i_3_n_0;
  wire sda_tristate_oe_i_4_n_0;
  wire sda_tristate_oe_i_6_n_0;
  wire sda_tristate_oe_i_7_n_0;
  wire sda_tristate_oe_i_8_n_0;
  wire sda_tristate_oe_reg_n_0;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire stop_flag_i_2_n_0;
  wire stop_flag_reg_n_0;
  wire usec_clk_n_3;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_bit[0]_i_1 
       (.I0(cnt_bit),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \cnt_bit[1]_i_1 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(cnt_bit),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \cnt_bit[2]_i_1 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(cnt_bit),
        .I3(\cnt_bit_reg_n_0_[2] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  FDPE \cnt_bit_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\cnt_bit_reg_n_0_[0] ));
  FDPE \cnt_bit_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .PRE(AR),
        .Q(\cnt_bit_reg_n_0_[1] ));
  FDPE \cnt_bit_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(\cnt_bit_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hCF001000)) 
    \count_usec5[0]_i_1 
       (.I0(count_usec5),
        .I1(\ed/p_0_in [1]),
        .I2(\ed/p_0_in [0]),
        .I3(scl_e_reg_n_0),
        .I4(\count_usec5_reg_n_0_[0] ),
        .O(\count_usec5[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1FF000004000000)) 
    \count_usec5[1]_i_1 
       (.I0(count_usec5),
        .I1(\count_usec5_reg_n_0_[0] ),
        .I2(\ed/p_0_in [1]),
        .I3(\ed/p_0_in [0]),
        .I4(scl_e_reg_n_0),
        .I5(\count_usec5_reg_n_0_[1] ),
        .O(\count_usec5[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF000008000000)) 
    \count_usec5[2]_i_1 
       (.I0(\count_usec5_reg_n_0_[1] ),
        .I1(\count_usec5_reg_n_0_[0] ),
        .I2(\ed/p_0_in [1]),
        .I3(\ed/p_0_in [0]),
        .I4(scl_e_reg_n_0),
        .I5(count_usec5),
        .O(\count_usec5[2]_i_1_n_0 ));
  FDCE \count_usec5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_usec5[0]_i_1_n_0 ),
        .Q(\count_usec5_reg_n_0_[0] ));
  FDCE \count_usec5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_usec5[1]_i_1_n_0 ),
        .Q(\count_usec5_reg_n_0_[1] ));
  FDCE \count_usec5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_usec5[2]_i_1_n_0 ),
        .Q(count_usec5));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_1 ed_scl
       (.AR(AR),
        .E(next_state),
        .Q({\state_reg_n_0_[6] ,\state_reg_n_0_[5] ,\state_reg_n_0_[4] ,\state_reg_n_0_[3] ,\state_reg_n_0_[2] }),
        .cnt_bit(cnt_bit),
        .\cnt_bit_reg[0] (\next_state[2]_i_2__0_n_0 ),
        .count_usec5(count_usec5),
        .ff_cur_reg_0(ed_scl_n_2),
        .ff_cur_reg_1(ed_scl_n_5),
        .ff_old_reg_0(ff_old_reg),
        .\next_state_reg[0] (next_state__3_n_0),
        .\next_state_reg[0]_0 (\next_state[6]_i_3_n_0 ),
        .\next_state_reg[0]_1 (ed_start_n_0),
        .\next_state_reg[0]_2 (\cnt_bit_reg_n_0_[0] ),
        .\next_state_reg[0]_3 (\cnt_bit_reg_n_0_[1] ),
        .\next_state_reg[0]_4 (\cnt_bit_reg_n_0_[2] ),
        .\next_state_reg[0]_5 (\next_state[6]_i_7_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .scl(scl),
        .sda_INST_0_i_1(sda_INST_0_i_4_n_0),
        .sda_INST_0_i_1_0(sda_tristate_oe_i_6_n_0),
        .sda_INST_0_i_1_1(sda_INST_0_i_1),
        .sda_INST_0_i_1_2(\count_usec5_reg_n_0_[0] ),
        .sda_INST_0_i_1_3(\count_usec5_reg_n_0_[1] ),
        .sda_INST_0_i_1_4(sda_tristate_oe_i_10_n_0),
        .sda_INST_0_i_1_5(sda_INST_0_i_6_n_0),
        .sda_tristate_oe_reg(ed_scl_n_1),
        .sda_tristate_oe_reg_0(sda_tristate_oe_i_2_n_0),
        .sda_tristate_oe_reg_1(sda_tristate_oe_i_3_n_0),
        .sda_tristate_oe_reg_2(sda_tristate_oe_i_4_n_0),
        .sda_tristate_oe_reg_3(sda_tristate_oe_reg_n_0),
        .sda_tristate_oe_reg_4(\next_state[6]_i_6_n_0 ),
        .stop_flag_reg(stop_flag_i_2_n_0),
        .stop_flag_reg_0(stop_flag_reg_n_0));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_2 ed_start
       (.AR(AR),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .ff_cur_reg_0(ff_cur_reg),
        .\next_state_reg[0] (\next_state[2]_i_2__0_n_0 ),
        .\next_state_reg[0]_0 (ed_scl_n_5),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[1] (ed_start_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \next_state[0]_i_1__0__0 
       (.I0(\next_state[0]_i_2__0_n_0 ),
        .I1(\state_reg_n_0_[6] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\next_state[0]_i_1__0__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEEEE9)) 
    \next_state[0]_i_2__0 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\next_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \next_state[1]_i_1__1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\next_state[2]_i_2__0_n_0 ),
        .O(\next_state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \next_state[2]_i_1__0__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\next_state[2]_i_2__0_n_0 ),
        .O(\next_state[2]_i_1__0__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[2]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\next_state[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01100000)) 
    \next_state[3]_i_1__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\next_state[6]_i_6_n_0 ),
        .O(\next_state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \next_state[4]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\next_state[6]_i_6_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(stop_flag_reg_n_0),
        .O(\next_state[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \next_state[5]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\next_state[6]_i_6_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(stop_flag_reg_n_0),
        .O(\next_state[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \next_state[6]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\next_state[6]_i_6_n_0 ),
        .O(\next_state[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \next_state[6]_i_3 
       (.I0(\count_usec5_reg_n_0_[1] ),
        .I1(\count_usec5_reg_n_0_[0] ),
        .I2(count_usec5),
        .O(\next_state[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_state[6]_i_6 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[6] ),
        .O(\next_state[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[6]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\next_state[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    next_state__1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[6] ),
        .O(next_state__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    next_state__2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[6] ),
        .O(next_state__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000116)) 
    next_state__3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(next_state__1_n_0),
        .I4(next_state__2_n_0),
        .O(next_state__3_n_0));
  FDPE \next_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .D(\next_state[0]_i_1__0__0_n_0 ),
        .PRE(AR),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE \next_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[1]_i_1__1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ));
  FDCE \next_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[2]_i_1__0__0_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  FDCE \next_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[3]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[3] ));
  FDCE \next_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[4]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[4] ));
  FDCE \next_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[5]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[5] ));
  FDCE \next_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[6]_i_2_n_0 ),
        .Q(\next_state_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hF0F0FFFFF0F00020)) 
    scl_e_i_1
       (.I0(\next_state[6]_i_6_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\next_state[2]_i_2__0_n_0 ),
        .I4(scl_e_i_2_n_0),
        .I5(scl_e_reg_n_0),
        .O(scl_e_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00001404)) 
    scl_e_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\next_state[6]_i_3_n_0 ),
        .I4(sda_tristate_oe_i_10_n_0),
        .O(scl_e_i_2_n_0));
  FDCE scl_e_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(scl_e_i_1_n_0),
        .Q(scl_e_reg_n_0));
  FDPE scl_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(usec_clk_n_3),
        .PRE(AR),
        .Q(scl));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0
       (.I0(sda_tristate_oe_reg_n_0),
        .I1(sda_INST_0_i_1),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01001600)) 
    sda_INST_0_i_4
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\next_state[6]_i_6_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .O(sda_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sda_INST_0_i_6
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(sda_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sda_tristate_oe_i_10
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .O(sda_tristate_oe_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    sda_tristate_oe_i_2
       (.I0(sda_tristate_oe_i_7_n_0),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(Q[4]),
        .I4(\state_reg_n_0_[4] ),
        .I5(\cnt_bit_reg_n_0_[1] ),
        .O(sda_tristate_oe_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    sda_tristate_oe_i_3
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(sda_tristate_oe_i_8_n_0),
        .O(sda_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    sda_tristate_oe_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[6] ),
        .I5(\next_state[6]_i_3_n_0 ),
        .O(sda_tristate_oe_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00030320)) 
    sda_tristate_oe_i_6
       (.I0(\next_state[6]_i_3_n_0 ),
        .I1(sda_tristate_oe_i_10_n_0),
        .I2(\state_reg_n_0_[6] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(sda_tristate_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_tristate_oe_i_7
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(Q[5]),
        .I4(\cnt_bit_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(sda_tristate_oe_i_7_n_0));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    sda_tristate_oe_i_8
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(Q[0]),
        .I4(\cnt_bit_reg_n_0_[2] ),
        .I5(Q[3]),
        .O(sda_tristate_oe_i_8_n_0));
  FDCE sda_tristate_oe_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ed_scl_n_1),
        .Q(sda_tristate_oe_reg_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[0] ),
        .PRE(AR),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[1] ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[2] ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[3] ),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[4] ),
        .Q(\state_reg_n_0_[4] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[5] ),
        .Q(\state_reg_n_0_[5] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[6] ),
        .Q(\state_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    stop_flag_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\next_state[6]_i_6_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .O(stop_flag_i_2_n_0));
  FDCE stop_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ed_scl_n_2),
        .Q(stop_flag_reg_n_0));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_clock_usec_3 usec_clk
       (.AR(AR),
        .count_usec5(count_usec5),
        .ff_old_reg(usec_clk_n_3),
        .p_0_in(\ed/p_0_in ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .scl_reg(scl_e_reg_n_0));
endmodule

(* ORIG_REF_NAME = "clock_usec" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_clock_usec
   (ff_old_reg,
    O,
    \count_usec_reg[7] ,
    \count_usec_reg[11] ,
    \count_usec_reg[15] ,
    \count_usec_reg[19] ,
    \count_usec_reg[21] ,
    s00_axi_aclk,
    AR,
    count_usec_reg_0_sp_1,
    count_usec_reg_3_sp_1,
    \count_usec_reg[3]_0 ,
    count_usec_reg,
    \count_usec_reg[3]_1 );
  output ff_old_reg;
  output [3:0]O;
  output [3:0]\count_usec_reg[7] ;
  output [3:0]\count_usec_reg[11] ;
  output [3:0]\count_usec_reg[15] ;
  output [3:0]\count_usec_reg[19] ;
  output [1:0]\count_usec_reg[21] ;
  input s00_axi_aclk;
  input [0:0]AR;
  input count_usec_reg_0_sp_1;
  input count_usec_reg_3_sp_1;
  input \count_usec_reg[3]_0 ;
  input [18:0]count_usec_reg;
  input \count_usec_reg[3]_1 ;

  wire [0:0]AR;
  wire [3:0]O;
  wire clk_usec;
  wire clk_usec_i_1_n_0;
  wire clk_usec_i_2_n_0;
  wire [5:0]cnt_sysclk_reg;
  wire [18:0]count_usec_reg;
  wire [3:0]\count_usec_reg[11] ;
  wire [3:0]\count_usec_reg[15] ;
  wire [3:0]\count_usec_reg[19] ;
  wire [1:0]\count_usec_reg[21] ;
  wire \count_usec_reg[3]_0 ;
  wire \count_usec_reg[3]_1 ;
  wire [3:0]\count_usec_reg[7] ;
  wire count_usec_reg_0_sn_1;
  wire count_usec_reg_3_sn_1;
  wire ff_old_reg;
  wire [5:0]p_0_in;
  wire s00_axi_aclk;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  assign count_usec_reg_3_sn_1 = count_usec_reg_3_sp_1;
  LUT2 #(
    .INIT(4'h6)) 
    clk_usec_i_1
       (.I0(clk_usec_i_2_n_0),
        .I1(clk_usec),
        .O(clk_usec_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    clk_usec_i_2
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[4]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[0]),
        .I4(cnt_sysclk_reg[3]),
        .I5(cnt_sysclk_reg[2]),
        .O(clk_usec_i_2_n_0));
  FDCE clk_usec_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_usec_i_1_n_0),
        .Q(clk_usec));
  LUT6 #(
    .INIT(64'h00010F0F0F0F0F0F)) 
    \cnt_sysclk[0]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \cnt_sysclk[1]_i_1__0 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .I2(cnt_sysclk_reg[4]),
        .I3(cnt_sysclk_reg[5]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h006A6A6A)) 
    \cnt_sysclk[2]_i_1__0 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[0]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[4]),
        .I4(cnt_sysclk_reg[5]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h00006CCC6CCC6CCC)) 
    \cnt_sysclk[3]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000180007FFF8000)) 
    \cnt_sysclk[4]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h40000002AAAAAAAA)) 
    \cnt_sysclk[5]_i_1 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[2]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[0]),
        .I4(cnt_sysclk_reg[3]),
        .I5(cnt_sysclk_reg[4]),
        .O(p_0_in[5]));
  FDCE \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(cnt_sysclk_reg[0]));
  FDCE \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(cnt_sysclk_reg[1]));
  FDCE \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(cnt_sysclk_reg[2]));
  FDCE \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(cnt_sysclk_reg[3]));
  FDCE \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(cnt_sysclk_reg[4]));
  FDCE \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(cnt_sysclk_reg[5]));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_n ed
       (.AR(AR),
        .O(O),
        .clk_usec(clk_usec),
        .count_usec_reg(count_usec_reg),
        .\count_usec_reg[11] (\count_usec_reg[11] ),
        .\count_usec_reg[15] (\count_usec_reg[15] ),
        .\count_usec_reg[19] (\count_usec_reg[19] ),
        .\count_usec_reg[21] (\count_usec_reg[21] ),
        .\count_usec_reg[3]_0 (\count_usec_reg[3]_0 ),
        .\count_usec_reg[3]_1 (\count_usec_reg[3]_1 ),
        .\count_usec_reg[7] (\count_usec_reg[7] ),
        .count_usec_reg_0_sp_1(count_usec_reg_0_sn_1),
        .count_usec_reg_3_sp_1(count_usec_reg_3_sn_1),
        .ff_old_reg_0(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "clock_usec" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_clock_usec_3
   (p_0_in,
    AR,
    ff_old_reg,
    s00_axi_aclk,
    count_usec5,
    scl_reg,
    scl,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output [0:0]AR;
  output ff_old_reg;
  input s00_axi_aclk;
  input [0:0]count_usec5;
  input scl_reg;
  input scl;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire clk_usec_i_1__0_n_0;
  wire clk_usec_i_2__0_n_0;
  wire clk_usec_reg_n_0;
  wire [5:0]cnt_sysclk_reg;
  wire [0:0]count_usec5;
  wire ff_old_reg;
  wire [1:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire scl_reg;

  LUT2 #(
    .INIT(4'h6)) 
    clk_usec_i_1__0
       (.I0(clk_usec_i_2__0_n_0),
        .I1(clk_usec_reg_n_0),
        .O(clk_usec_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    clk_usec_i_2__0
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[4]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[0]),
        .I4(cnt_sysclk_reg[3]),
        .I5(cnt_sysclk_reg[2]),
        .O(clk_usec_i_2__0_n_0));
  FDCE clk_usec_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_usec_i_1__0_n_0),
        .Q(clk_usec_reg_n_0));
  LUT6 #(
    .INIT(64'h00010F0F0F0F0F0F)) 
    \cnt_sysclk[0]_i_1__0 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \cnt_sysclk[1]_i_1 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .I2(cnt_sysclk_reg[4]),
        .I3(cnt_sysclk_reg[5]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006A6A6A)) 
    \cnt_sysclk[2]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[0]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[4]),
        .I4(cnt_sysclk_reg[5]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h00006CCC6CCC6CCC)) 
    \cnt_sysclk[3]_i_1__0 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000180007FFF8000)) 
    \cnt_sysclk[4]_i_1__0 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[1]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[5]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h40000002AAAAAAAA)) 
    \cnt_sysclk[5]_i_1__0 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[2]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[0]),
        .I4(cnt_sysclk_reg[3]),
        .I5(cnt_sysclk_reg[4]),
        .O(p_0_in__0[5]));
  FDCE \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(cnt_sysclk_reg[0]));
  FDCE \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(cnt_sysclk_reg[1]));
  FDCE \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(cnt_sysclk_reg[2]));
  FDCE \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(cnt_sysclk_reg[3]));
  FDCE \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(cnt_sysclk_reg[4]));
  FDCE \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(cnt_sysclk_reg[5]));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_n_4 ed
       (.count_usec5(count_usec5),
        .ff_cur_reg_0(clk_usec_reg_n_0),
        .ff_old_reg_0(ff_old_reg),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AR),
        .scl(scl),
        .scl_reg(scl_reg));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_n
   (ff_old_reg_0,
    O,
    \count_usec_reg[7] ,
    \count_usec_reg[11] ,
    \count_usec_reg[15] ,
    \count_usec_reg[19] ,
    \count_usec_reg[21] ,
    clk_usec,
    s00_axi_aclk,
    AR,
    count_usec_reg_0_sp_1,
    count_usec_reg_3_sp_1,
    \count_usec_reg[3]_0 ,
    count_usec_reg,
    \count_usec_reg[3]_1 );
  output ff_old_reg_0;
  output [3:0]O;
  output [3:0]\count_usec_reg[7] ;
  output [3:0]\count_usec_reg[11] ;
  output [3:0]\count_usec_reg[15] ;
  output [3:0]\count_usec_reg[19] ;
  output [1:0]\count_usec_reg[21] ;
  input clk_usec;
  input s00_axi_aclk;
  input [0:0]AR;
  input count_usec_reg_0_sp_1;
  input count_usec_reg_3_sp_1;
  input \count_usec_reg[3]_0 ;
  input [18:0]count_usec_reg;
  input \count_usec_reg[3]_1 ;

  wire [0:0]AR;
  wire [3:0]O;
  wire clk_usec;
  wire \count_usec[0]_i_3_n_0 ;
  wire \count_usec[0]_i_4_n_0 ;
  wire \count_usec[0]_i_5_n_0 ;
  wire \count_usec[0]_i_6_n_0 ;
  wire \count_usec[0]_i_7_n_0 ;
  wire \count_usec[12]_i_2_n_0 ;
  wire \count_usec[12]_i_3_n_0 ;
  wire \count_usec[12]_i_4_n_0 ;
  wire \count_usec[12]_i_5_n_0 ;
  wire \count_usec[16]_i_2_n_0 ;
  wire \count_usec[16]_i_3_n_0 ;
  wire \count_usec[16]_i_4_n_0 ;
  wire \count_usec[16]_i_5_n_0 ;
  wire \count_usec[20]_i_2_n_0 ;
  wire \count_usec[20]_i_3_n_0 ;
  wire \count_usec[4]_i_2_n_0 ;
  wire \count_usec[4]_i_3_n_0 ;
  wire \count_usec[4]_i_4_n_0 ;
  wire \count_usec[4]_i_5_n_0 ;
  wire \count_usec[8]_i_2_n_0 ;
  wire \count_usec[8]_i_3_n_0 ;
  wire \count_usec[8]_i_4_n_0 ;
  wire \count_usec[8]_i_5_n_0 ;
  wire [18:0]count_usec_reg;
  wire \count_usec_reg[0]_i_2_n_0 ;
  wire \count_usec_reg[0]_i_2_n_1 ;
  wire \count_usec_reg[0]_i_2_n_2 ;
  wire \count_usec_reg[0]_i_2_n_3 ;
  wire [3:0]\count_usec_reg[11] ;
  wire \count_usec_reg[12]_i_1_n_0 ;
  wire \count_usec_reg[12]_i_1_n_1 ;
  wire \count_usec_reg[12]_i_1_n_2 ;
  wire \count_usec_reg[12]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[15] ;
  wire \count_usec_reg[16]_i_1_n_0 ;
  wire \count_usec_reg[16]_i_1_n_1 ;
  wire \count_usec_reg[16]_i_1_n_2 ;
  wire \count_usec_reg[16]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[19] ;
  wire \count_usec_reg[20]_i_1_n_3 ;
  wire [1:0]\count_usec_reg[21] ;
  wire \count_usec_reg[3]_0 ;
  wire \count_usec_reg[3]_1 ;
  wire \count_usec_reg[4]_i_1_n_0 ;
  wire \count_usec_reg[4]_i_1_n_1 ;
  wire \count_usec_reg[4]_i_1_n_2 ;
  wire \count_usec_reg[4]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[7] ;
  wire \count_usec_reg[8]_i_1_n_0 ;
  wire \count_usec_reg[8]_i_1_n_1 ;
  wire \count_usec_reg[8]_i_1_n_2 ;
  wire \count_usec_reg[8]_i_1_n_3 ;
  wire count_usec_reg_0_sn_1;
  wire count_usec_reg_3_sn_1;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire [3:1]\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED ;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  assign count_usec_reg_3_sn_1 = count_usec_reg_3_sp_1;
  LUT3 #(
    .INIT(8'h2F)) 
    \count_usec[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(count_usec_reg_0_sn_1),
        .O(ff_old_reg_0));
  LUT3 #(
    .INIT(8'h40)) 
    \count_usec[0]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_4 
       (.I0(count_usec_reg[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_5 
       (.I0(\count_usec_reg[3]_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_6 
       (.I0(count_usec_reg_3_sn_1),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hCC4C)) 
    \count_usec[0]_i_7 
       (.I0(\count_usec_reg[3]_1 ),
        .I1(count_usec_reg_0_sn_1),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\count_usec[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_2 
       (.I0(count_usec_reg[12]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_3 
       (.I0(count_usec_reg[11]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_4 
       (.I0(count_usec_reg[10]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_5 
       (.I0(count_usec_reg[9]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_2 
       (.I0(count_usec_reg[16]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_3 
       (.I0(count_usec_reg[15]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_4 
       (.I0(count_usec_reg[14]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_5 
       (.I0(count_usec_reg[13]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[20]_i_2 
       (.I0(count_usec_reg[18]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[20]_i_3 
       (.I0(count_usec_reg[17]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_2 
       (.I0(count_usec_reg[4]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_3 
       (.I0(count_usec_reg[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_4 
       (.I0(count_usec_reg[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_5 
       (.I0(count_usec_reg[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_2 
       (.I0(count_usec_reg[8]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_3 
       (.I0(count_usec_reg[7]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_4 
       (.I0(count_usec_reg[6]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_5 
       (.I0(count_usec_reg[5]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_usec_reg[0]_i_2_n_0 ,\count_usec_reg[0]_i_2_n_1 ,\count_usec_reg[0]_i_2_n_2 ,\count_usec_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_usec[0]_i_3_n_0 }),
        .O(O),
        .S({\count_usec[0]_i_4_n_0 ,\count_usec[0]_i_5_n_0 ,\count_usec[0]_i_6_n_0 ,\count_usec[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[12]_i_1 
       (.CI(\count_usec_reg[8]_i_1_n_0 ),
        .CO({\count_usec_reg[12]_i_1_n_0 ,\count_usec_reg[12]_i_1_n_1 ,\count_usec_reg[12]_i_1_n_2 ,\count_usec_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[15] ),
        .S({\count_usec[12]_i_2_n_0 ,\count_usec[12]_i_3_n_0 ,\count_usec[12]_i_4_n_0 ,\count_usec[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[16]_i_1 
       (.CI(\count_usec_reg[12]_i_1_n_0 ),
        .CO({\count_usec_reg[16]_i_1_n_0 ,\count_usec_reg[16]_i_1_n_1 ,\count_usec_reg[16]_i_1_n_2 ,\count_usec_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[19] ),
        .S({\count_usec[16]_i_2_n_0 ,\count_usec[16]_i_3_n_0 ,\count_usec[16]_i_4_n_0 ,\count_usec[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[20]_i_1 
       (.CI(\count_usec_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_usec_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED [3:2],\count_usec_reg[21] }),
        .S({1'b0,1'b0,\count_usec[20]_i_2_n_0 ,\count_usec[20]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[4]_i_1 
       (.CI(\count_usec_reg[0]_i_2_n_0 ),
        .CO({\count_usec_reg[4]_i_1_n_0 ,\count_usec_reg[4]_i_1_n_1 ,\count_usec_reg[4]_i_1_n_2 ,\count_usec_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[7] ),
        .S({\count_usec[4]_i_2_n_0 ,\count_usec[4]_i_3_n_0 ,\count_usec[4]_i_4_n_0 ,\count_usec[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_usec_reg[8]_i_1 
       (.CI(\count_usec_reg[4]_i_1_n_0 ),
        .CO({\count_usec_reg[8]_i_1_n_0 ,\count_usec_reg[8]_i_1_n_1 ,\count_usec_reg[8]_i_1_n_2 ,\count_usec_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[11] ),
        .S({\count_usec[8]_i_2_n_0 ,\count_usec[8]_i_3_n_0 ,\count_usec[8]_i_4_n_0 ,\count_usec[8]_i_5_n_0 }));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_usec),
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
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_n_4
   (p_0_in,
    s00_axi_aresetn_0,
    ff_old_reg_0,
    ff_cur_reg_0,
    s00_axi_aclk,
    count_usec5,
    scl_reg,
    scl,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output s00_axi_aresetn_0;
  output ff_old_reg_0;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]count_usec5;
  input scl_reg;
  input scl;
  input s00_axi_aresetn;

  wire [0:0]count_usec5;
  wire ff_cur_reg_0;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire scl;
  wire scl_reg;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(ff_cur_reg_0),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT5 #(
    .INIT(32'hF7FF08FF)) 
    scl_i_1
       (.I0(p_0_in[0]),
        .I1(count_usec5),
        .I2(p_0_in[1]),
        .I3(scl_reg),
        .I4(scl),
        .O(ff_old_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    scl_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p
   (\state_reg[0] ,
    Q,
    s00_axi_aclk,
    AR,
    \next_state_reg[0] ,
    busy,
    \next_state[2]_i_4_0 );
  output \state_reg[0] ;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input [2:0]\next_state_reg[0] ;
  input busy;
  input \next_state[2]_i_4_0 ;

  wire [0:0]AR;
  wire [0:0]Q;
  wire busy;
  wire \next_state[2]_i_4_0 ;
  wire \next_state[2]_i_8_n_0 ;
  wire [2:0]\next_state_reg[0] ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire \state_reg[0] ;

  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \next_state[2]_i_4 
       (.I0(\next_state[2]_i_8_n_0 ),
        .I1(\next_state_reg[0] [0]),
        .I2(\next_state_reg[0] [2]),
        .I3(\next_state_reg[0] [1]),
        .I4(busy),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \next_state[2]_i_8 
       (.I0(\next_state_reg[0] [2]),
        .I1(\next_state_reg[0] [1]),
        .I2(\next_state[2]_i_4_0 ),
        .I3(\next_state_reg[0] [0]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\next_state[2]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_0
   (ff_cur_reg_0,
    E,
    send_byte,
    s00_axi_aclk,
    AR,
    D,
    busy_reg,
    Q,
    data0,
    \next_state_reg[0] ,
    \next_state_reg[0]_0 ,
    \next_state_reg[0]_1 );
  output ff_cur_reg_0;
  output [0:0]E;
  input send_byte;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]D;
  input busy_reg;
  input [3:0]Q;
  input data0;
  input \next_state_reg[0] ;
  input \next_state_reg[0]_0 ;
  input \next_state_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire busy_reg;
  wire data0;
  wire ff_cur_reg_0;
  wire \next_state[5]_i_3_n_0 ;
  wire \next_state_reg[0] ;
  wire \next_state_reg[0]_0 ;
  wire \next_state_reg[0]_1 ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire send_byte;

  LUT4 #(
    .INIT(16'h2F20)) 
    busy_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(D),
        .I3(busy_reg),
        .O(ff_cur_reg_0));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(send_byte),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT5 #(
    .INIT(32'hEFCEEFEF)) 
    \next_state[5]_i_1 
       (.I0(Q[1]),
        .I1(\next_state[5]_i_3_n_0 ),
        .I2(data0),
        .I3(Q[2]),
        .I4(\next_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hFAEBFAFBFAEBFAEB)) 
    \next_state[5]_i_3 
       (.I0(\next_state_reg[0]_0 ),
        .I1(\next_state_reg[0]_1 ),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\next_state[5]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_1
   (ff_old_reg_0,
    sda_tristate_oe_reg,
    ff_cur_reg_0,
    cnt_bit,
    E,
    ff_cur_reg_1,
    scl,
    s00_axi_aclk,
    AR,
    sda_INST_0_i_1,
    sda_INST_0_i_1_0,
    sda_INST_0_i_1_1,
    sda_tristate_oe_reg_0,
    sda_tristate_oe_reg_1,
    sda_tristate_oe_reg_2,
    sda_tristate_oe_reg_3,
    stop_flag_reg,
    stop_flag_reg_0,
    Q,
    sda_tristate_oe_reg_4,
    \cnt_bit_reg[0] ,
    count_usec5,
    sda_INST_0_i_1_2,
    sda_INST_0_i_1_3,
    sda_INST_0_i_1_4,
    sda_INST_0_i_1_5,
    \next_state_reg[0] ,
    \next_state_reg[0]_0 ,
    \next_state_reg[0]_1 ,
    \next_state_reg[0]_2 ,
    \next_state_reg[0]_3 ,
    \next_state_reg[0]_4 ,
    \next_state_reg[0]_5 );
  output ff_old_reg_0;
  output sda_tristate_oe_reg;
  output ff_cur_reg_0;
  output cnt_bit;
  output [0:0]E;
  output ff_cur_reg_1;
  input scl;
  input s00_axi_aclk;
  input [0:0]AR;
  input sda_INST_0_i_1;
  input sda_INST_0_i_1_0;
  input sda_INST_0_i_1_1;
  input sda_tristate_oe_reg_0;
  input sda_tristate_oe_reg_1;
  input sda_tristate_oe_reg_2;
  input sda_tristate_oe_reg_3;
  input stop_flag_reg;
  input stop_flag_reg_0;
  input [4:0]Q;
  input sda_tristate_oe_reg_4;
  input \cnt_bit_reg[0] ;
  input [0:0]count_usec5;
  input sda_INST_0_i_1_2;
  input sda_INST_0_i_1_3;
  input sda_INST_0_i_1_4;
  input sda_INST_0_i_1_5;
  input \next_state_reg[0] ;
  input \next_state_reg[0]_0 ;
  input \next_state_reg[0]_1 ;
  input \next_state_reg[0]_2 ;
  input \next_state_reg[0]_3 ;
  input \next_state_reg[0]_4 ;
  input \next_state_reg[0]_5 ;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]Q;
  wire cnt_bit;
  wire \cnt_bit_reg[0] ;
  wire [0:0]count_usec5;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire ff_old_reg_0;
  wire \next_state[6]_i_4_n_0 ;
  wire \next_state_reg[0] ;
  wire \next_state_reg[0]_0 ;
  wire \next_state_reg[0]_1 ;
  wire \next_state_reg[0]_2 ;
  wire \next_state_reg[0]_3 ;
  wire \next_state_reg[0]_4 ;
  wire \next_state_reg[0]_5 ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire scl;
  wire sda0;
  wire sda_INST_0_i_1;
  wire sda_INST_0_i_1_0;
  wire sda_INST_0_i_1_1;
  wire sda_INST_0_i_1_2;
  wire sda_INST_0_i_1_3;
  wire sda_INST_0_i_1_4;
  wire sda_INST_0_i_1_5;
  wire sda_INST_0_i_5_n_0;
  wire sda_tristate_oe_i_5_n_0;
  wire sda_tristate_oe_i_9_n_0;
  wire sda_tristate_oe_reg;
  wire sda_tristate_oe_reg_0;
  wire sda_tristate_oe_reg_1;
  wire sda_tristate_oe_reg_2;
  wire sda_tristate_oe_reg_3;
  wire sda_tristate_oe_reg_4;
  wire stop_flag_reg;
  wire stop_flag_reg_0;

  LUT6 #(
    .INIT(64'h0000060000000000)) 
    \cnt_bit[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\cnt_bit_reg[0] ),
        .I5(sda_tristate_oe_reg_4),
        .O(cnt_bit));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(scl),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFFFFFFD5)) 
    \next_state[6]_i_1 
       (.I0(\next_state_reg[0] ),
        .I1(Q[4]),
        .I2(\next_state_reg[0]_0 ),
        .I3(\next_state[6]_i_4_n_0 ),
        .I4(\next_state_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \next_state[6]_i_4 
       (.I0(\next_state_reg[0]_2 ),
        .I1(\next_state_reg[0]_3 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\next_state_reg[0]_4 ),
        .I5(\next_state_reg[0]_5 ),
        .O(\next_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[6]_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(ff_cur_reg_1));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    sda_INST_0_i_2
       (.I0(sda0),
        .I1(sda_INST_0_i_1),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(sda_INST_0_i_1_0),
        .I5(sda_INST_0_i_1_1),
        .O(ff_old_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEEE)) 
    sda_INST_0_i_3
       (.I0(sda_INST_0_i_5_n_0),
        .I1(count_usec5),
        .I2(sda_INST_0_i_1_2),
        .I3(sda_INST_0_i_1_3),
        .I4(sda_INST_0_i_1_4),
        .I5(sda_INST_0_i_1_5),
        .O(sda0));
  LUT6 #(
    .INIT(64'h0202020202020200)) 
    sda_INST_0_i_5
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(sda_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    sda_tristate_oe_i_1
       (.I0(sda_tristate_oe_reg_0),
        .I1(sda_tristate_oe_reg_1),
        .I2(sda_tristate_oe_reg_2),
        .I3(sda_tristate_oe_i_5_n_0),
        .I4(sda_INST_0_i_1_0),
        .I5(sda_tristate_oe_reg_3),
        .O(sda_tristate_oe_reg));
  LUT6 #(
    .INIT(64'h0000002000202080)) 
    sda_tristate_oe_i_5
       (.I0(sda_tristate_oe_i_9_n_0),
        .I1(Q[1]),
        .I2(sda_tristate_oe_reg_4),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(sda_tristate_oe_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sda_tristate_oe_i_9
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(sda_tristate_oe_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    stop_flag_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(stop_flag_reg),
        .I3(stop_flag_reg_0),
        .O(ff_cur_reg_0));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_2
   (\state_reg[1] ,
    ff_cur_reg_0,
    s00_axi_aclk,
    AR,
    Q,
    \next_state_reg[0] ,
    \next_state_reg[0]_0 );
  output \state_reg[1] ;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input [1:0]Q;
  input \next_state_reg[0] ;
  input \next_state_reg[0]_0 ;

  wire [0:0]AR;
  wire [1:0]Q;
  wire ff_cur_reg_0;
  wire \next_state_reg[0] ;
  wire \next_state_reg[0]_0 ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire \state_reg[1] ;

  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \next_state[6]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\next_state_reg[0] ),
        .I5(\next_state_reg[0]_0 ),
        .O(\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "i2c_lcd_send_byte" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_i2c_lcd_send_byte
   (AR,
    scl,
    busy,
    \state_reg[2]_0 ,
    \slv_reg1_reg[1] ,
    busy_reg_0,
    ff_old_reg,
    D,
    sda,
    E,
    busy_reg_1,
    busy_reg_2,
    s00_axi_rdata,
    s00_axi_aclk,
    send_byte,
    Q,
    rs_byte_reg,
    data2,
    init_flag_reg,
    init_flag_reg_0,
    sda_INST_0_i_1,
    \cnt_data_reg[10] ,
    \cnt_data_reg[5] ,
    \cnt_data_reg[6] ,
    \next_state_reg[0]_0 ,
    \next_state_reg[0]_1 ,
    \cnt_data_reg[10]_0 ,
    s00_axi_aresetn,
    \data_reg[7]_0 ,
    sel0,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[0]_0 ,
    \s00_axi_rdata[0]_1 );
  output [0:0]AR;
  output scl;
  output busy;
  output \state_reg[2]_0 ;
  output \slv_reg1_reg[1] ;
  output busy_reg_0;
  output ff_old_reg;
  output [10:0]D;
  output sda;
  output [0:0]E;
  output [0:0]busy_reg_1;
  output busy_reg_2;
  output [0:0]s00_axi_rdata;
  input s00_axi_aclk;
  input send_byte;
  input [2:0]Q;
  input [1:0]rs_byte_reg;
  input [4:0]data2;
  input init_flag_reg;
  input init_flag_reg_0;
  input sda_INST_0_i_1;
  input [10:0]\cnt_data_reg[10] ;
  input \cnt_data_reg[5] ;
  input \cnt_data_reg[6] ;
  input \next_state_reg[0]_0 ;
  input \next_state_reg[0]_1 ;
  input \cnt_data_reg[10]_0 ;
  input s00_axi_aresetn;
  input [3:0]\data_reg[7]_0 ;
  input [2:0]sel0;
  input s00_axi_rdata_0_sp_1;
  input [0:0]\s00_axi_rdata[0]_0 ;
  input [0:0]\s00_axi_rdata[0]_1 ;

  wire [0:0]AR;
  wire [10:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire busy;
  wire busy_reg_0;
  wire [0:0]busy_reg_1;
  wire busy_reg_2;
  wire [10:0]\cnt_data_reg[10] ;
  wire \cnt_data_reg[10]_0 ;
  wire \cnt_data_reg[5] ;
  wire \cnt_data_reg[6] ;
  wire comm_start_i_1_n_0;
  wire comm_start_reg_n_0;
  wire [21:3]count_usec_reg;
  wire \count_usec_reg_n_0_[0] ;
  wire \count_usec_reg_n_0_[1] ;
  wire \count_usec_reg_n_0_[2] ;
  wire data;
  wire data0;
  wire [7:0]data0_in;
  wire [4:0]data2;
  wire \data[7]_i_3_n_0 ;
  wire [3:0]\data_reg[7]_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire ed_start_n_0;
  wire ff_old_reg;
  wire init_flag_reg;
  wire init_flag_reg_0;
  wire next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1__0_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire \next_state[4]_i_1_n_0 ;
  wire \next_state[5]_i_10_n_0 ;
  wire \next_state[5]_i_11_n_0 ;
  wire \next_state[5]_i_2_n_0 ;
  wire \next_state[5]_i_5_n_0 ;
  wire \next_state[5]_i_6_n_0 ;
  wire \next_state[5]_i_7_n_0 ;
  wire \next_state[5]_i_8_n_0 ;
  wire \next_state[5]_i_9_n_0 ;
  wire \next_state_reg[0]_0 ;
  wire \next_state_reg[0]_1 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire \next_state_reg_n_0_[4] ;
  wire \next_state_reg_n_0_[5] ;
  wire rs_byte_i_2_n_0;
  wire [1:0]rs_byte_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_rdata;
  wire [0:0]\s00_axi_rdata[0]_0 ;
  wire [0:0]\s00_axi_rdata[0]_1 ;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire scl;
  wire sda;
  wire sda_INST_0_i_1;
  wire [2:0]sel0;
  wire send_byte;
  wire \slv_reg1_reg[1] ;
  wire [5:0]state;
  wire \state_reg[2]_0 ;
  wire usec_clk_n_0;
  wire usec_clk_n_1;
  wire usec_clk_n_10;
  wire usec_clk_n_11;
  wire usec_clk_n_12;
  wire usec_clk_n_13;
  wire usec_clk_n_14;
  wire usec_clk_n_15;
  wire usec_clk_n_16;
  wire usec_clk_n_17;
  wire usec_clk_n_18;
  wire usec_clk_n_19;
  wire usec_clk_n_2;
  wire usec_clk_n_20;
  wire usec_clk_n_21;
  wire usec_clk_n_22;
  wire usec_clk_n_3;
  wire usec_clk_n_4;
  wire usec_clk_n_5;
  wire usec_clk_n_6;
  wire usec_clk_n_7;
  wire usec_clk_n_8;
  wire usec_clk_n_9;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  FDCE busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ed_start_n_0),
        .Q(busy));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_data[0]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000470000)) 
    \cnt_data[10]_i_1 
       (.I0(init_flag_reg),
        .I1(busy),
        .I2(send_byte),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(busy_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cnt_data[10]_i_2 
       (.I0(\cnt_data_reg[10]_0 ),
        .I1(\cnt_data_reg[10] [9]),
        .I2(\cnt_data_reg[10] [10]),
        .I3(busy),
        .O(D[10]));
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_data[1]_i_1 
       (.I0(\cnt_data_reg[10] [1]),
        .I1(\cnt_data_reg[10] [0]),
        .I2(busy),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \cnt_data[2]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [0]),
        .I2(\cnt_data_reg[10] [1]),
        .I3(\cnt_data_reg[10] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \cnt_data[3]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [0]),
        .I2(\cnt_data_reg[10] [2]),
        .I3(\cnt_data_reg[10] [1]),
        .I4(\cnt_data_reg[10] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \cnt_data[4]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [1]),
        .I2(\cnt_data_reg[10] [2]),
        .I3(\cnt_data_reg[10] [0]),
        .I4(\cnt_data_reg[10] [3]),
        .I5(\cnt_data_reg[10] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_data[5]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[5] ),
        .I2(\cnt_data_reg[10] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_data[6]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[6] ),
        .I2(\cnt_data_reg[10] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \cnt_data[7]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[6] ),
        .I2(\cnt_data_reg[10] [6]),
        .I3(\cnt_data_reg[10] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \cnt_data[8]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [6]),
        .I2(\cnt_data_reg[6] ),
        .I3(\cnt_data_reg[10] [7]),
        .I4(\cnt_data_reg[10] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \cnt_data[9]_i_1 
       (.I0(busy),
        .I1(\cnt_data_reg[10] [8]),
        .I2(\cnt_data_reg[10] [7]),
        .I3(\cnt_data_reg[6] ),
        .I4(\cnt_data_reg[10] [6]),
        .I5(\cnt_data_reg[10] [9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    comm_start_i_1
       (.I0(comm_start_reg_n_0),
        .I1(\data[7]_i_3_n_0 ),
        .I2(data0),
        .O(comm_start_i_1_n_0));
  FDCE comm_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(comm_start_i_1_n_0),
        .Q(comm_start_reg_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_4),
        .Q(\count_usec_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[10] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_10),
        .Q(count_usec_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[11] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_9),
        .Q(count_usec_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[12] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_16),
        .Q(count_usec_reg[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[13] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_15),
        .Q(count_usec_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[14] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_14),
        .Q(count_usec_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[15] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_13),
        .Q(count_usec_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[16] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_20),
        .Q(count_usec_reg[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[17] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_19),
        .Q(count_usec_reg[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[18] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_18),
        .Q(count_usec_reg[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[19] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_17),
        .Q(count_usec_reg[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_3),
        .Q(\count_usec_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[20] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_22),
        .Q(count_usec_reg[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[21] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_21),
        .Q(count_usec_reg[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_2),
        .Q(\count_usec_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_1),
        .Q(count_usec_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_8),
        .Q(count_usec_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_7),
        .Q(count_usec_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_6),
        .Q(count_usec_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_5),
        .Q(count_usec_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[8] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_12),
        .Q(count_usec_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[9] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_0),
        .CLR(AR),
        .D(usec_clk_n_11),
        .Q(count_usec_reg[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \data[0]_i_1 
       (.I0(data2[0]),
        .I1(state[4]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[5]),
        .O(data0_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \data[2]_i_1 
       (.I0(state[2]),
        .I1(state[4]),
        .O(data0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data[3]_i_1 
       (.I0(state[4]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[5]),
        .O(data0_in[3]));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \data[4]_i_1 
       (.I0(\next_state[5]_i_5_n_0 ),
        .I1(data2[1]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\data_reg[7]_0 [0]),
        .O(data0_in[4]));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \data[5]_i_1 
       (.I0(\next_state[5]_i_5_n_0 ),
        .I1(data2[2]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\data_reg[7]_0 [1]),
        .O(data0_in[5]));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \data[6]_i_1 
       (.I0(\next_state[5]_i_5_n_0 ),
        .I1(data2[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\data_reg[7]_0 [2]),
        .O(data0_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \data[7]_i_1 
       (.I0(data0),
        .I1(\data[7]_i_3_n_0 ),
        .O(data));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \data[7]_i_2 
       (.I0(\next_state[5]_i_5_n_0 ),
        .I1(data2[4]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\data_reg[7]_0 [3]),
        .O(data0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEED)) 
    \data[7]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[5]),
        .I4(state[4]),
        .I5(state[2]),
        .O(\data[7]_i_3_n_0 ));
  FDCE \data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[0]),
        .Q(\data_reg_n_0_[0] ));
  FDCE \data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[2]),
        .Q(\data_reg_n_0_[2] ));
  FDCE \data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[3]),
        .Q(\data_reg_n_0_[3] ));
  FDCE \data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[4]),
        .Q(\data_reg_n_0_[4] ));
  FDCE \data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[5]),
        .Q(\data_reg_n_0_[5] ));
  FDCE \data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[6]),
        .Q(\data_reg_n_0_[6] ));
  FDCE \data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(data),
        .CLR(AR),
        .D(data0_in[7]),
        .Q(\data_reg_n_0_[7] ));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p_0 ed_start
       (.AR(AR),
        .D(\next_state[1]_i_1__0_n_0 ),
        .E(next_state),
        .Q({state[5],state[2:0]}),
        .busy_reg(busy),
        .data0(data0),
        .ff_cur_reg_0(ed_start_n_0),
        .\next_state_reg[0] (\next_state[5]_i_5_n_0 ),
        .\next_state_reg[0]_0 (\next_state[5]_i_6_n_0 ),
        .\next_state_reg[0]_1 (\next_state[5]_i_7_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .send_byte(send_byte));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    init_flag_i_1
       (.I0(busy),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(init_flag_reg),
        .I5(init_flag_reg_0),
        .O(busy_reg_0));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_I2C_master master
       (.AR(AR),
        .Q({\data_reg_n_0_[7] ,\data_reg_n_0_[6] ,\data_reg_n_0_[5] ,\data_reg_n_0_[4] ,\data_reg_n_0_[3] ,\data_reg_n_0_[2] ,\data_reg_n_0_[0] }),
        .ff_cur_reg(comm_start_reg_n_0),
        .ff_old_reg(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_1(sda_INST_0_i_1));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFEE9)) 
    \next_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[4]),
        .I3(state[3]),
        .I4(state[5]),
        .I5(state[1]),
        .O(\next_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \next_state[1]_i_1__0 
       (.I0(state[5]),
        .I1(state[0]),
        .I2(state[4]),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\next_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \next_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[4]),
        .I2(state[5]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\next_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000200020)) 
    \next_state[2]_i_3 
       (.I0(busy),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\next_state_reg[0]_0 ),
        .I5(\next_state_reg[0]_1 ),
        .O(busy_reg_2));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_state[3]_i_1 
       (.I0(state[3]),
        .I1(state[5]),
        .I2(state[4]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\next_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_state[4]_i_1 
       (.I0(state[4]),
        .I1(state[5]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\next_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state[5]_i_10 
       (.I0(count_usec_reg[20]),
        .I1(count_usec_reg[19]),
        .I2(count_usec_reg[18]),
        .I3(count_usec_reg[15]),
        .O(\next_state[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state[5]_i_11 
       (.I0(count_usec_reg[17]),
        .I1(count_usec_reg[11]),
        .I2(count_usec_reg[8]),
        .I3(count_usec_reg[12]),
        .I4(count_usec_reg[10]),
        .I5(count_usec_reg[14]),
        .O(\next_state[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \next_state[5]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[5]),
        .I3(state[4]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\next_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \next_state[5]_i_4 
       (.I0(\next_state[5]_i_8_n_0 ),
        .I1(\next_state[5]_i_9_n_0 ),
        .I2(\next_state[5]_i_10_n_0 ),
        .I3(\next_state[5]_i_11_n_0 ),
        .O(data0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \next_state[5]_i_5 
       (.I0(state[4]),
        .I1(state[5]),
        .I2(state[3]),
        .O(\next_state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \next_state[5]_i_6 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[5]),
        .I3(state[4]),
        .O(\next_state[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state[5]_i_7 
       (.I0(state[4]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\next_state[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \next_state[5]_i_8 
       (.I0(count_usec_reg[3]),
        .I1(count_usec_reg[4]),
        .I2(count_usec_reg[5]),
        .I3(count_usec_reg[7]),
        .I4(count_usec_reg[6]),
        .O(\next_state[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state[5]_i_9 
       (.I0(count_usec_reg[13]),
        .I1(count_usec_reg[9]),
        .I2(count_usec_reg[21]),
        .I3(count_usec_reg[16]),
        .O(\next_state[5]_i_9_n_0 ));
  FDPE \next_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .D(\next_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE \next_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[1]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[1] ));
  FDCE \next_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  FDCE \next_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[3]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[3] ));
  FDCE \next_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[4]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[4] ));
  FDCE \next_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(AR),
        .D(\next_state[5]_i_2_n_0 ),
        .Q(\next_state_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    rs_byte_i_1
       (.I0(rs_byte_reg[1]),
        .I1(rs_byte_i_2_n_0),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(data2[0]),
        .O(\slv_reg1_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rs_byte_i_2
       (.I0(busy),
        .I1(send_byte),
        .O(rs_byte_i_2_n_0));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_0_sn_1),
        .O(s00_axi_rdata),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\s00_axi_rdata[0]_0 ),
        .I1(busy),
        .I2(sel0[1]),
        .I3(rs_byte_reg[0]),
        .I4(sel0[0]),
        .I5(\s00_axi_rdata[0]_1 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000038)) 
    \send_buffer_byte[7]_i_1 
       (.I0(init_flag_reg),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(send_byte),
        .I4(busy),
        .I5(Q[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF009F06)) 
    send_byte_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(busy),
        .I3(send_byte),
        .I4(Q[0]),
        .O(\state_reg[2]_0 ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[0] ),
        .PRE(AR),
        .Q(state[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[1] ),
        .Q(state[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[2] ),
        .Q(state[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[3] ),
        .Q(state[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[4] ),
        .Q(state[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\next_state_reg_n_0_[5] ),
        .Q(state[5]));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_clock_usec usec_clk
       (.AR(AR),
        .O({usec_clk_n_1,usec_clk_n_2,usec_clk_n_3,usec_clk_n_4}),
        .count_usec_reg(count_usec_reg),
        .\count_usec_reg[11] ({usec_clk_n_9,usec_clk_n_10,usec_clk_n_11,usec_clk_n_12}),
        .\count_usec_reg[15] ({usec_clk_n_13,usec_clk_n_14,usec_clk_n_15,usec_clk_n_16}),
        .\count_usec_reg[19] ({usec_clk_n_17,usec_clk_n_18,usec_clk_n_19,usec_clk_n_20}),
        .\count_usec_reg[21] ({usec_clk_n_21,usec_clk_n_22}),
        .\count_usec_reg[3]_0 (\count_usec_reg_n_0_[2] ),
        .\count_usec_reg[3]_1 (\count_usec_reg_n_0_[0] ),
        .\count_usec_reg[7] ({usec_clk_n_5,usec_clk_n_6,usec_clk_n_7,usec_clk_n_8}),
        .count_usec_reg_0_sp_1(comm_start_reg_n_0),
        .count_usec_reg_3_sp_1(\count_usec_reg_n_0_[1] ),
        .ff_old_reg(usec_clk_n_0),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "i2c_txtlcd_top" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_i2c_txtlcd_top
   (SR,
    scl,
    ff_old_reg,
    sda,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    sda_INST_0_i_1,
    s00_axi_aresetn,
    \send_buffer_byte_reg[7]_0 ,
    sel0,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[0]_0 );
  output [0:0]SR;
  output scl;
  output ff_old_reg;
  output sda;
  output [0:0]s00_axi_rdata;
  input [1:0]Q;
  input s00_axi_aclk;
  input sda_INST_0_i_1;
  input s00_axi_aresetn;
  input [7:0]\send_buffer_byte_reg[7]_0 ;
  input [2:0]sel0;
  input s00_axi_rdata_0_sp_1;
  input [0:0]\s00_axi_rdata[0]_0 ;

  wire [1:0]Q;
  wire [0:0]SR;
  wire busy;
  wire \cnt_data[10]_i_3_n_0 ;
  wire \cnt_data[5]_i_2_n_0 ;
  wire \cnt_data[9]_i_2_n_0 ;
  wire [2:0]cnt_data_reg;
  wire [10:3]cnt_data_reg__0;
  wire \cnt_sysclk[0]_i_2_n_0 ;
  wire \cnt_sysclk[0]_i_3_n_0 ;
  wire \cnt_sysclk[0]_i_4_n_0 ;
  wire \cnt_sysclk[0]_i_5_n_0 ;
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
  wire \cnt_sysclk_reg[0]_i_1_n_0 ;
  wire \cnt_sysclk_reg[0]_i_1_n_1 ;
  wire \cnt_sysclk_reg[0]_i_1_n_2 ;
  wire \cnt_sysclk_reg[0]_i_1_n_3 ;
  wire \cnt_sysclk_reg[0]_i_1_n_4 ;
  wire \cnt_sysclk_reg[0]_i_1_n_5 ;
  wire \cnt_sysclk_reg[0]_i_1_n_6 ;
  wire \cnt_sysclk_reg[0]_i_1_n_7 ;
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
  wire count_clk_e;
  wire count_clk_e_i_1_n_0;
  wire [7:0]data2;
  wire ed_send_n_0;
  wire ff_old_reg;
  wire init_flag_reg_n_0;
  wire next_state1;
  wire next_state1_carry__0_i_1_n_0;
  wire next_state1_carry__0_i_2_n_0;
  wire next_state1_carry__0_i_3_n_0;
  wire next_state1_carry__0_i_4_n_0;
  wire next_state1_carry__0_i_5_n_0;
  wire next_state1_carry__0_i_6_n_0;
  wire next_state1_carry__0_n_0;
  wire next_state1_carry__0_n_1;
  wire next_state1_carry__0_n_2;
  wire next_state1_carry__0_n_3;
  wire next_state1_carry__1_i_1_n_0;
  wire next_state1_carry__1_i_2_n_0;
  wire next_state1_carry__1_i_3_n_0;
  wire next_state1_carry__1_i_4_n_0;
  wire next_state1_carry__1_i_5_n_0;
  wire next_state1_carry__1_i_6_n_0;
  wire next_state1_carry__1_i_7_n_0;
  wire next_state1_carry__1_n_0;
  wire next_state1_carry__1_n_1;
  wire next_state1_carry__1_n_2;
  wire next_state1_carry__1_n_3;
  wire next_state1_carry__2_i_1_n_0;
  wire next_state1_carry__2_i_2_n_0;
  wire next_state1_carry__2_i_3_n_0;
  wire next_state1_carry__2_n_2;
  wire next_state1_carry__2_n_3;
  wire next_state1_carry_i_1_n_0;
  wire next_state1_carry_i_2_n_0;
  wire next_state1_carry_i_3_n_0;
  wire next_state1_carry_i_4_n_0;
  wire next_state1_carry_i_5_n_0;
  wire next_state1_carry_i_6_n_0;
  wire next_state1_carry_n_0;
  wire next_state1_carry_n_1;
  wire next_state1_carry_n_2;
  wire next_state1_carry_n_3;
  wire \next_state[0]_i_1__0_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[1]_i_2_n_0 ;
  wire \next_state[2]_i_1__0_n_0 ;
  wire \next_state[2]_i_2_n_0 ;
  wire \next_state[2]_i_5_n_0 ;
  wire \next_state[2]_i_6_n_0 ;
  wire \next_state[2]_i_7_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire [10:0]p_0_in__1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_rdata;
  wire [0:0]\s00_axi_rdata[0]_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire scl;
  wire sda;
  wire sda_INST_0_i_1;
  wire [2:0]sel0;
  wire \send_buffer_byte[0]_i_1_n_0 ;
  wire \send_buffer_byte[1]_i_1_n_0 ;
  wire \send_buffer_byte[2]_i_1_n_0 ;
  wire \send_buffer_byte[3]_i_1_n_0 ;
  wire \send_buffer_byte[4]_i_1_n_0 ;
  wire \send_buffer_byte[5]_i_1_n_0 ;
  wire \send_buffer_byte[6]_i_1_n_0 ;
  wire \send_buffer_byte[7]_i_2_n_0 ;
  wire \send_buffer_byte[7]_i_3_n_0 ;
  wire [7:0]\send_buffer_byte_reg[7]_0 ;
  wire \send_buffer_byte_reg_n_0_[4] ;
  wire \send_buffer_byte_reg_n_0_[5] ;
  wire \send_buffer_byte_reg_n_0_[6] ;
  wire \send_buffer_byte_reg_n_0_[7] ;
  wire send_byte;
  wire send_byte_a_n_10;
  wire send_byte_a_n_11;
  wire send_byte_a_n_12;
  wire send_byte_a_n_13;
  wire send_byte_a_n_14;
  wire send_byte_a_n_15;
  wire send_byte_a_n_19;
  wire send_byte_a_n_20;
  wire send_byte_a_n_21;
  wire send_byte_a_n_3;
  wire send_byte_a_n_4;
  wire send_byte_a_n_5;
  wire send_byte_a_n_8;
  wire send_byte_a_n_9;
  wire [2:0]state;
  wire [3:3]\NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_next_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_next_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__2_O_UNCONNECTED;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  LUT4 #(
    .INIT(16'h0800)) 
    \cnt_data[10]_i_3 
       (.I0(cnt_data_reg__0[8]),
        .I1(cnt_data_reg__0[7]),
        .I2(\cnt_data[9]_i_2_n_0 ),
        .I3(cnt_data_reg__0[6]),
        .O(\cnt_data[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_data[5]_i_2 
       (.I0(cnt_data_reg__0[3]),
        .I1(cnt_data_reg[0]),
        .I2(cnt_data_reg[2]),
        .I3(cnt_data_reg[1]),
        .I4(cnt_data_reg__0[4]),
        .O(\cnt_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_data[9]_i_2 
       (.I0(cnt_data_reg__0[4]),
        .I1(cnt_data_reg[1]),
        .I2(cnt_data_reg[2]),
        .I3(cnt_data_reg[0]),
        .I4(cnt_data_reg__0[3]),
        .I5(cnt_data_reg__0[5]),
        .O(\cnt_data[9]_i_2_n_0 ));
  FDCE \cnt_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(p_0_in__1[0]),
        .Q(cnt_data_reg[0]));
  FDCE \cnt_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(p_0_in__1[10]),
        .Q(cnt_data_reg__0[10]));
  FDCE \cnt_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(p_0_in__1[1]),
        .Q(cnt_data_reg[1]));
  FDCE \cnt_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_15),
        .Q(cnt_data_reg[2]));
  FDCE \cnt_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_14),
        .Q(cnt_data_reg__0[3]));
  FDCE \cnt_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_13),
        .Q(cnt_data_reg__0[4]));
  FDCE \cnt_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_12),
        .Q(cnt_data_reg__0[5]));
  FDCE \cnt_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_11),
        .Q(cnt_data_reg__0[6]));
  FDCE \cnt_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_10),
        .Q(cnt_data_reg__0[7]));
  FDCE \cnt_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_9),
        .Q(cnt_data_reg__0[8]));
  FDCE \cnt_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_20),
        .CLR(SR),
        .D(send_byte_a_n_8),
        .Q(cnt_data_reg__0[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[0]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[3]),
        .O(\cnt_sysclk[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[0]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[2]),
        .O(\cnt_sysclk[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[0]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[1]),
        .O(\cnt_sysclk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt_sysclk[0]_i_5 
       (.I0(cnt_sysclk_reg[0]),
        .I1(count_clk_e),
        .O(\cnt_sysclk[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[12]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[15]),
        .O(\cnt_sysclk[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[12]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[14]),
        .O(\cnt_sysclk[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[12]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[13]),
        .O(\cnt_sysclk[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[12]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[12]),
        .O(\cnt_sysclk[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[16]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[19]),
        .O(\cnt_sysclk[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[16]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[18]),
        .O(\cnt_sysclk[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[16]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[17]),
        .O(\cnt_sysclk[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[16]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[16]),
        .O(\cnt_sysclk[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[20]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[23]),
        .O(\cnt_sysclk[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[20]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[22]),
        .O(\cnt_sysclk[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[20]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[21]),
        .O(\cnt_sysclk[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[20]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[20]),
        .O(\cnt_sysclk[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[24]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[27]),
        .O(\cnt_sysclk[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[24]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[26]),
        .O(\cnt_sysclk[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[24]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[25]),
        .O(\cnt_sysclk[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[24]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[24]),
        .O(\cnt_sysclk[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[28]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[31]),
        .O(\cnt_sysclk[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[28]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[30]),
        .O(\cnt_sysclk[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[28]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[29]),
        .O(\cnt_sysclk[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[28]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[28]),
        .O(\cnt_sysclk[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[4]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[7]),
        .O(\cnt_sysclk[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[4]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[6]),
        .O(\cnt_sysclk[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[4]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[5]),
        .O(\cnt_sysclk[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[4]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[4]),
        .O(\cnt_sysclk[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[8]_i_2 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[11]),
        .O(\cnt_sysclk[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[8]_i_3 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[10]),
        .O(\cnt_sysclk[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[8]_i_4 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[9]),
        .O(\cnt_sysclk[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[8]_i_5 
       (.I0(count_clk_e),
        .I1(cnt_sysclk_reg[8]),
        .O(\cnt_sysclk[8]_i_5_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_sysclk_reg[0]_i_1_n_0 ,\cnt_sysclk_reg[0]_i_1_n_1 ,\cnt_sysclk_reg[0]_i_1_n_2 ,\cnt_sysclk_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count_clk_e}),
        .O({\cnt_sysclk_reg[0]_i_1_n_4 ,\cnt_sysclk_reg[0]_i_1_n_5 ,\cnt_sysclk_reg[0]_i_1_n_6 ,\cnt_sysclk_reg[0]_i_1_n_7 }),
        .S({\cnt_sysclk[0]_i_2_n_0 ,\cnt_sysclk[0]_i_3_n_0 ,\cnt_sysclk[0]_i_4_n_0 ,\cnt_sysclk[0]_i_5_n_0 }));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[12]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[16]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[20]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[25]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[26]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[24]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[27]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[29]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[28]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[31]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[0]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_7 ),
        .Q(cnt_sysclk_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk_reg[4]_i_1 
       (.CI(\cnt_sysclk_reg[0]_i_1_n_0 ),
        .CO({\cnt_sysclk_reg[4]_i_1_n_0 ,\cnt_sysclk_reg[4]_i_1_n_1 ,\cnt_sysclk_reg[4]_i_1_n_2 ,\cnt_sysclk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_sysclk_reg[4]_i_1_n_4 ,\cnt_sysclk_reg[4]_i_1_n_5 ,\cnt_sysclk_reg[4]_i_1_n_6 ,\cnt_sysclk_reg[4]_i_1_n_7 }),
        .S({\cnt_sysclk[4]_i_2_n_0 ,\cnt_sysclk[4]_i_3_n_0 ,\cnt_sysclk[4]_i_4_n_0 ,\cnt_sysclk[4]_i_5_n_0 }));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_5 ),
        .Q(cnt_sysclk_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[4]_i_1_n_4 ),
        .Q(cnt_sysclk_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cnt_sysclk_reg[8]_i_1_n_6 ),
        .Q(cnt_sysclk_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    count_clk_e_i_1
       (.I0(next_state1),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(init_flag_reg_n_0),
        .I5(count_clk_e),
        .O(count_clk_e_i_1_n_0));
  FDCE count_clk_e_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(count_clk_e_i_1_n_0),
        .Q(count_clk_e));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_edge_detector_p ed_send
       (.AR(SR),
        .Q(Q[0]),
        .busy(busy),
        .\next_state[2]_i_4_0 (init_flag_reg_n_0),
        .\next_state_reg[0] (state),
        .s00_axi_aclk(s00_axi_aclk),
        .\state_reg[0] (ed_send_n_0));
  FDCE init_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(send_byte_a_n_5),
        .Q(init_flag_reg_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry
       (.CI(1'b0),
        .CO({next_state1_carry_n_0,next_state1_carry_n_1,next_state1_carry_n_2,next_state1_carry_n_3}),
        .CYINIT(next_state1_carry_i_1_n_0),
        .DI({next_state1_carry_i_2_n_0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state1_carry_O_UNCONNECTED[3:0]),
        .S({next_state1_carry_i_3_n_0,next_state1_carry_i_4_n_0,next_state1_carry_i_5_n_0,next_state1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry__0
       (.CI(next_state1_carry_n_0),
        .CO({next_state1_carry__0_n_0,next_state1_carry__0_n_1,next_state1_carry__0_n_2,next_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({next_state1_carry__0_i_1_n_0,1'b0,next_state1_carry__0_i_2_n_0,1'b0}),
        .O(NLW_next_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state1_carry__0_i_3_n_0,next_state1_carry__0_i_4_n_0,next_state1_carry__0_i_5_n_0,next_state1_carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_state1_carry__0_i_1
       (.I0(cnt_sysclk_reg[17]),
        .O(next_state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__0_i_2
       (.I0(cnt_sysclk_reg[12]),
        .I1(cnt_sysclk_reg[13]),
        .O(next_state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__0_i_3
       (.I0(cnt_sysclk_reg[17]),
        .I1(cnt_sysclk_reg[16]),
        .O(next_state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__0_i_4
       (.I0(cnt_sysclk_reg[14]),
        .I1(cnt_sysclk_reg[15]),
        .O(next_state1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__0_i_5
       (.I0(cnt_sysclk_reg[12]),
        .I1(cnt_sysclk_reg[13]),
        .O(next_state1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__0_i_6
       (.I0(cnt_sysclk_reg[10]),
        .I1(cnt_sysclk_reg[11]),
        .O(next_state1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry__1
       (.CI(next_state1_carry__0_n_0),
        .CO({next_state1_carry__1_n_0,next_state1_carry__1_n_1,next_state1_carry__1_n_2,next_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,next_state1_carry__1_i_1_n_0,next_state1_carry__1_i_2_n_0,next_state1_carry__1_i_3_n_0}),
        .O(NLW_next_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({next_state1_carry__1_i_4_n_0,next_state1_carry__1_i_5_n_0,next_state1_carry__1_i_6_n_0,next_state1_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__1_i_1
       (.I0(cnt_sysclk_reg[22]),
        .I1(cnt_sysclk_reg[23]),
        .O(next_state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_state1_carry__1_i_2
       (.I0(cnt_sysclk_reg[21]),
        .I1(cnt_sysclk_reg[20]),
        .O(next_state1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state1_carry__1_i_3
       (.I0(cnt_sysclk_reg[19]),
        .O(next_state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__1_i_4
       (.I0(cnt_sysclk_reg[24]),
        .I1(cnt_sysclk_reg[25]),
        .O(next_state1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__1_i_5
       (.I0(cnt_sysclk_reg[22]),
        .I1(cnt_sysclk_reg[23]),
        .O(next_state1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    next_state1_carry__1_i_6
       (.I0(cnt_sysclk_reg[20]),
        .I1(cnt_sysclk_reg[21]),
        .O(next_state1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__1_i_7
       (.I0(cnt_sysclk_reg[19]),
        .I1(cnt_sysclk_reg[18]),
        .O(next_state1_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry__2
       (.CI(next_state1_carry__1_n_0),
        .CO({NLW_next_state1_carry__2_CO_UNCONNECTED[3],next_state1,next_state1_carry__2_n_2,next_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk_reg[31],1'b0,1'b0}),
        .O(NLW_next_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state1_carry__2_i_1_n_0,next_state1_carry__2_i_2_n_0,next_state1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_1
       (.I0(cnt_sysclk_reg[30]),
        .I1(cnt_sysclk_reg[31]),
        .O(next_state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_2
       (.I0(cnt_sysclk_reg[28]),
        .I1(cnt_sysclk_reg[29]),
        .O(next_state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_3
       (.I0(cnt_sysclk_reg[26]),
        .I1(cnt_sysclk_reg[27]),
        .O(next_state1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry_i_1
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .O(next_state1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_state1_carry_i_2
       (.I0(cnt_sysclk_reg[9]),
        .O(next_state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry_i_3
       (.I0(cnt_sysclk_reg[9]),
        .I1(cnt_sysclk_reg[8]),
        .O(next_state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry_i_4
       (.I0(cnt_sysclk_reg[6]),
        .I1(cnt_sysclk_reg[7]),
        .O(next_state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry_i_5
       (.I0(cnt_sysclk_reg[4]),
        .I1(cnt_sysclk_reg[5]),
        .O(next_state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry_i_6
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .O(next_state1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \next_state[0]_i_1__0 
       (.I0(\next_state[0]_i_2_n_0 ),
        .I1(send_byte_a_n_21),
        .I2(ed_send_n_0),
        .I3(\next_state[2]_i_5_n_0 ),
        .I4(next_state1),
        .I5(\next_state_reg_n_0_[0] ),
        .O(\next_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[0]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\next_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1E0E0F0E0)) 
    \next_state[1]_i_1 
       (.I0(send_byte_a_n_21),
        .I1(ed_send_n_0),
        .I2(\next_state[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(next_state1),
        .I5(\next_state_reg_n_0_[1] ),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \next_state[1]_i_2 
       (.I0(init_flag_reg_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .O(\next_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \next_state[2]_i_1__0 
       (.I0(\next_state[2]_i_2_n_0 ),
        .I1(send_byte_a_n_21),
        .I2(ed_send_n_0),
        .I3(\next_state[2]_i_5_n_0 ),
        .I4(next_state1),
        .I5(\next_state_reg_n_0_[2] ),
        .O(\next_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \next_state[2]_i_2 
       (.I0(init_flag_reg_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .O(\next_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_state[2]_i_5 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(init_flag_reg_n_0),
        .O(\next_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \next_state[2]_i_6 
       (.I0(cnt_data_reg[2]),
        .I1(cnt_data_reg[1]),
        .I2(cnt_data_reg__0[5]),
        .I3(cnt_data_reg__0[9]),
        .I4(cnt_data_reg__0[8]),
        .I5(cnt_data_reg__0[10]),
        .O(\next_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[2]_i_7 
       (.I0(cnt_data_reg__0[7]),
        .I1(cnt_data_reg__0[6]),
        .I2(cnt_data_reg__0[4]),
        .I3(cnt_data_reg__0[3]),
        .O(\next_state[2]_i_7_n_0 ));
  FDPE \next_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state[0]_i_1__0_n_0 ),
        .PRE(SR),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE \next_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ));
  FDCE \next_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state[2]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  FDCE rs_byte_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(send_byte_a_n_4),
        .Q(data2[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hC3AA)) 
    \send_buffer_byte[0]_i_1 
       (.I0(\send_buffer_byte_reg[7]_0 [0]),
        .I1(cnt_data_reg[0]),
        .I2(cnt_data_reg[1]),
        .I3(state[1]),
        .O(\send_buffer_byte[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \send_buffer_byte[1]_i_1 
       (.I0(cnt_data_reg[0]),
        .I1(cnt_data_reg[2]),
        .I2(cnt_data_reg[1]),
        .I3(state[1]),
        .I4(\send_buffer_byte_reg[7]_0 [1]),
        .O(\send_buffer_byte[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACA0A)) 
    \send_buffer_byte[2]_i_1 
       (.I0(\send_buffer_byte_reg[7]_0 [2]),
        .I1(cnt_data_reg[0]),
        .I2(state[1]),
        .I3(cnt_data_reg[1]),
        .I4(cnt_data_reg[2]),
        .O(\send_buffer_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \send_buffer_byte[3]_i_1 
       (.I0(cnt_data_reg[1]),
        .I1(state[1]),
        .I2(\send_buffer_byte_reg[7]_0 [3]),
        .O(\send_buffer_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1F10)) 
    \send_buffer_byte[4]_i_1 
       (.I0(cnt_data_reg[1]),
        .I1(cnt_data_reg[2]),
        .I2(state[1]),
        .I3(\send_buffer_byte_reg[7]_0 [4]),
        .O(\send_buffer_byte[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07FF0700)) 
    \send_buffer_byte[5]_i_1 
       (.I0(cnt_data_reg[1]),
        .I1(cnt_data_reg[0]),
        .I2(cnt_data_reg[2]),
        .I3(state[1]),
        .I4(\send_buffer_byte_reg[7]_0 [5]),
        .O(\send_buffer_byte[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \send_buffer_byte[6]_i_1 
       (.I0(state[2]),
        .I1(\send_buffer_byte_reg[7]_0 [6]),
        .O(\send_buffer_byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \send_buffer_byte[7]_i_2 
       (.I0(state[2]),
        .I1(\send_buffer_byte_reg[7]_0 [7]),
        .O(\send_buffer_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \send_buffer_byte[7]_i_3 
       (.I0(cnt_data_reg__0[3]),
        .I1(cnt_data_reg__0[4]),
        .I2(cnt_data_reg__0[6]),
        .I3(cnt_data_reg__0[7]),
        .I4(\next_state[2]_i_6_n_0 ),
        .O(\send_buffer_byte[7]_i_3_n_0 ));
  FDCE \send_buffer_byte_reg[0] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[0]_i_1_n_0 ),
        .Q(data2[4]));
  FDCE \send_buffer_byte_reg[1] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[1]_i_1_n_0 ),
        .Q(data2[5]));
  FDCE \send_buffer_byte_reg[2] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[2]_i_1_n_0 ),
        .Q(data2[6]));
  FDCE \send_buffer_byte_reg[3] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[3]_i_1_n_0 ),
        .Q(data2[7]));
  FDCE \send_buffer_byte_reg[4] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[4]_i_1_n_0 ),
        .Q(\send_buffer_byte_reg_n_0_[4] ));
  FDCE \send_buffer_byte_reg[5] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[5]_i_1_n_0 ),
        .Q(\send_buffer_byte_reg_n_0_[5] ));
  FDCE \send_buffer_byte_reg[6] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[6]_i_1_n_0 ),
        .Q(\send_buffer_byte_reg_n_0_[6] ));
  FDCE \send_buffer_byte_reg[7] 
       (.C(s00_axi_aclk),
        .CE(send_byte_a_n_19),
        .CLR(SR),
        .D(\send_buffer_byte[7]_i_2_n_0 ),
        .Q(\send_buffer_byte_reg_n_0_[7] ));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_i2c_lcd_send_byte send_byte_a
       (.AR(SR),
        .D({p_0_in__1[10],send_byte_a_n_8,send_byte_a_n_9,send_byte_a_n_10,send_byte_a_n_11,send_byte_a_n_12,send_byte_a_n_13,send_byte_a_n_14,send_byte_a_n_15,p_0_in__1[1:0]}),
        .E(send_byte_a_n_19),
        .Q(state),
        .busy(busy),
        .busy_reg_0(send_byte_a_n_5),
        .busy_reg_1(send_byte_a_n_20),
        .busy_reg_2(send_byte_a_n_21),
        .\cnt_data_reg[10] ({cnt_data_reg__0,cnt_data_reg}),
        .\cnt_data_reg[10]_0 (\cnt_data[10]_i_3_n_0 ),
        .\cnt_data_reg[5] (\cnt_data[5]_i_2_n_0 ),
        .\cnt_data_reg[6] (\cnt_data[9]_i_2_n_0 ),
        .data2({data2[7:4],data2[0]}),
        .\data_reg[7]_0 ({\send_buffer_byte_reg_n_0_[7] ,\send_buffer_byte_reg_n_0_[6] ,\send_buffer_byte_reg_n_0_[5] ,\send_buffer_byte_reg_n_0_[4] }),
        .ff_old_reg(ff_old_reg),
        .init_flag_reg(\send_buffer_byte[7]_i_3_n_0 ),
        .init_flag_reg_0(init_flag_reg_n_0),
        .\next_state_reg[0]_0 (\next_state[2]_i_6_n_0 ),
        .\next_state_reg[0]_1 (\next_state[2]_i_7_n_0 ),
        .rs_byte_reg(Q),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[0]_0 (\s00_axi_rdata[0]_0 ),
        .\s00_axi_rdata[0]_1 (\send_buffer_byte_reg[7]_0 [0]),
        .s00_axi_rdata_0_sp_1(s00_axi_rdata_0_sn_1),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_1(sda_INST_0_i_1),
        .sel0(sel0),
        .send_byte(send_byte),
        .\slv_reg1_reg[1] (send_byte_a_n_4),
        .\state_reg[2]_0 (send_byte_a_n_3));
  FDCE send_byte_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(send_byte_a_n_3),
        .Q(send_byte));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[0] ),
        .PRE(SR),
        .Q(state[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[1] ),
        .Q(state[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[2] ),
        .Q(state[2]));
endmodule

(* ORIG_REF_NAME = "myip_iic_cntr" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_myip_iic_cntr
   (SR,
    scl,
    s00_axi_bvalid,
    axi_awready_reg,
    s00_axi_wready,
    axi_rvalid_reg,
    axi_arready_reg,
    ff_old_reg,
    sda,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    sda_INST_0_i_1,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb);
  output [0:0]SR;
  output scl;
  output s00_axi_bvalid;
  output axi_awready_reg;
  output s00_axi_wready;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output ff_old_reg;
  output sda;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input sda_INST_0_i_1;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;

  wire [0:0]SR;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire ff_old_reg;
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
  wire scl;
  wire sda;
  wire sda_INST_0_i_1;

  soc_multiwatch_lcd_myip_iic_cntr_0_0_myip_iic_cntr_slave_lite_v1_0_S00_AXI myip_iic_cntr_slave_lite_v1_0_S00_AXI_inst
       (.AR(SR),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .ff_old_reg(ff_old_reg),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_1(sda_INST_0_i_1));
endmodule

(* ORIG_REF_NAME = "myip_iic_cntr_slave_lite_v1_0_S00_AXI" *) 
module soc_multiwatch_lcd_myip_iic_cntr_0_0_myip_iic_cntr_slave_lite_v1_0_S00_AXI
   (AR,
    scl,
    s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    ff_old_reg,
    sda,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    sda_INST_0_i_1,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb);
  output [0:0]AR;
  output scl;
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output ff_old_reg;
  output sda;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input sda_INST_0_i_1;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;

  wire [0:0]AR;
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
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire ff_old_reg;
  wire rs;
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
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire sda_INST_0_i_1;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[31]_i_4_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
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
  wire \slv_reg4[31]_i_2_n_0 ;
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
        .R(AR));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .R(AR));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(AR));
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
        .R(AR));
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
        .R(AR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(AR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .R(AR));
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
        .R(AR));
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
        .R(AR));
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
        .R(AR));
  soc_multiwatch_lcd_myip_iic_cntr_0_0_i2c_txtlcd_top iic_lcd
       (.Q({rs,\slv_reg1_reg_n_0_[0] }),
        .SR(AR),
        .ff_old_reg(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata[0]),
        .\s00_axi_rdata[0]_0 (slv_reg3[0]),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_1(sda_INST_0_i_1),
        .sel0(sel0),
        .\send_buffer_byte_reg[7]_0 (slv_reg0[7:0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(slv_reg6[0]),
        .I1(sel0[1]),
        .I2(slv_reg5[0]),
        .I3(sel0[0]),
        .I4(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg3[10]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[10] ),
        .I3(sel0[0]),
        .I4(slv_reg0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(slv_reg6[10]),
        .I1(sel0[1]),
        .I2(slv_reg5[10]),
        .I3(sel0[0]),
        .I4(slv_reg4[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg3[11]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .I3(sel0[0]),
        .I4(slv_reg0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(slv_reg6[11]),
        .I1(sel0[1]),
        .I2(slv_reg5[11]),
        .I3(sel0[0]),
        .I4(slv_reg4[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg3[12]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .I3(sel0[0]),
        .I4(slv_reg0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(slv_reg6[12]),
        .I1(sel0[1]),
        .I2(slv_reg5[12]),
        .I3(sel0[0]),
        .I4(slv_reg4[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg3[13]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(sel0[0]),
        .I4(slv_reg0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(slv_reg6[13]),
        .I1(sel0[1]),
        .I2(slv_reg5[13]),
        .I3(sel0[0]),
        .I4(slv_reg4[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg3[14]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[14] ),
        .I3(sel0[0]),
        .I4(slv_reg0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(slv_reg6[14]),
        .I1(sel0[1]),
        .I2(slv_reg5[14]),
        .I3(sel0[0]),
        .I4(slv_reg4[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg3[15]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(sel0[0]),
        .I4(slv_reg0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(slv_reg6[15]),
        .I1(sel0[1]),
        .I2(slv_reg5[15]),
        .I3(sel0[0]),
        .I4(slv_reg4[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg3[16]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[16] ),
        .I3(sel0[0]),
        .I4(slv_reg0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(slv_reg6[16]),
        .I1(sel0[1]),
        .I2(slv_reg5[16]),
        .I3(sel0[0]),
        .I4(slv_reg4[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg3[17]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[17] ),
        .I3(sel0[0]),
        .I4(slv_reg0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(slv_reg6[17]),
        .I1(sel0[1]),
        .I2(slv_reg5[17]),
        .I3(sel0[0]),
        .I4(slv_reg4[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg3[18]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[18] ),
        .I3(sel0[0]),
        .I4(slv_reg0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(slv_reg6[18]),
        .I1(sel0[1]),
        .I2(slv_reg5[18]),
        .I3(sel0[0]),
        .I4(slv_reg4[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg3[19]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[19] ),
        .I3(sel0[0]),
        .I4(slv_reg0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(slv_reg6[19]),
        .I1(sel0[1]),
        .I2(slv_reg5[19]),
        .I3(sel0[0]),
        .I4(slv_reg4[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg3[1]),
        .I1(sel0[1]),
        .I2(rs),
        .I3(sel0[0]),
        .I4(slv_reg0[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(slv_reg6[1]),
        .I1(sel0[1]),
        .I2(slv_reg5[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg3[20]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[20] ),
        .I3(sel0[0]),
        .I4(slv_reg0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg6[20]),
        .I1(sel0[1]),
        .I2(slv_reg5[20]),
        .I3(sel0[0]),
        .I4(slv_reg4[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg3[21]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[21] ),
        .I3(sel0[0]),
        .I4(slv_reg0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg6[21]),
        .I1(sel0[1]),
        .I2(slv_reg5[21]),
        .I3(sel0[0]),
        .I4(slv_reg4[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg3[22]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[22] ),
        .I3(sel0[0]),
        .I4(slv_reg0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(slv_reg6[22]),
        .I1(sel0[1]),
        .I2(slv_reg5[22]),
        .I3(sel0[0]),
        .I4(slv_reg4[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg3[23]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[23] ),
        .I3(sel0[0]),
        .I4(slv_reg0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(slv_reg6[23]),
        .I1(sel0[1]),
        .I2(slv_reg5[23]),
        .I3(sel0[0]),
        .I4(slv_reg4[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg3[24]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(sel0[0]),
        .I4(slv_reg0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(slv_reg6[24]),
        .I1(sel0[1]),
        .I2(slv_reg5[24]),
        .I3(sel0[0]),
        .I4(slv_reg4[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg3[25]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[25] ),
        .I3(sel0[0]),
        .I4(slv_reg0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(slv_reg6[25]),
        .I1(sel0[1]),
        .I2(slv_reg5[25]),
        .I3(sel0[0]),
        .I4(slv_reg4[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg3[26]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(sel0[0]),
        .I4(slv_reg0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(slv_reg6[26]),
        .I1(sel0[1]),
        .I2(slv_reg5[26]),
        .I3(sel0[0]),
        .I4(slv_reg4[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg3[27]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(sel0[0]),
        .I4(slv_reg0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(slv_reg6[27]),
        .I1(sel0[1]),
        .I2(slv_reg5[27]),
        .I3(sel0[0]),
        .I4(slv_reg4[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg3[28]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[28] ),
        .I3(sel0[0]),
        .I4(slv_reg0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg6[28]),
        .I1(sel0[1]),
        .I2(slv_reg5[28]),
        .I3(sel0[0]),
        .I4(slv_reg4[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg3[29]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[29] ),
        .I3(sel0[0]),
        .I4(slv_reg0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg6[29]),
        .I1(sel0[1]),
        .I2(slv_reg5[29]),
        .I3(sel0[0]),
        .I4(slv_reg4[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg3[2]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[2] ),
        .I3(sel0[0]),
        .I4(slv_reg0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(slv_reg6[2]),
        .I1(sel0[1]),
        .I2(slv_reg5[2]),
        .I3(sel0[0]),
        .I4(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg3[30]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[30] ),
        .I3(sel0[0]),
        .I4(slv_reg0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg6[30]),
        .I1(sel0[1]),
        .I2(slv_reg5[30]),
        .I3(sel0[0]),
        .I4(slv_reg4[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg3[31]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[31] ),
        .I3(sel0[0]),
        .I4(slv_reg0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg6[31]),
        .I1(sel0[1]),
        .I2(slv_reg5[31]),
        .I3(sel0[0]),
        .I4(slv_reg4[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg3[3]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(slv_reg0[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(slv_reg6[3]),
        .I1(sel0[1]),
        .I2(slv_reg5[3]),
        .I3(sel0[0]),
        .I4(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg3[4]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[4] ),
        .I3(sel0[0]),
        .I4(slv_reg0[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(slv_reg6[4]),
        .I1(sel0[1]),
        .I2(slv_reg5[4]),
        .I3(sel0[0]),
        .I4(slv_reg4[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg3[5]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[5] ),
        .I3(sel0[0]),
        .I4(slv_reg0[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(slv_reg6[5]),
        .I1(sel0[1]),
        .I2(slv_reg5[5]),
        .I3(sel0[0]),
        .I4(slv_reg4[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg3[6]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(sel0[0]),
        .I4(slv_reg0[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(slv_reg6[6]),
        .I1(sel0[1]),
        .I2(slv_reg5[6]),
        .I3(sel0[0]),
        .I4(slv_reg4[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg3[7]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[7] ),
        .I3(sel0[0]),
        .I4(slv_reg0[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(slv_reg6[7]),
        .I1(sel0[1]),
        .I2(slv_reg5[7]),
        .I3(sel0[0]),
        .I4(slv_reg4[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg3[8]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[8] ),
        .I3(sel0[0]),
        .I4(slv_reg0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(slv_reg6[8]),
        .I1(sel0[1]),
        .I2(slv_reg5[8]),
        .I3(sel0[0]),
        .I4(slv_reg4[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg3[9]),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(sel0[0]),
        .I4(slv_reg0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(slv_reg6[9]),
        .I1(sel0[1]),
        .I2(slv_reg5[9]),
        .I3(sel0[0]),
        .I4(slv_reg4[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001510000)) 
    \slv_reg0[31]_i_2 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(\slv_reg1[31]_i_4_n_0 ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(AR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(AR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(AR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(AR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(AR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(AR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(AR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(AR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(AR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(AR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(AR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(AR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(AR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(AR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(AR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(AR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(AR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(AR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(AR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(AR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(AR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(AR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(AR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(AR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(AR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(AR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(AR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(AR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(AR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(AR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(AR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(AR));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008A80)) 
    \slv_reg1[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg1[31]_i_3_n_0 ),
        .I5(\slv_reg1[31]_i_4_n_0 ),
        .O(\slv_reg1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[31]_i_3 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[31]_i_4 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg1[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(AR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(AR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(AR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(AR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(AR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(AR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(AR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(AR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(AR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(AR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(AR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(rs),
        .R(AR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(AR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(AR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(AR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(AR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(AR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(AR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(AR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(AR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(AR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(AR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(AR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(AR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(AR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(AR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(AR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(AR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(AR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(AR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(AR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(AR));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A800000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg1[31]_i_3_n_0 ),
        .I5(\slv_reg1[31]_i_4_n_0 ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(AR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(AR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(AR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(AR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(AR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(AR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(AR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(AR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(AR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(AR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(AR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(AR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(AR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(AR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(AR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(AR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(AR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(AR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(AR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(AR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(AR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(AR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(AR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(AR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(AR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(AR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(AR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(AR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(AR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(AR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(AR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(AR));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151000000000000)) 
    \slv_reg4[31]_i_2 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(\slv_reg1[31]_i_4_n_0 ),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(AR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(AR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(AR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(AR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(AR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(AR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(AR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(AR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(AR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(AR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(AR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(AR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(AR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(AR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(AR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(AR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(AR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(AR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(AR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(AR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(AR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(AR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(AR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(AR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(AR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(AR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(AR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(AR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(AR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(AR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(AR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(AR));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[15]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[23]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[31]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg5[31]_i_2 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[7]_i_1 
       (.I0(\slv_reg5[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(AR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(AR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(AR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(AR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(AR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(AR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(AR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(AR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(AR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(AR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(AR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(AR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(AR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(AR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(AR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(AR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(AR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(AR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(AR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(AR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(AR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(AR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(AR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(AR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(AR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(AR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(AR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(AR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(AR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(AR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(AR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(AR));
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
    .INIT(64'h1D00000000000000)) 
    \slv_reg6[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .I5(s00_axi_wvalid),
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
        .R(AR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(AR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(AR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(AR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(AR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(AR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(AR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(AR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(AR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(AR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(AR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(AR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(AR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(AR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(AR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(AR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(AR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(AR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(AR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(AR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(AR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(AR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(AR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(AR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(AR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(AR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(AR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(AR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(AR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(AR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(AR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(AR));
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
