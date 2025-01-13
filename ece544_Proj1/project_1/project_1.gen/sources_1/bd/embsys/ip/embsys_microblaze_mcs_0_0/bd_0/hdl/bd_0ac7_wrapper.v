//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0ac7_wrapper.bd
//Design : bd_0ac7_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0ac7_wrapper
   (Clk,
    FIT1_Toggle,
    GPIO1_tri_i,
    GPIO2_tri_i,
    GPIO3_tri_o,
    GPIO4_tri_o,
    Reset);
  input Clk;
  output FIT1_Toggle;
  input [15:0]GPIO1_tri_i;
  input [4:0]GPIO2_tri_i;
  output [15:0]GPIO3_tri_o;
  output [31:0]GPIO4_tri_o;
  input Reset;

  wire Clk;
  wire FIT1_Toggle;
  wire [15:0]GPIO1_tri_i;
  wire [4:0]GPIO2_tri_i;
  wire [15:0]GPIO3_tri_o;
  wire [31:0]GPIO4_tri_o;
  wire Reset;

  bd_0ac7 bd_0ac7_i
       (.Clk(Clk),
        .FIT1_Toggle(FIT1_Toggle),
        .GPIO1_tri_i(GPIO1_tri_i),
        .GPIO2_tri_i(GPIO2_tri_i),
        .GPIO3_tri_o(GPIO3_tri_o),
        .GPIO4_tri_o(GPIO4_tri_o),
        .Reset(Reset));
endmodule
