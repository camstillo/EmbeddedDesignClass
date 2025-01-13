// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:microblaze_mcs:3.0
// IP Revision: 23

(* X_CORE_INFO = "bd_0ac7,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "embsys_microblaze_mcs_0_0,bd_0ac7,{}" *)
(* CORE_GENERATION_INFO = "embsys_microblaze_mcs_0_0,bd_0ac7,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze_mcs,x_ipVersion=3.0,x_ipCoreRevision=23,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,JTAG_CHAIN=2,MICROBLAZE_INSTANCE=microblaze_0,AVOID_PRIMITIVES=0,PATH=mcs_0,FREQ=100.0,OPTIMIZATION=0,DEBUG_ENABLED=2,USE_BSCAN=0,BSCANID=76547328,TRACE=0,ECC=0,MEMSIZE=32768,MEMTYPE=0,USE_IO_BUS=0,USE_UART_RX=0,USE_UART_TX=0,UART_BAUDRATE=9600,UART_PROG_BAUDRATE=0,UART_DATA_BITS=8,UART_USE_PARITY=\
0,UART_ODD_PARITY=0,UART_RX_INTERRUPT=0,UART_TX_INTERRUPT=0,UART_ERROR_INTERRUPT=0,USE_FIT1=1,FIT1_No_CLOCKS=500,FIT1_INTERRUPT=0,USE_FIT2=0,FIT2_No_CLOCKS=6216,FIT2_INTERRUPT=0,USE_FIT3=0,FIT3_No_CLOCKS=6216,FIT3_INTERRUPT=0,USE_FIT4=0,FIT4_No_CLOCKS=6216,FIT4_INTERRUPT=0,USE_PIT1=0,PIT1_SIZE=32,PIT1_READABLE=1,PIT1_PRESCALER=0,PIT1_INTERRUPT=0,USE_PIT2=0,PIT2_SIZE=32,PIT2_READABLE=1,PIT2_PRESCALER=0,PIT2_INTERRUPT=0,USE_PIT3=0,PIT3_SIZE=32,PIT3_READABLE=1,PIT3_PRESCALER=0,PIT3_INTERRUPT=0,USE_\
PIT4=0,PIT4_SIZE=32,PIT4_READABLE=1,PIT4_PRESCALER=0,PIT4_INTERRUPT=0,USE_GPO1=0,GPO1_SIZE=32,GPO1_INIT=0x00000000,USE_GPO2=0,GPO2_SIZE=32,GPO2_INIT=0x00000000,USE_GPO3=1,GPO3_SIZE=16,GPO3_INIT=0x00000000,USE_GPO4=1,GPO4_SIZE=32,GPO4_INIT=0x00000000,USE_GPI1=1,GPI1_SIZE=16,GPI1_INTERRUPT=0,USE_GPI2=1,GPI2_SIZE=5,GPI2_INTERRUPT=0,USE_GPI3=0,GPI3_SIZE=32,GPI3_INTERRUPT=0,USE_GPI4=0,GPI4_SIZE=32,GPI4_INTERRUPT=0,INTC_USE_EXT_INTR=0,INTC_INTR_SIZE=1,INTC_LEVEL_EDGE=0x0000,INTC_POSITIVE=0xFFFF,INTC_A\
SYNC_INTR=0xFFFF,INTC_NUM_SYNC_FF=2,Component_Name=embsys_microblaze_mcs_0_0,USE_BOARD_FLOW=true,CLK_BOARD_INTERFACE=sys_clock,RESET_BOARD_INTERFACE=reset,GPIO1_BOARD_INTERFACE=dip_switches_16bits,GPIO2_BOARD_INTERFACE=push_buttons_5bits,GPIO3_BOARD_INTERFACE=led_16bits,GPIO4_BOARD_INTERFACE=Custom,UART_BOARD_INTERFACE=Custom}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module embsys_microblaze_mcs_0_0 (
  Clk,
  Reset,
  FIT1_Toggle,
  GPIO1_tri_i,
  GPIO2_tri_i,
  GPIO3_tri_o,
  GPIO4_tri_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN embsys_sys_clock, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *)
input wire Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.Reset RST" *)
input wire Reset;
output wire FIT1_Toggle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO1, C_USE_GPO1 0, C_GPO1_SIZE 32, C_GPO1_INIT 0x00000000, C_USE_GPI1 1, C_GPI1_SIZE 16, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_I" *)
input wire [15 : 0] GPIO1_tri_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, C_USE_GPO2 0, C_GPO2_SIZE 32, C_GPO2_INIT 0x00000000, C_USE_GPI2 1, C_GPI2_SIZE 5, C_GPI2_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *)
input wire [4 : 0] GPIO2_tri_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO3, C_USE_GPO3 1, C_GPO3_SIZE 16, C_GPO3_INIT 0x00000000, C_USE_GPI3 0, C_GPI3_SIZE 32, C_GPI3_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO3_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO3 TRI_O" *)
output wire [15 : 0] GPIO3_tri_o;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO4, C_USE_GPO4 1, C_GPO4_SIZE 32, C_GPO4_INIT 0x00000000, C_USE_GPI4 0, C_GPI4_SIZE 32, C_GPI4_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO4_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO4 TRI_O" *)
output wire [31 : 0] GPIO4_tri_o;

  bd_0ac7 inst (
    .Clk(Clk),
    .Reset(Reset),
    .FIT1_Toggle(FIT1_Toggle),
    .GPIO1_tri_i(GPIO1_tri_i),
    .GPIO2_tri_i(GPIO2_tri_i),
    .GPIO3_tri_o(GPIO3_tri_o),
    .GPIO4_tri_o(GPIO4_tri_o)
  );
endmodule
