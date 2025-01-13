// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Jan 11 22:14:03 2025
// Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               a:/ECE544_GitHub/ece544_Proj1/project_1/project_1.gen/sources_1/bd/embsys/ip/embsys_microblaze_mcs_0_0/embsys_microblaze_mcs_0_0_stub.v
// Design      : embsys_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_0ac7,Vivado 2024.1" *)
module embsys_microblaze_mcs_0_0(Clk, Reset, FIT1_Toggle, GPIO1_tri_i, 
  GPIO2_tri_i, GPIO3_tri_o, GPIO4_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Reset,FIT1_Toggle,GPIO1_tri_i[15:0],GPIO2_tri_i[4:0],GPIO3_tri_o[15:0],GPIO4_tri_o[31:0]" */
/* synthesis syn_force_seq_prim="Clk" */;
  input Clk /* synthesis syn_isclock = 1 */;
  input Reset;
  output FIT1_Toggle;
  input [15:0]GPIO1_tri_i;
  input [4:0]GPIO2_tri_i;
  output [15:0]GPIO3_tri_o;
  output [31:0]GPIO4_tri_o;
endmodule
