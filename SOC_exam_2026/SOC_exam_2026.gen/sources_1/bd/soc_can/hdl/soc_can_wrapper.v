//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Feb  6 15:26:18 2026
//Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_can_wrapper.bd
//Design      : soc_can_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_can_wrapper
   (can_rx_port_0,
    can_tx_port_0,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input can_rx_port_0;
  output can_tx_port_0;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire can_rx_port_0;
  wire can_tx_port_0;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_can soc_can_i
       (.can_rx_port_0(can_rx_port_0),
        .can_tx_port_0(can_tx_port_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
