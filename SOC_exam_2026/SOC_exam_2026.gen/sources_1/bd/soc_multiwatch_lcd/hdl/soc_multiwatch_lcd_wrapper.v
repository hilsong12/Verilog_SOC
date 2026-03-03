//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Jan 29 08:11:26 2026
//Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_multiwatch_lcd_wrapper.bd
//Design      : soc_multiwatch_lcd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_multiwatch_lcd_wrapper
   (alarm_0,
    com_0,
    dip_switches_16bits_tri_i,
    push_buttons_4bits_tri_i,
    reset,
    scl_0,
    scl_1,
    sda_0,
    sda_1,
    seg_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output alarm_0;
  output [3:0]com_0;
  input [15:0]dip_switches_16bits_tri_i;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  output scl_0;
  output scl_1;
  output sda_0;
  output sda_1;
  output [7:0]seg_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire alarm_0;
  wire [3:0]com_0;
  wire [15:0]dip_switches_16bits_tri_i;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire scl_0;
  wire scl_1;
  wire sda_0;
  wire sda_1;
  wire [7:0]seg_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_multiwatch_lcd soc_multiwatch_lcd_i
       (.alarm_0(alarm_0),
        .com_0(com_0),
        .dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .scl_0(scl_0),
        .scl_1(scl_1),
        .sda_0(sda_0),
        .sda_1(sda_1),
        .seg_0(seg_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
