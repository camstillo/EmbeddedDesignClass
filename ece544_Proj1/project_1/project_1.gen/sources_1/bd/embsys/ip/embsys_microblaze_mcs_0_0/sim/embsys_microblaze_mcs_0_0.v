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

`timescale 1ns/1ps

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
