//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Jan 23 11:33:26 2026
//Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_iic_cntr_wrapper.bd
//Design      : soc_iic_cntr_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_iic_cntr_wrapper
   (reset,
    scl_0,
    sda_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input reset;
  output scl_0;
  output sda_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire reset;
  wire scl_0;
  wire sda_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_iic_cntr soc_iic_cntr_i
       (.reset(reset),
        .scl_0(scl_0),
        .sda_0(sda_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
