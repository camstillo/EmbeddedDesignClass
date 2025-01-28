////////////
// Boolean Board Top-level module for ECE 544 Project #1
// May have to be modified for your specific embedded system implementation
///////////

`timescale 1 ps / 1 ps

module booleanfpga
(
    input logic			clk,
    input logic [15:0]	sw,		// slide switches
    input logic 		btn0,	// BTNU on Nexys A7
    input logic 		btn1,	// BTNR on Nexys A7
    input logic 		btn2,	// BTNL on Nexys A7
    input logic 		btn3,	// BTND on Nexys A7
    output logic [15:0]	led,	// green LEDs
    output logic 		RGB0_Blue, RGB0_Green, RGB0_Red,			// RGB1 on Nexys A7
	output logic 		RGB1_Blue, RGB1_Green, RGB1_Red,			// RGB2 on Nexys A7
	output logic [7:0]	AN,		// Anodes for 7-segment displays
	output logic		CA, CB, CC, CD, CE, CF, CG, DP,					// Cathodes for first 4-digit displays
	output logic		CA_1, CB_1, CC_1, CD_1, CE_1, CF_1, CG_1, DP_1	// Cathodes for second 4-digit display
 );

  
  wire [31:0] controlReg_0, gpio_rtl_tri_o;
  wire btnCpuReset;

  // generate reset signal (reset is asserted low)
  assign btnCpuReset = ~(btn0 & btn1);
  
  // wrap GPIO4 output to the regPWM Congrol register input
  assign controlReg_0 = gpio_rtl_tri_o;
  
  // generate the cathode signals for the second 4 digit 7-segment display
  always @(posedge clk) begin
    CA_1 <= CA;
    CB_1 <= CB;
    CC_1 <= CC;
    CD_1 <= CD;
    CE_1 <= CE;
    CF_1 <= CF;
    CG_1 <= CG;
	DP_1 <= DP;
   end
    
   // instantiate the embedded system       
   embsys embsys_i
       (.GPIO_0_tri_o(gpio_rtl_tri_o),
        .RGB2_Blue_0(RGB1_Blue),
        .RGB2_Green_0(RGB1_Green),
        .RGB2_Red_0(RGB1_Red),
        .an_0(AN),
        .btnC_0(1'b0),
        .btnD_0(btn3),
        .btnL_0(btn2),
        .btnR_0(btn1),
        .btnU_0(btn0),
        .clkPWM_0(),
        .clk_100MHz(clk),
        .controlReg_0(controlReg_0),
        .dp_0(DP),
        .led_0(led),
        .resetn(btnCpuReset),
        .rgbBLUE_0(RGB0_Blue),
        .rgbGREEN_0(RGB0_Green),
        .rgbRED_0(RGB0_Red),
        .seg_0({CG, CF, CE, CD, CC, CB, CA}),
        .sw_0(sw));
endmodule
