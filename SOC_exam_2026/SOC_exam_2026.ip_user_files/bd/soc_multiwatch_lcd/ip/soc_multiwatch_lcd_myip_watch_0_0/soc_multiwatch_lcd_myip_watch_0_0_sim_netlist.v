// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Jan 29 08:10:42 2026
// Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/user12/data/work/SOC_exam_2026/SOC_exam_2026.gen/sources_1/bd/soc_multiwatch_lcd/ip/soc_multiwatch_lcd_myip_watch_0_0/soc_multiwatch_lcd_myip_watch_0_0_sim_netlist.v
// Design      : soc_multiwatch_lcd_myip_watch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_multiwatch_lcd_myip_watch_0_0,myip_watch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_watch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module soc_multiwatch_lcd_myip_watch_0_0
   (s00_axi_aclk,
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
  soc_multiwatch_lcd_myip_watch_0_0_myip_watch inst
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

(* ORIG_REF_NAME = "edge_detector_n" *) 
module soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n
   (AR,
    E,
    \sec_reg[7] ,
    D,
    \cnt_sysclk_reg[28] ,
    ff_old_reg_0,
    ff_old_reg_1,
    ff_old_reg_2,
    Q,
    s00_axi_aclk,
    \hour_reg[0] ,
    \hour_reg[0]_0 ,
    \hour_reg[0]_1 ,
    \hour_reg[0]_2 ,
    \hour_reg[0]_3 ,
    \min_reg[0] ,
    cnt_sysclk0,
    \sec_reg[0] ,
    \hour_reg[7] ,
    \hour_reg[4] ,
    \hour_reg[3] ,
    \hour_reg[4]_0 ,
    \min_reg[7] ,
    \min_reg[5] ,
    \min_reg[3] ,
    \min_reg[4] ,
    \min_reg[5]_0 ,
    \sec_reg[7]_0 ,
    \sec_reg[5] ,
    \sec_reg[3] ,
    \sec_reg[4] ,
    s00_axi_aresetn);
  output [0:0]AR;
  output [0:0]E;
  output [0:0]\sec_reg[7] ;
  output [31:0]D;
  output [0:0]\cnt_sysclk_reg[28] ;
  output [7:0]ff_old_reg_0;
  output [7:0]ff_old_reg_1;
  output [7:0]ff_old_reg_2;
  input [0:0]Q;
  input s00_axi_aclk;
  input \hour_reg[0] ;
  input \hour_reg[0]_0 ;
  input \hour_reg[0]_1 ;
  input \hour_reg[0]_2 ;
  input \hour_reg[0]_3 ;
  input \min_reg[0] ;
  input [30:0]cnt_sysclk0;
  input [2:0]\sec_reg[0] ;
  input [7:0]\hour_reg[7] ;
  input [5:0]\hour_reg[4] ;
  input \hour_reg[3] ;
  input \hour_reg[4]_0 ;
  input [7:0]\min_reg[7] ;
  input [7:0]\min_reg[5] ;
  input \min_reg[3] ;
  input \min_reg[4] ;
  input \min_reg[5]_0 ;
  input [7:0]\sec_reg[7]_0 ;
  input [5:0]\sec_reg[5] ;
  input \sec_reg[3] ;
  input \sec_reg[4] ;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [30:0]cnt_sysclk0;
  wire [0:0]\cnt_sysclk_reg[28] ;
  wire [7:0]ff_old_reg_0;
  wire [7:0]ff_old_reg_1;
  wire [7:0]ff_old_reg_2;
  wire \hour[4]_i_2_n_0 ;
  wire \hour_reg[0] ;
  wire \hour_reg[0]_0 ;
  wire \hour_reg[0]_1 ;
  wire \hour_reg[0]_2 ;
  wire \hour_reg[0]_3 ;
  wire \hour_reg[3] ;
  wire [5:0]\hour_reg[4] ;
  wire \hour_reg[4]_0 ;
  wire [7:0]\hour_reg[7] ;
  wire load_pedge;
  wire \min[5]_i_3_n_0 ;
  wire \min_reg[0] ;
  wire \min_reg[3] ;
  wire \min_reg[4] ;
  wire [7:0]\min_reg[5] ;
  wire \min_reg[5]_0 ;
  wire [7:0]\min_reg[7] ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]\sec_reg[0] ;
  wire \sec_reg[3] ;
  wire \sec_reg[4] ;
  wire [5:0]\sec_reg[5] ;
  wire [0:0]\sec_reg[7] ;
  wire [7:0]\sec_reg[7]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \cnt_sysclk[0]_i_1 
       (.I0(\hour_reg[0] ),
        .I1(\hour_reg[0]_0 ),
        .I2(\hour_reg[0]_1 ),
        .I3(\hour_reg[0]_2 ),
        .I4(load_pedge),
        .I5(\sec_reg[0] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[10]_i_1 
       (.I0(cnt_sysclk0[9]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[11]_i_1 
       (.I0(cnt_sysclk0[10]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[12]_i_1 
       (.I0(cnt_sysclk0[11]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[13]_i_1 
       (.I0(cnt_sysclk0[12]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[14]_i_1 
       (.I0(cnt_sysclk0[13]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[15]_i_1 
       (.I0(cnt_sysclk0[14]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[16]_i_1 
       (.I0(cnt_sysclk0[15]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[17]_i_1 
       (.I0(cnt_sysclk0[16]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[18]_i_1 
       (.I0(cnt_sysclk0[17]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[19]_i_1 
       (.I0(cnt_sysclk0[18]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[1]_i_1 
       (.I0(cnt_sysclk0[0]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[20]_i_1 
       (.I0(cnt_sysclk0[19]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[21]_i_1 
       (.I0(cnt_sysclk0[20]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[22]_i_1 
       (.I0(cnt_sysclk0[21]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[23]_i_1 
       (.I0(cnt_sysclk0[22]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[24]_i_1 
       (.I0(cnt_sysclk0[23]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[25]_i_1 
       (.I0(cnt_sysclk0[24]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[26]_i_1 
       (.I0(cnt_sysclk0[25]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[27]_i_1 
       (.I0(cnt_sysclk0[26]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[28]_i_1 
       (.I0(cnt_sysclk0[27]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[29]_i_1 
       (.I0(cnt_sysclk0[28]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[2]_i_1 
       (.I0(cnt_sysclk0[1]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[30]_i_1 
       (.I0(cnt_sysclk0[29]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[31]_i_1 
       (.I0(cnt_sysclk0[30]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk[31]_i_6 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(load_pedge));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[3]_i_1 
       (.I0(cnt_sysclk0[2]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[4]_i_1 
       (.I0(cnt_sysclk0[3]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[5]_i_1 
       (.I0(cnt_sysclk0[4]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[6]_i_1 
       (.I0(cnt_sysclk0[5]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[7]_i_1 
       (.I0(cnt_sysclk0[6]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[8]_i_1 
       (.I0(cnt_sysclk0[7]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \cnt_sysclk[9]_i_1 
       (.I0(cnt_sysclk0[8]),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(D[9]));
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
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \hour[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\hour_reg[7] [0]),
        .I3(\hour_reg[4] [0]),
        .I4(\hour[4]_i_2_n_0 ),
        .O(ff_old_reg_0[0]));
  LUT6 #(
    .INIT(64'h6060FF6060606060)) 
    \hour[1]_i_1 
       (.I0(\hour_reg[4] [1]),
        .I1(\hour_reg[4] [0]),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\hour_reg[7] [1]),
        .O(ff_old_reg_0[1]));
  LUT6 #(
    .INIT(64'hFFFF6A006A006A00)) 
    \hour[2]_i_1 
       (.I0(\hour_reg[4] [2]),
        .I1(\hour_reg[4] [1]),
        .I2(\hour_reg[4] [0]),
        .I3(\hour[4]_i_2_n_0 ),
        .I4(load_pedge),
        .I5(\hour_reg[7] [2]),
        .O(ff_old_reg_0[2]));
  LUT6 #(
    .INIT(64'h6060FF6060606060)) 
    \hour[3]_i_1 
       (.I0(\hour_reg[4] [3]),
        .I1(\hour_reg[3] ),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\hour_reg[7] [3]),
        .O(ff_old_reg_0[3]));
  LUT6 #(
    .INIT(64'hFFFF488848884888)) 
    \hour[4]_i_1 
       (.I0(\hour_reg[4] [4]),
        .I1(\hour[4]_i_2_n_0 ),
        .I2(\hour_reg[3] ),
        .I3(\hour_reg[4] [3]),
        .I4(load_pedge),
        .I5(\hour_reg[7] [4]),
        .O(ff_old_reg_0[4]));
  LUT6 #(
    .INIT(64'h0007000000070007)) 
    \hour[4]_i_2 
       (.I0(\hour_reg[4] [3]),
        .I1(\hour_reg[4] [4]),
        .I2(\hour_reg[4] [5]),
        .I3(\hour_reg[4]_0 ),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\hour[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \hour[5]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\hour_reg[7] [5]),
        .O(ff_old_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \hour[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\hour_reg[7] [6]),
        .O(ff_old_reg_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEA0000)) 
    \hour[7]_i_1 
       (.I0(\hour_reg[0] ),
        .I1(\hour_reg[0]_0 ),
        .I2(\hour_reg[0]_1 ),
        .I3(\hour_reg[0]_2 ),
        .I4(\hour_reg[0]_3 ),
        .I5(load_pedge),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \hour[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\hour_reg[7] [7]),
        .O(ff_old_reg_0[7]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \min[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\min_reg[7] [0]),
        .I3(\min_reg[5] [0]),
        .I4(\min[5]_i_3_n_0 ),
        .O(ff_old_reg_1[0]));
  LUT6 #(
    .INIT(64'h6060FF6060606060)) 
    \min[1]_i_1 
       (.I0(\min_reg[5] [1]),
        .I1(\min_reg[5] [0]),
        .I2(\min[5]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\min_reg[7] [1]),
        .O(ff_old_reg_1[1]));
  LUT6 #(
    .INIT(64'hFFFF6A006A006A00)) 
    \min[2]_i_1 
       (.I0(\min_reg[5] [2]),
        .I1(\min_reg[5] [1]),
        .I2(\min_reg[5] [0]),
        .I3(\min[5]_i_3_n_0 ),
        .I4(load_pedge),
        .I5(\min_reg[7] [2]),
        .O(ff_old_reg_1[2]));
  LUT6 #(
    .INIT(64'hFFFF6A006A006A00)) 
    \min[3]_i_1 
       (.I0(\min_reg[5] [3]),
        .I1(\min_reg[5] [2]),
        .I2(\min_reg[3] ),
        .I3(\min[5]_i_3_n_0 ),
        .I4(load_pedge),
        .I5(\min_reg[7] [3]),
        .O(ff_old_reg_1[3]));
  LUT6 #(
    .INIT(64'h6060FF6060606060)) 
    \min[4]_i_1 
       (.I0(\min_reg[5] [4]),
        .I1(\min_reg[4] ),
        .I2(\min[5]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\min_reg[7] [4]),
        .O(ff_old_reg_1[4]));
  LUT6 #(
    .INIT(64'hFFFF6A006A006A00)) 
    \min[5]_i_1 
       (.I0(\min_reg[5] [5]),
        .I1(\min_reg[5] [4]),
        .I2(\min_reg[4] ),
        .I3(\min[5]_i_3_n_0 ),
        .I4(load_pedge),
        .I5(\min_reg[7] [5]),
        .O(ff_old_reg_1[5]));
  LUT5 #(
    .INIT(32'h01000101)) 
    \min[5]_i_3 
       (.I0(\min_reg[5]_0 ),
        .I1(\min_reg[5] [6]),
        .I2(\min_reg[5] [7]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\min[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \min[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\min_reg[7] [6]),
        .O(ff_old_reg_1[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \min[7]_i_1 
       (.I0(\min_reg[0] ),
        .I1(\hour_reg[0] ),
        .I2(\hour_reg[0]_0 ),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_2 ),
        .I5(load_pedge),
        .O(\sec_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \min[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\min_reg[7] [7]),
        .O(ff_old_reg_1[7]));
  LUT5 #(
    .INIT(32'h03AA0303)) 
    \sec[0]_i_1 
       (.I0(\sec_reg[7]_0 [0]),
        .I1(\sec_reg[5] [0]),
        .I2(\min_reg[0] ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(ff_old_reg_2[0]));
  LUT6 #(
    .INIT(64'h0606FF0606060006)) 
    \sec[1]_i_1 
       (.I0(\sec_reg[5] [1]),
        .I1(\sec_reg[5] [0]),
        .I2(\min_reg[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\sec_reg[7]_0 [1]),
        .O(ff_old_reg_2[1]));
  LUT6 #(
    .INIT(64'hFFFF006A0000006A)) 
    \sec[2]_i_1 
       (.I0(\sec_reg[5] [2]),
        .I1(\sec_reg[5] [1]),
        .I2(\sec_reg[5] [0]),
        .I3(\min_reg[0] ),
        .I4(load_pedge),
        .I5(\sec_reg[7]_0 [2]),
        .O(ff_old_reg_2[2]));
  LUT6 #(
    .INIT(64'hFFFF006A0000006A)) 
    \sec[3]_i_1 
       (.I0(\sec_reg[5] [3]),
        .I1(\sec_reg[5] [2]),
        .I2(\sec_reg[3] ),
        .I3(\min_reg[0] ),
        .I4(load_pedge),
        .I5(\sec_reg[7]_0 [3]),
        .O(ff_old_reg_2[3]));
  LUT6 #(
    .INIT(64'h0606FF0606060006)) 
    \sec[4]_i_1 
       (.I0(\sec_reg[5] [4]),
        .I1(\sec_reg[4] ),
        .I2(\min_reg[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\sec_reg[7]_0 [4]),
        .O(ff_old_reg_2[4]));
  LUT6 #(
    .INIT(64'hFFFF006A0000006A)) 
    \sec[5]_i_1 
       (.I0(\sec_reg[5] [5]),
        .I1(\sec_reg[5] [4]),
        .I2(\sec_reg[4] ),
        .I3(\min_reg[0] ),
        .I4(load_pedge),
        .I5(\sec_reg[7]_0 [5]),
        .O(ff_old_reg_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sec[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\sec_reg[7]_0 [6]),
        .O(ff_old_reg_2[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \sec[7]_i_1 
       (.I0(load_pedge),
        .I1(\sec_reg[0] [2]),
        .I2(\sec_reg[0] [1]),
        .I3(\hour_reg[0]_1 ),
        .I4(\hour_reg[0]_0 ),
        .I5(\hour_reg[0] ),
        .O(\cnt_sysclk_reg[28] ));
  LUT3 #(
    .INIT(8'h40)) 
    \sec[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\sec_reg[7]_0 [7]),
        .O(ff_old_reg_2[7]));
endmodule

(* ORIG_REF_NAME = "myip_watch" *) 
module soc_multiwatch_lcd_myip_watch_0_0_myip_watch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
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
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
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

  soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI myip_watch_slave_lite_v1_0_S00_AXI_inst
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

(* ORIG_REF_NAME = "myip_watch_slave_lite_v1_0_S00_AXI" *) 
module soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
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
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
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
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
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
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
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
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
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
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[31]_i_3_n_0 ;
  wire \slv_reg3[31]_i_4_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire watch_inst_n_0;

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
        .R(watch_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(watch_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .R(watch_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(watch_inst_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .R(watch_inst_n_0));
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
        .R(watch_inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(watch_inst_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(watch_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCFCCCF4F)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[0]),
        .I3(s00_axi_wvalid),
        .I4(state_write[1]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(watch_inst_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .R(watch_inst_n_0));
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
        .R(watch_inst_n_0));
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
        .R(watch_inst_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg3[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[0]),
        .I5(slv_reg2[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg7[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg3[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[10]),
        .I5(slv_reg2[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg7[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg3[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[11]),
        .I5(slv_reg2[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg7[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg3[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[12]),
        .I5(slv_reg2[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg7[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg3[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[13]),
        .I5(slv_reg2[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg7[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg3[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[14]),
        .I5(slv_reg2[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg7[15]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg3[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[15]),
        .I5(slv_reg2[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg7[16]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg3[16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[16]),
        .I5(slv_reg2[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg7[17]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg3[17]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[17]),
        .I5(slv_reg2[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg7[18]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg3[18]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[18]),
        .I5(slv_reg2[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg7[19]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg3[19]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[19]),
        .I5(slv_reg2[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg3[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[1]),
        .I5(slv_reg2[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg7[20]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg3[20]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[20]),
        .I5(slv_reg2[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg7[21]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg3[21]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[21]),
        .I5(slv_reg2[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg7[22]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg3[22]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[22]),
        .I5(slv_reg2[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg7[23]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg3[23]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[23]),
        .I5(slv_reg2[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg7[24]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg3[24]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[24]),
        .I5(slv_reg2[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg7[25]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg3[25]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[25]),
        .I5(slv_reg2[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg7[26]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg3[26]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[26]),
        .I5(slv_reg2[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg7[27]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg3[27]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[27]),
        .I5(slv_reg2[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg7[28]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg3[28]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[28]),
        .I5(slv_reg2[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg7[29]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg3[29]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[29]),
        .I5(slv_reg2[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg3[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[2]),
        .I5(slv_reg2[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg7[30]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg3[30]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[30]),
        .I5(slv_reg2[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg7[31]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg3[31]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[31]),
        .I5(slv_reg2[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg3[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[3]),
        .I5(slv_reg2[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg3[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[4]),
        .I5(slv_reg2[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg3[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[5]),
        .I5(slv_reg2[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg3[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[6]),
        .I5(slv_reg2[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg3[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[7]),
        .I5(slv_reg2[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg7[8]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg3[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[8]),
        .I5(slv_reg2[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg7[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg3[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[9]),
        .I5(slv_reg2[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
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
    .INIT(64'h0001110100000000)) 
    \slv_reg0[31]_i_2 
       (.I0(\slv_reg3[31]_i_4_n_0 ),
        .I1(\slv_reg3[31]_i_3_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wvalid),
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
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(watch_inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(watch_inst_n_0));
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
        .I4(\slv_reg3[31]_i_3_n_0 ),
        .I5(\slv_reg3[31]_i_4_n_0 ),
        .O(\slv_reg1[31]_i_2_n_0 ));
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
        .Q(slv_reg1[0]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(watch_inst_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(watch_inst_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151000000000000)) 
    \slv_reg2[31]_i_2 
       (.I0(\slv_reg3[31]_i_4_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg3[31]_i_3_n_0 ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(watch_inst_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(watch_inst_n_0));
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
        .I4(\slv_reg3[31]_i_3_n_0 ),
        .I5(\slv_reg3[31]_i_4_n_0 ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_3 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg3[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_4 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg3[31]_i_4_n_0 ));
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
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(watch_inst_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(watch_inst_n_0));
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
    .INIT(64'hA808000000000000)) 
    \slv_reg7[31]_i_2 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(s00_axi_wvalid),
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
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(watch_inst_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(watch_inst_n_0));
  soc_multiwatch_lcd_myip_watch_0_0_watch watch_inst
       (.Q(slv_reg3[0]),
        .SR(watch_inst_n_0),
        .\hour_reg[7]_0 (slv_reg0[7:0]),
        .\min_reg[7]_0 (slv_reg1[7:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata[7:0]),
        .\s00_axi_rdata[7] (slv_reg7[7:0]),
        .\s00_axi_rdata[7]_0 (\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_1_sp_1(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_2_sp_1(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_3_sp_1(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_4_sp_1(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_5_sp_1(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_6_sp_1(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .\sec_reg[7]_0 (slv_reg2[7:0]),
        .sel0(sel0));
endmodule

(* ORIG_REF_NAME = "watch" *) 
module soc_multiwatch_lcd_myip_watch_0_0_watch
   (SR,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    \hour_reg[7]_0 ,
    \min_reg[7]_0 ,
    \sec_reg[7]_0 ,
    sel0,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[7] ,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    \s00_axi_rdata[7]_0 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output [7:0]s00_axi_rdata;
  input [0:0]Q;
  input s00_axi_aclk;
  input [7:0]\hour_reg[7]_0 ;
  input [7:0]\min_reg[7]_0 ;
  input [7:0]\sec_reg[7]_0 ;
  input [2:0]sel0;
  input s00_axi_rdata_0_sp_1;
  input [7:0]\s00_axi_rdata[7] ;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input \s00_axi_rdata[7]_0 ;
  input s00_axi_aresetn;

  wire [0:0]Q;
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
  wire \cnt_sysclk[31]_i_10_n_0 ;
  wire \cnt_sysclk[31]_i_11_n_0 ;
  wire \cnt_sysclk[31]_i_12_n_0 ;
  wire \cnt_sysclk[31]_i_2_n_0 ;
  wire \cnt_sysclk[31]_i_3_n_0 ;
  wire \cnt_sysclk[31]_i_4_n_0 ;
  wire \cnt_sysclk[31]_i_5_n_0 ;
  wire \cnt_sysclk[31]_i_7_n_0 ;
  wire \cnt_sysclk[31]_i_8_n_0 ;
  wire \cnt_sysclk[31]_i_9_n_0 ;
  wire ed_load_n_1;
  wire ed_load_n_10;
  wire ed_load_n_11;
  wire ed_load_n_12;
  wire ed_load_n_13;
  wire ed_load_n_14;
  wire ed_load_n_15;
  wire ed_load_n_16;
  wire ed_load_n_17;
  wire ed_load_n_18;
  wire ed_load_n_19;
  wire ed_load_n_2;
  wire ed_load_n_20;
  wire ed_load_n_21;
  wire ed_load_n_22;
  wire ed_load_n_23;
  wire ed_load_n_24;
  wire ed_load_n_25;
  wire ed_load_n_26;
  wire ed_load_n_27;
  wire ed_load_n_28;
  wire ed_load_n_29;
  wire ed_load_n_3;
  wire ed_load_n_30;
  wire ed_load_n_31;
  wire ed_load_n_32;
  wire ed_load_n_33;
  wire ed_load_n_34;
  wire ed_load_n_35;
  wire ed_load_n_36;
  wire ed_load_n_37;
  wire ed_load_n_38;
  wire ed_load_n_39;
  wire ed_load_n_4;
  wire ed_load_n_40;
  wire ed_load_n_41;
  wire ed_load_n_42;
  wire ed_load_n_43;
  wire ed_load_n_44;
  wire ed_load_n_45;
  wire ed_load_n_46;
  wire ed_load_n_47;
  wire ed_load_n_48;
  wire ed_load_n_49;
  wire ed_load_n_5;
  wire ed_load_n_50;
  wire ed_load_n_51;
  wire ed_load_n_6;
  wire ed_load_n_7;
  wire ed_load_n_8;
  wire ed_load_n_9;
  wire [7:0]hour;
  wire \hour[4]_i_3_n_0 ;
  wire \hour[4]_i_4_n_0 ;
  wire \hour[7]_i_3_n_0 ;
  wire [7:0]\hour_reg[7]_0 ;
  wire [7:0]min;
  wire \min[3]_i_2_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[5]_i_4_n_0 ;
  wire [7:0]\min_reg[7]_0 ;
  wire [7:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire [7:0]\s00_axi_rdata[7] ;
  wire \s00_axi_rdata[7]_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire [7:0]sec;
  wire \sec[3]_i_2_n_0 ;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire \sec[5]_i_4_n_0 ;
  wire [7:0]\sec_reg[7]_0 ;
  wire [2:0]sel0;
  wire [3:2]NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk0_carry__6_O_UNCONNECTED;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
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
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_sysclk[31]_i_10 
       (.I0(cnt_sysclk[10]),
        .I1(cnt_sysclk[11]),
        .O(\cnt_sysclk[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_sysclk[31]_i_11 
       (.I0(cnt_sysclk[9]),
        .I1(cnt_sysclk[8]),
        .I2(cnt_sysclk[12]),
        .O(\cnt_sysclk[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_sysclk[31]_i_12 
       (.I0(cnt_sysclk[18]),
        .I1(cnt_sysclk[13]),
        .I2(cnt_sysclk[14]),
        .I3(cnt_sysclk[16]),
        .I4(cnt_sysclk[15]),
        .O(\cnt_sysclk[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \cnt_sysclk[31]_i_2 
       (.I0(cnt_sysclk[31]),
        .I1(cnt_sysclk[26]),
        .I2(cnt_sysclk[25]),
        .I3(cnt_sysclk[30]),
        .I4(cnt_sysclk[29]),
        .O(\cnt_sysclk[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_sysclk[31]_i_3 
       (.I0(cnt_sysclk[21]),
        .I1(cnt_sysclk[22]),
        .I2(cnt_sysclk[26]),
        .I3(cnt_sysclk[20]),
        .I4(cnt_sysclk[24]),
        .I5(cnt_sysclk[23]),
        .O(\cnt_sysclk[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \cnt_sysclk[31]_i_4 
       (.I0(\cnt_sysclk[31]_i_7_n_0 ),
        .I1(\cnt_sysclk[31]_i_8_n_0 ),
        .I2(\cnt_sysclk[31]_i_9_n_0 ),
        .I3(\cnt_sysclk[31]_i_10_n_0 ),
        .I4(\cnt_sysclk[31]_i_11_n_0 ),
        .I5(\cnt_sysclk[31]_i_12_n_0 ),
        .O(\cnt_sysclk[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_sysclk[31]_i_5 
       (.I0(cnt_sysclk[27]),
        .I1(cnt_sysclk[28]),
        .O(\cnt_sysclk[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \cnt_sysclk[31]_i_7 
       (.I0(cnt_sysclk[17]),
        .I1(cnt_sysclk[18]),
        .I2(cnt_sysclk[19]),
        .O(\cnt_sysclk[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_sysclk[31]_i_8 
       (.I0(cnt_sysclk[7]),
        .I1(cnt_sysclk[6]),
        .I2(cnt_sysclk[5]),
        .I3(cnt_sysclk[4]),
        .O(\cnt_sysclk[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_sysclk[31]_i_9 
       (.I0(cnt_sysclk[1]),
        .I1(cnt_sysclk[0]),
        .I2(cnt_sysclk[3]),
        .I3(cnt_sysclk[2]),
        .O(\cnt_sysclk[31]_i_9_n_0 ));
  FDCE \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_34),
        .Q(cnt_sysclk[0]));
  FDCE \cnt_sysclk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_24),
        .Q(cnt_sysclk[10]));
  FDCE \cnt_sysclk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_23),
        .Q(cnt_sysclk[11]));
  FDCE \cnt_sysclk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_22),
        .Q(cnt_sysclk[12]));
  FDCE \cnt_sysclk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_21),
        .Q(cnt_sysclk[13]));
  FDCE \cnt_sysclk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_20),
        .Q(cnt_sysclk[14]));
  FDCE \cnt_sysclk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_19),
        .Q(cnt_sysclk[15]));
  FDCE \cnt_sysclk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_18),
        .Q(cnt_sysclk[16]));
  FDCE \cnt_sysclk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_17),
        .Q(cnt_sysclk[17]));
  FDCE \cnt_sysclk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_16),
        .Q(cnt_sysclk[18]));
  FDCE \cnt_sysclk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_15),
        .Q(cnt_sysclk[19]));
  FDCE \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_33),
        .Q(cnt_sysclk[1]));
  FDCE \cnt_sysclk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_14),
        .Q(cnt_sysclk[20]));
  FDCE \cnt_sysclk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_13),
        .Q(cnt_sysclk[21]));
  FDCE \cnt_sysclk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_12),
        .Q(cnt_sysclk[22]));
  FDCE \cnt_sysclk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_11),
        .Q(cnt_sysclk[23]));
  FDCE \cnt_sysclk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_10),
        .Q(cnt_sysclk[24]));
  FDCE \cnt_sysclk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_9),
        .Q(cnt_sysclk[25]));
  FDCE \cnt_sysclk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_8),
        .Q(cnt_sysclk[26]));
  FDCE \cnt_sysclk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_7),
        .Q(cnt_sysclk[27]));
  FDCE \cnt_sysclk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_6),
        .Q(cnt_sysclk[28]));
  FDCE \cnt_sysclk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_5),
        .Q(cnt_sysclk[29]));
  FDCE \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_32),
        .Q(cnt_sysclk[2]));
  FDCE \cnt_sysclk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_4),
        .Q(cnt_sysclk[30]));
  FDCE \cnt_sysclk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_3),
        .Q(cnt_sysclk[31]));
  FDCE \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_31),
        .Q(cnt_sysclk[3]));
  FDCE \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_30),
        .Q(cnt_sysclk[4]));
  FDCE \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_29),
        .Q(cnt_sysclk[5]));
  FDCE \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_28),
        .Q(cnt_sysclk[6]));
  FDCE \cnt_sysclk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_27),
        .Q(cnt_sysclk[7]));
  FDCE \cnt_sysclk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_26),
        .Q(cnt_sysclk[8]));
  FDCE \cnt_sysclk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_load_n_25),
        .Q(cnt_sysclk[9]));
  soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n ed_load
       (.AR(SR),
        .D({ed_load_n_3,ed_load_n_4,ed_load_n_5,ed_load_n_6,ed_load_n_7,ed_load_n_8,ed_load_n_9,ed_load_n_10,ed_load_n_11,ed_load_n_12,ed_load_n_13,ed_load_n_14,ed_load_n_15,ed_load_n_16,ed_load_n_17,ed_load_n_18,ed_load_n_19,ed_load_n_20,ed_load_n_21,ed_load_n_22,ed_load_n_23,ed_load_n_24,ed_load_n_25,ed_load_n_26,ed_load_n_27,ed_load_n_28,ed_load_n_29,ed_load_n_30,ed_load_n_31,ed_load_n_32,ed_load_n_33,ed_load_n_34}),
        .E(ed_load_n_1),
        .Q(Q),
        .cnt_sysclk0(cnt_sysclk0),
        .\cnt_sysclk_reg[28] (ed_load_n_35),
        .ff_old_reg_0({ed_load_n_36,ed_load_n_37,ed_load_n_38,ed_load_n_39,ed_load_n_40,ed_load_n_41,ed_load_n_42,ed_load_n_43}),
        .ff_old_reg_1({ed_load_n_44,ed_load_n_45,ed_load_n_46,ed_load_n_47,ed_load_n_48,ed_load_n_49,ed_load_n_50,ed_load_n_51}),
        .ff_old_reg_2(p_1_in),
        .\hour_reg[0] (\cnt_sysclk[31]_i_2_n_0 ),
        .\hour_reg[0]_0 (\cnt_sysclk[31]_i_3_n_0 ),
        .\hour_reg[0]_1 (\cnt_sysclk[31]_i_4_n_0 ),
        .\hour_reg[0]_2 (\cnt_sysclk[31]_i_5_n_0 ),
        .\hour_reg[0]_3 (\hour[7]_i_3_n_0 ),
        .\hour_reg[3] (\hour[4]_i_3_n_0 ),
        .\hour_reg[4] ({hour[7],hour[4:0]}),
        .\hour_reg[4]_0 (\hour[4]_i_4_n_0 ),
        .\hour_reg[7] (\hour_reg[7]_0 ),
        .\min_reg[0] (\sec[5]_i_3_n_0 ),
        .\min_reg[3] (\min[3]_i_2_n_0 ),
        .\min_reg[4] (\min[5]_i_2_n_0 ),
        .\min_reg[5] (min),
        .\min_reg[5]_0 (\min[5]_i_4_n_0 ),
        .\min_reg[7] (\min_reg[7]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sec_reg[0] ({cnt_sysclk[28:27],cnt_sysclk[0]}),
        .\sec_reg[3] (\sec[3]_i_2_n_0 ),
        .\sec_reg[4] (\sec[5]_i_2_n_0 ),
        .\sec_reg[5] (sec[5:0]),
        .\sec_reg[7] (ed_load_n_2),
        .\sec_reg[7]_0 (\sec_reg[7]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \hour[4]_i_3 
       (.I0(hour[2]),
        .I1(hour[0]),
        .I2(hour[1]),
        .O(\hour[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \hour[4]_i_4 
       (.I0(hour[6]),
        .I1(hour[5]),
        .I2(hour[1]),
        .I3(hour[2]),
        .I4(hour[4]),
        .I5(hour[0]),
        .O(\hour[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFE00)) 
    \hour[7]_i_3 
       (.I0(\min[5]_i_4_n_0 ),
        .I1(min[6]),
        .I2(min[7]),
        .I3(\sec[5]_i_4_n_0 ),
        .I4(sec[6]),
        .I5(sec[7]),
        .O(\hour[7]_i_3_n_0 ));
  FDCE \hour_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_43),
        .Q(hour[0]));
  FDCE \hour_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_42),
        .Q(hour[1]));
  FDCE \hour_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_41),
        .Q(hour[2]));
  FDCE \hour_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_40),
        .Q(hour[3]));
  FDCE \hour_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_39),
        .Q(hour[4]));
  FDCE \hour_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_38),
        .Q(hour[5]));
  FDCE \hour_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_37),
        .Q(hour[6]));
  FDCE \hour_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_1),
        .CLR(SR),
        .D(ed_load_n_36),
        .Q(hour[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \min[3]_i_2 
       (.I0(min[1]),
        .I1(min[0]),
        .O(\min[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \min[5]_i_2 
       (.I0(min[3]),
        .I1(min[1]),
        .I2(min[0]),
        .I3(min[2]),
        .O(\min[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \min[5]_i_4 
       (.I0(min[4]),
        .I1(min[3]),
        .I2(min[5]),
        .I3(min[2]),
        .I4(min[0]),
        .I5(min[1]),
        .O(\min[5]_i_4_n_0 ));
  FDCE \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_51),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_50),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_49),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_48),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_47),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_46),
        .Q(min[5]));
  FDCE \min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_45),
        .Q(min[6]));
  FDCE \min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_2),
        .CLR(SR),
        .D(ed_load_n_44),
        .Q(min[7]));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(s00_axi_rdata_0_sn_1),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(min[0]),
        .I1(\s00_axi_rdata[7] [0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[0]),
        .I5(sec[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(s00_axi_rdata_1_sn_1),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(min[1]),
        .I1(\s00_axi_rdata[7] [1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[1]),
        .I5(sec[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(s00_axi_rdata_2_sn_1),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(min[2]),
        .I1(\s00_axi_rdata[7] [2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[2]),
        .I5(sec[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(s00_axi_rdata_3_sn_1),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(min[3]),
        .I1(\s00_axi_rdata[7] [3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[3]),
        .I5(sec[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(s00_axi_rdata_4_sn_1),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(min[4]),
        .I1(\s00_axi_rdata[7] [4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[4]),
        .I5(sec[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(s00_axi_rdata_5_sn_1),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(min[5]),
        .I1(\s00_axi_rdata[7] [5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[5]),
        .I5(sec[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(s00_axi_rdata_6_sn_1),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(min[6]),
        .I1(\s00_axi_rdata[7] [6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[6]),
        .I5(sec[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(min[7]),
        .I1(\s00_axi_rdata[7] [7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(hour[7]),
        .I5(sec[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sec[3]_i_2 
       (.I0(sec[1]),
        .I1(sec[0]),
        .O(\sec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sec[5]_i_2 
       (.I0(sec[3]),
        .I1(sec[1]),
        .I2(sec[0]),
        .I3(sec[2]),
        .O(\sec[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sec[5]_i_3 
       (.I0(sec[7]),
        .I1(sec[6]),
        .I2(\sec[5]_i_4_n_0 ),
        .O(\sec[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \sec[5]_i_4 
       (.I0(sec[4]),
        .I1(sec[3]),
        .I2(sec[5]),
        .I3(sec[2]),
        .I4(sec[0]),
        .I5(sec[1]),
        .O(\sec[5]_i_4_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(sec[5]));
  FDCE \sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(sec[6]));
  FDCE \sec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_load_n_35),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(sec[7]));
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
