// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module soc_multiwatch_lcd (
  push_buttons_4bits_tri_i,
  dip_switches_16bits_tri_i,
  usb_uart_rxd,
  usb_uart_txd,
  reset,
  sys_clock,
  alarm_0,
  com_0,
  seg_0,
  scl_0,
  sda_0,
  scl_1,
  sda_1
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 push_buttons_4bits TRI_I" *)
  (* X_INTERFACE_MODE = "master push_buttons_4bits" *)
  input [3:0]push_buttons_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_16bits TRI_I" *)
  (* X_INTERFACE_MODE = "master dip_switches_16bits" *)
  input [15:0]dip_switches_16bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *)
  (* X_INTERFACE_MODE = "master usb_uart" *)
  input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *)
  output usb_uart_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYS_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_multiwatch_lcd_sys_clock, INSERT_VIP 0" *)
  input sys_clock;
  (* X_INTERFACE_IGNORE = "true" *)
  output alarm_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]com_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]seg_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_1;

  // stub module has no contents

endmodule
