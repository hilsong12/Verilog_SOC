//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Jan 26 15:12:04 2026
//Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_cooktimer_wrapper.bd
//Design      : soc_cooktimer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_cooktimer_wrapper
   (alarm_0,
    push_buttons_4bits_tri_i,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output alarm_0;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire alarm_0;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_cooktimer soc_cooktimer_i
       (.alarm_0(alarm_0),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
