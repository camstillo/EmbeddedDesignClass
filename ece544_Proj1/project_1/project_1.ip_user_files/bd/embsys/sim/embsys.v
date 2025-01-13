//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Jan 11 22:11:59 2025
//Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
//Command     : generate_target embsys.bd
//Design      : embsys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "embsys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=embsys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=7,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "embsys.hwdef" *) 
module embsys
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_16bits TRI_I" *) input [15:0]dip_switches_16bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl TRI_O" *) output [31:0]gpio_rtl_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_16bits TRI_O" *) output [15:0]led_16bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 push_buttons_5bits TRI_I" *) input [4:0]push_buttons_5bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  output rgbBLUE_0;
  output rgbGREEN_0;
  output rgbRED_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN embsys_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire [31:0]controlReg_0_1;
  wire microblaze_mcs_0_FIT1_Toggle;
  wire [15:0]microblaze_mcs_0_GPIO1_TRI_I;
  wire [4:0]microblaze_mcs_0_GPIO2_TRI_I;
  wire [15:0]microblaze_mcs_0_GPIO3_TRI_O;
  wire [31:0]microblaze_mcs_0_GPIO4_TRI_O;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire rgbPWM_0_clkPWM;
  wire rgbPWM_0_rgbBLUE;
  wire rgbPWM_0_rgbGREEN;
  wire rgbPWM_0_rgbRED;
  wire sys_clock_1;

  assign clkPWM_0 = rgbPWM_0_clkPWM;
  assign controlReg_0_1 = controlReg_0[31:0];
  assign gpio_rtl_tri_o[31:0] = microblaze_mcs_0_GPIO4_TRI_O;
  assign led_16bits_tri_o[15:0] = microblaze_mcs_0_GPIO3_TRI_O;
  assign microblaze_mcs_0_GPIO1_TRI_I = dip_switches_16bits_tri_i[15:0];
  assign microblaze_mcs_0_GPIO2_TRI_I = push_buttons_5bits_tri_i[4:0];
  assign reset_1 = reset;
  assign rgbBLUE_0 = rgbPWM_0_rgbBLUE;
  assign rgbGREEN_0 = rgbPWM_0_rgbGREEN;
  assign rgbRED_0 = rgbPWM_0_rgbRED;
  assign sys_clock_1 = sys_clock;
  embsys_microblaze_mcs_0_0 microblaze_mcs_0
       (.Clk(sys_clock_1),
        .FIT1_Toggle(microblaze_mcs_0_FIT1_Toggle),
        .GPIO1_tri_i(microblaze_mcs_0_GPIO1_TRI_I),
        .GPIO2_tri_i(microblaze_mcs_0_GPIO2_TRI_I),
        .GPIO3_tri_o(microblaze_mcs_0_GPIO3_TRI_O),
        .GPIO4_tri_o(microblaze_mcs_0_GPIO4_TRI_O),
        .Reset(reset_1));
  embsys_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(sys_clock_1));
  embsys_rgbPWM_0_0 rgbPWM_0
       (.clk(microblaze_mcs_0_FIT1_Toggle),
        .clkPWM(rgbPWM_0_clkPWM),
        .controlReg(controlReg_0_1),
        .reset(proc_sys_reset_0_peripheral_aresetn),
        .rgbBLUE(rgbPWM_0_rgbBLUE),
        .rgbGREEN(rgbPWM_0_rgbGREEN),
        .rgbRED(rgbPWM_0_rgbRED));
endmodule
