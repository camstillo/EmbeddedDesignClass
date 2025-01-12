//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Nov 30 07:10:15 2022
//Host        : DESKTOP-UAMUI66 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module nexysa7fpga
(
    sw,
    btnC,
    btnU,
    btnR,
    btnL,
    btnD,
    btnCpuReset,
    led,
    RGB1_Blue,
    RGB1_Green,
    RGB1_Red,
    clk,
    
    // debug header
    JA[3:0]
 );

  input [15:0] sw;
  input btnC, btnU, btnR, btnL, btnD;
  input btnCpuReset;
  output [15:0]led;
  output RGB1_Blue;
  output RGB1_Green;
  output RGB1_Red;
  input clk; 
  output [3:0] JA;

  wire [15:0] sw;
  wire [4:0]  push_buttons_5bits_tri_i;     // {btnD, btnR, btnL, btnU, btnC}
  wire [15:0] led;
  wire btnCpuReset;
  wire RGB1_Blue;
  wire RGB1_Green;
  wire RGB1_Red;
  wire clk;
  
  wire [31:0] controlReg_0, gpio_rtl_tri_o;
  
  wire [3:0] JA;
  
  // connect rgbPWM signals to debug connector
  assign JA[0] = clkPWM;
  assign JA[1] = RGB1_Blue;
  assign JA[2] = RGB1_Green;
  assign JA[3] = RGB1_Red;
  
  // combine the pushbuttons
  assign push_buttons_5bits_tri_i = {btnD, btnR, btnL, btnU, btnC};
  
  // wrap GPIO4 output to the regPWM Congrol register input
  assign controlReg_0 = gpio_rtl_tri_o;
    
   // instantiate the embedded system  
   embsys embsys_i
       (.clkPWM_0(clkPWM),
        .controlReg_0(controlReg_0),
        .gpio_rtl_tri_o(gpio_rtl_tri_o),
        .dip_switches_16bits_tri_i(sw),
        .led_16bits_tri_o(led),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(btnCpuReset),
        .rgbBLUE_0(RGB1_Blue),
        .rgbGREEN_0(RGB1_Green),
        .rgbRED_0(RGB1_Red),
        .sys_clock(clk)
   );
endmodule
