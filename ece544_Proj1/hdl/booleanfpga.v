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

module booleanfpga
(
    sw,
    btn0,
    btn1,
    btn2,
    btn3,
    led,
    RGB0_Blue,
    RGB0_Green,
    RGB0_Red,
    clk
 );

  input [15:0] sw;
  input btn0, btn1, btn2, btn3;
  output [15:0]led;
  output RGB0_Blue;
  output RGB0_Green;
  output RGB0_Red;
  input clk; 

  wire [15:0] sw;
  wire [3:0]  push_button_4bit_tri_i;     // {btnD, btnR, btnL, btnU, btnC}
  wire [15:0] led;
  wire RGB0_Blue;
  wire RGB0_Green;
  wire RGB0_Red;
  wire clk;
  wire reset_rtl;
  
  wire [31:0] controlReg_0, gpio_rtl_tri_o;

  // generate reset signal (reset is asserted low)
  assign reset_rtl = ~(btn0 & btn1);
  
  // combine the pushbuttons
  assign push_button_4bit_tri_i = {btn3, btn2, btn1, btn0};
  
  // wrap GPIO4 output to the regPWM Congrol register input
  assign controlReg_0 = gpio_rtl_tri_o;
    
   // instantiate the embedded system  
   embsys embsys_i
       (.clkPWM_0(clkPWM),
        .clk_100mhz(clk),
        .controlReg_0(controlReg_0),
        .gpio_rtl_tri_o(gpio_rtl_tri_o),
        .led_16bit_tri_o(led),
        .push_button_4bit_tri_i(push_button_4bit_tri_i),
        .reset_rtl(reset_rtl),
        .rgbBLUE_0(RGB0_Blue),
        .rgbGREEN_0(RGB0_Green),
        .rgbRED_0(RGB0_Red),
        .switch_16bit_tri_i(sw));
endmodule
