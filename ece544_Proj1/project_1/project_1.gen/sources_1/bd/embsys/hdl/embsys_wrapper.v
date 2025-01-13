//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Jan 11 22:11:59 2025
//Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
//Command     : generate_target embsys_wrapper.bd
//Design      : embsys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module embsys_wrapper
   (clkPWM_0,
    controlReg_0,
    dip_switches_16bits_tri_i,
    gpio_rtl_tri_o,
    led_16bits_tri_o,
    push_buttons_5bits_tri_i,
    reset,
    rgbBLUE_0,
    rgbGREEN_0,
    rgbRED_0,
    sys_clock);
  output clkPWM_0;
  input [31:0]controlReg_0;
  input [15:0]dip_switches_16bits_tri_i;
  output [31:0]gpio_rtl_tri_o;
  output [15:0]led_16bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  output rgbBLUE_0;
  output rgbGREEN_0;
  output rgbRED_0;
  input sys_clock;

  wire clkPWM_0;
  wire [31:0]controlReg_0;
  wire [15:0]dip_switches_16bits_tri_i;
  wire [31:0]gpio_rtl_tri_o;
  wire [15:0]led_16bits_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;
  wire reset;
  wire rgbBLUE_0;
  wire rgbGREEN_0;
  wire rgbRED_0;
  wire sys_clock;

  embsys embsys_i
       (.clkPWM_0(clkPWM_0),
        .controlReg_0(controlReg_0),
        .dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .gpio_rtl_tri_o(gpio_rtl_tri_o),
        .led_16bits_tri_o(led_16bits_tri_o),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(reset),
        .rgbBLUE_0(rgbBLUE_0),
        .rgbGREEN_0(rgbGREEN_0),
        .rgbRED_0(rgbRED_0),
        .sys_clock(sys_clock));
endmodule
