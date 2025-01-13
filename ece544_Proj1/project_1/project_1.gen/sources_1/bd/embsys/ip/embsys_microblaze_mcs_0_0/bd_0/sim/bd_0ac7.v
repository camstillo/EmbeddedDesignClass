//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0ac7.bd
//Design : bd_0ac7
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0ac7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0ac7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "embsys_microblaze_mcs_0_0.hwdef" *) 
module bd_0ac7
   (Clk,
    FIT1_Toggle,
    GPIO1_tri_i,
    GPIO2_tri_i,
    GPIO3_tri_o,
    GPIO4_tri_o,
    Reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_ASYNC_RESET Reset, CLK_DOMAIN embsys_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input Clk;
  output FIT1_Toggle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO1, C_GPI1_INTERRUPT 0, C_GPI1_SIZE 16, C_GPO1_INIT 0x00000000, C_GPO1_SIZE 32, C_USE_GPI1 1, C_USE_GPO1 0" *) input [15:0]GPIO1_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, C_GPI2_INTERRUPT 0, C_GPI2_SIZE 5, C_GPO2_INIT 0x00000000, C_GPO2_SIZE 32, C_USE_GPI2 1, C_USE_GPO2 0" *) input [4:0]GPIO2_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO3 TRI_O" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO3, C_GPI3_INTERRUPT 0, C_GPI3_SIZE 32, C_GPO3_INIT 0x00000000, C_GPO3_SIZE 16, C_USE_GPI3 0, C_USE_GPO3 1" *) output [15:0]GPIO3_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO4 TRI_O" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO4, C_GPI4_INTERRUPT 0, C_GPI4_SIZE 32, C_GPO4_INIT 0x00000000, C_GPO4_SIZE 32, C_USE_GPI4 0, C_USE_GPO4 1" *) output [31:0]GPIO4_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input Reset;

  wire Clk3;
  wire Dbg_Wakeup;
  wire Debug_SYS_Rst;
  wire FIT1_Toggle;
  wire [0:0]IO_Rst;
  wire [0:0]LMB_Rst1;
  wire MB_Reset;
  wire Reset;
  wire [1:0]Wakeup;
  wire [0:31]dlmb_ABUS;
  wire dlmb_ADDRSTROBE;
  wire [0:3]dlmb_BE;
  wire dlmb_CE;
  wire [0:31]dlmb_READDBUS;
  wire dlmb_READSTROBE;
  wire dlmb_READY;
  wire dlmb_UE;
  wire dlmb_WAIT;
  wire [0:31]dlmb_WRITEDBUS;
  wire dlmb_WRITESTROBE;
  wire [0:31]dlmb_port_ADDR;
  wire dlmb_port_CLK;
  wire [0:31]dlmb_port_DIN;
  wire [31:0]dlmb_port_DOUT;
  wire dlmb_port_EN;
  wire dlmb_port_RST;
  wire [0:3]dlmb_port_WE;
  wire [0:31]dlmb_sl_0_ABUS;
  wire dlmb_sl_0_ADDRSTROBE;
  wire [0:3]dlmb_sl_0_BE;
  wire dlmb_sl_0_CE;
  wire [0:31]dlmb_sl_0_READDBUS;
  wire dlmb_sl_0_READSTROBE;
  wire dlmb_sl_0_READY;
  wire dlmb_sl_0_UE;
  wire dlmb_sl_0_WAIT;
  wire [0:31]dlmb_sl_0_WRITEDBUS;
  wire dlmb_sl_0_WRITESTROBE;
  wire dlmb_sl_1_CE;
  wire [0:31]dlmb_sl_1_READDBUS;
  wire dlmb_sl_1_READY;
  wire dlmb_sl_1_UE;
  wire dlmb_sl_1_WAIT;
  wire [0:31]ilmb_ABUS;
  wire ilmb_ADDRSTROBE;
  wire ilmb_CE;
  wire [0:31]ilmb_READDBUS;
  wire ilmb_READSTROBE;
  wire ilmb_READY;
  wire ilmb_UE;
  wire ilmb_WAIT;
  wire [0:31]ilmb_port_ADDR;
  wire ilmb_port_CLK;
  wire [0:31]ilmb_port_DIN;
  wire [31:0]ilmb_port_DOUT;
  wire ilmb_port_EN;
  wire ilmb_port_RST;
  wire [0:3]ilmb_port_WE;
  wire [0:31]ilmb_sl_0_ABUS;
  wire ilmb_sl_0_ADDRSTROBE;
  wire [0:3]ilmb_sl_0_BE;
  wire ilmb_sl_0_CE;
  wire [0:31]ilmb_sl_0_READDBUS;
  wire ilmb_sl_0_READSTROBE;
  wire ilmb_sl_0_READY;
  wire ilmb_sl_0_UE;
  wire ilmb_sl_0_WAIT;
  wire [0:31]ilmb_sl_0_WRITEDBUS;
  wire ilmb_sl_0_WRITESTROBE;
  wire [15:0]iomodule_0_GPIO1_TRI_I;
  wire [4:0]iomodule_0_GPIO2_TRI_I;
  wire [15:0]iomodule_0_GPIO3_TRI_O;
  wire [31:0]iomodule_0_GPIO4_TRI_O;
  wire [0:0]mdm_0_ARESETN;
  wire [31:0]mdm_0_s_axi_ARADDR;
  wire mdm_0_s_axi_ARREADY;
  wire mdm_0_s_axi_ARVALID;
  wire [31:0]mdm_0_s_axi_AWADDR;
  wire mdm_0_s_axi_AWREADY;
  wire mdm_0_s_axi_AWVALID;
  wire mdm_0_s_axi_BREADY;
  wire [1:0]mdm_0_s_axi_BRESP;
  wire mdm_0_s_axi_BVALID;
  wire [31:0]mdm_0_s_axi_RDATA;
  wire mdm_0_s_axi_RREADY;
  wire [1:0]mdm_0_s_axi_RRESP;
  wire mdm_0_s_axi_RVALID;
  wire [31:0]mdm_0_s_axi_WDATA;
  wire mdm_0_s_axi_WREADY;
  wire [3:0]mdm_0_s_axi_WSTRB;
  wire mdm_0_s_axi_WVALID;
  wire microblaze_I_mdm_bus_CAPTURE;
  wire microblaze_I_mdm_bus_CLK;
  wire microblaze_I_mdm_bus_DISABLE;
  wire [0:7]microblaze_I_mdm_bus_REG_EN;
  wire microblaze_I_mdm_bus_RST;
  wire microblaze_I_mdm_bus_SHIFT;
  wire microblaze_I_mdm_bus_TDI;
  wire microblaze_I_mdm_bus_TDO;
  wire microblaze_I_mdm_bus_UPDATE;

  assign Clk3 = Clk;
  assign GPIO3_tri_o[15:0] = iomodule_0_GPIO3_TRI_O;
  assign GPIO4_tri_o[31:0] = iomodule_0_GPIO4_TRI_O;
  assign iomodule_0_GPIO1_TRI_I = GPIO1_tri_i[15:0];
  assign iomodule_0_GPIO2_TRI_I = GPIO2_tri_i[4:0];
  bd_0ac7_dlmb_0 dlmb
       (.LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_CE(dlmb_CE),
        .LMB_Clk(Clk3),
        .LMB_ReadDBus(dlmb_READDBUS),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_Ready(dlmb_READY),
        .LMB_UE(dlmb_UE),
        .LMB_Wait(dlmb_WAIT),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .M_ABus(dlmb_ABUS),
        .M_AddrStrobe(dlmb_ADDRSTROBE),
        .M_BE(dlmb_BE),
        .M_DBus(dlmb_WRITEDBUS),
        .M_ReadStrobe(dlmb_READSTROBE),
        .M_WriteStrobe(dlmb_WRITESTROBE),
        .SYS_Rst(LMB_Rst1),
        .Sl_CE({dlmb_sl_0_CE,dlmb_sl_1_CE}),
        .Sl_DBus({dlmb_sl_0_READDBUS,dlmb_sl_1_READDBUS}),
        .Sl_Ready({dlmb_sl_0_READY,dlmb_sl_1_READY}),
        .Sl_UE({dlmb_sl_0_UE,dlmb_sl_1_UE}),
        .Sl_Wait({dlmb_sl_0_WAIT,dlmb_sl_1_WAIT}));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > bd_0ac7 lmb_bram_I" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_0ac7_dlmb_cntlr_0 dlmb_cntlr
       (.BRAM_Addr_A(dlmb_port_ADDR),
        .BRAM_Clk_A(dlmb_port_CLK),
        .BRAM_Din_A({dlmb_port_DOUT[31],dlmb_port_DOUT[30],dlmb_port_DOUT[29],dlmb_port_DOUT[28],dlmb_port_DOUT[27],dlmb_port_DOUT[26],dlmb_port_DOUT[25],dlmb_port_DOUT[24],dlmb_port_DOUT[23],dlmb_port_DOUT[22],dlmb_port_DOUT[21],dlmb_port_DOUT[20],dlmb_port_DOUT[19],dlmb_port_DOUT[18],dlmb_port_DOUT[17],dlmb_port_DOUT[16],dlmb_port_DOUT[15],dlmb_port_DOUT[14],dlmb_port_DOUT[13],dlmb_port_DOUT[12],dlmb_port_DOUT[11],dlmb_port_DOUT[10],dlmb_port_DOUT[9],dlmb_port_DOUT[8],dlmb_port_DOUT[7],dlmb_port_DOUT[6],dlmb_port_DOUT[5],dlmb_port_DOUT[4],dlmb_port_DOUT[3],dlmb_port_DOUT[2],dlmb_port_DOUT[1],dlmb_port_DOUT[0]}),
        .BRAM_Dout_A(dlmb_port_DIN),
        .BRAM_EN_A(dlmb_port_EN),
        .BRAM_Rst_A(dlmb_port_RST),
        .BRAM_WEN_A(dlmb_port_WE),
        .LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_Clk(Clk3),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_Rst(LMB_Rst1),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .Sl_CE(dlmb_sl_0_CE),
        .Sl_DBus(dlmb_sl_0_READDBUS),
        .Sl_Ready(dlmb_sl_0_READY),
        .Sl_UE(dlmb_sl_0_UE),
        .Sl_Wait(dlmb_sl_0_WAIT));
  bd_0ac7_ilmb_0 ilmb
       (.LMB_ABus(ilmb_sl_0_ABUS),
        .LMB_AddrStrobe(ilmb_sl_0_ADDRSTROBE),
        .LMB_BE(ilmb_sl_0_BE),
        .LMB_CE(ilmb_CE),
        .LMB_Clk(Clk3),
        .LMB_ReadDBus(ilmb_READDBUS),
        .LMB_ReadStrobe(ilmb_sl_0_READSTROBE),
        .LMB_Ready(ilmb_READY),
        .LMB_UE(ilmb_UE),
        .LMB_Wait(ilmb_WAIT),
        .LMB_WriteDBus(ilmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(ilmb_sl_0_WRITESTROBE),
        .M_ABus(ilmb_ABUS),
        .M_AddrStrobe(ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(LMB_Rst1),
        .Sl_CE(ilmb_sl_0_CE),
        .Sl_DBus(ilmb_sl_0_READDBUS),
        .Sl_Ready(ilmb_sl_0_READY),
        .Sl_UE(ilmb_sl_0_UE),
        .Sl_Wait(ilmb_sl_0_WAIT));
  bd_0ac7_ilmb_cntlr_0 ilmb_cntlr
       (.BRAM_Addr_A(ilmb_port_ADDR),
        .BRAM_Clk_A(ilmb_port_CLK),
        .BRAM_Din_A({ilmb_port_DOUT[31],ilmb_port_DOUT[30],ilmb_port_DOUT[29],ilmb_port_DOUT[28],ilmb_port_DOUT[27],ilmb_port_DOUT[26],ilmb_port_DOUT[25],ilmb_port_DOUT[24],ilmb_port_DOUT[23],ilmb_port_DOUT[22],ilmb_port_DOUT[21],ilmb_port_DOUT[20],ilmb_port_DOUT[19],ilmb_port_DOUT[18],ilmb_port_DOUT[17],ilmb_port_DOUT[16],ilmb_port_DOUT[15],ilmb_port_DOUT[14],ilmb_port_DOUT[13],ilmb_port_DOUT[12],ilmb_port_DOUT[11],ilmb_port_DOUT[10],ilmb_port_DOUT[9],ilmb_port_DOUT[8],ilmb_port_DOUT[7],ilmb_port_DOUT[6],ilmb_port_DOUT[5],ilmb_port_DOUT[4],ilmb_port_DOUT[3],ilmb_port_DOUT[2],ilmb_port_DOUT[1],ilmb_port_DOUT[0]}),
        .BRAM_Dout_A(ilmb_port_DIN),
        .BRAM_EN_A(ilmb_port_EN),
        .BRAM_Rst_A(ilmb_port_RST),
        .BRAM_WEN_A(ilmb_port_WE),
        .LMB_ABus(ilmb_sl_0_ABUS),
        .LMB_AddrStrobe(ilmb_sl_0_ADDRSTROBE),
        .LMB_BE(ilmb_sl_0_BE),
        .LMB_Clk(Clk3),
        .LMB_ReadStrobe(ilmb_sl_0_READSTROBE),
        .LMB_Rst(LMB_Rst1),
        .LMB_WriteDBus(ilmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(ilmb_sl_0_WRITESTROBE),
        .Sl_CE(ilmb_sl_0_CE),
        .Sl_DBus(ilmb_sl_0_READDBUS),
        .Sl_Ready(ilmb_sl_0_READY),
        .Sl_UE(ilmb_sl_0_UE),
        .Sl_Wait(ilmb_sl_0_WAIT));
  bd_0ac7_iomodule_0_0 iomodule_0
       (.Clk(Clk3),
        .FIT1_Toggle(FIT1_Toggle),
        .GPI1(iomodule_0_GPIO1_TRI_I),
        .GPI2(iomodule_0_GPIO2_TRI_I),
        .GPO3(iomodule_0_GPIO3_TRI_O),
        .GPO4(iomodule_0_GPIO4_TRI_O),
        .LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .Rst(IO_Rst),
        .Sl_CE(dlmb_sl_1_CE),
        .Sl_DBus(dlmb_sl_1_READDBUS),
        .Sl_Ready(dlmb_sl_1_READY),
        .Sl_UE(dlmb_sl_1_UE),
        .Sl_Wait(dlmb_sl_1_WAIT));
  bd_0ac7_lmb_bram_I_0 lmb_bram_I
       (.addra({dlmb_port_ADDR[0],dlmb_port_ADDR[1],dlmb_port_ADDR[2],dlmb_port_ADDR[3],dlmb_port_ADDR[4],dlmb_port_ADDR[5],dlmb_port_ADDR[6],dlmb_port_ADDR[7],dlmb_port_ADDR[8],dlmb_port_ADDR[9],dlmb_port_ADDR[10],dlmb_port_ADDR[11],dlmb_port_ADDR[12],dlmb_port_ADDR[13],dlmb_port_ADDR[14],dlmb_port_ADDR[15],dlmb_port_ADDR[16],dlmb_port_ADDR[17],dlmb_port_ADDR[18],dlmb_port_ADDR[19],dlmb_port_ADDR[20],dlmb_port_ADDR[21],dlmb_port_ADDR[22],dlmb_port_ADDR[23],dlmb_port_ADDR[24],dlmb_port_ADDR[25],dlmb_port_ADDR[26],dlmb_port_ADDR[27],dlmb_port_ADDR[28],dlmb_port_ADDR[29],dlmb_port_ADDR[30],dlmb_port_ADDR[31]}),
        .addrb({ilmb_port_ADDR[0],ilmb_port_ADDR[1],ilmb_port_ADDR[2],ilmb_port_ADDR[3],ilmb_port_ADDR[4],ilmb_port_ADDR[5],ilmb_port_ADDR[6],ilmb_port_ADDR[7],ilmb_port_ADDR[8],ilmb_port_ADDR[9],ilmb_port_ADDR[10],ilmb_port_ADDR[11],ilmb_port_ADDR[12],ilmb_port_ADDR[13],ilmb_port_ADDR[14],ilmb_port_ADDR[15],ilmb_port_ADDR[16],ilmb_port_ADDR[17],ilmb_port_ADDR[18],ilmb_port_ADDR[19],ilmb_port_ADDR[20],ilmb_port_ADDR[21],ilmb_port_ADDR[22],ilmb_port_ADDR[23],ilmb_port_ADDR[24],ilmb_port_ADDR[25],ilmb_port_ADDR[26],ilmb_port_ADDR[27],ilmb_port_ADDR[28],ilmb_port_ADDR[29],ilmb_port_ADDR[30],ilmb_port_ADDR[31]}),
        .clka(dlmb_port_CLK),
        .clkb(ilmb_port_CLK),
        .dina({dlmb_port_DIN[0],dlmb_port_DIN[1],dlmb_port_DIN[2],dlmb_port_DIN[3],dlmb_port_DIN[4],dlmb_port_DIN[5],dlmb_port_DIN[6],dlmb_port_DIN[7],dlmb_port_DIN[8],dlmb_port_DIN[9],dlmb_port_DIN[10],dlmb_port_DIN[11],dlmb_port_DIN[12],dlmb_port_DIN[13],dlmb_port_DIN[14],dlmb_port_DIN[15],dlmb_port_DIN[16],dlmb_port_DIN[17],dlmb_port_DIN[18],dlmb_port_DIN[19],dlmb_port_DIN[20],dlmb_port_DIN[21],dlmb_port_DIN[22],dlmb_port_DIN[23],dlmb_port_DIN[24],dlmb_port_DIN[25],dlmb_port_DIN[26],dlmb_port_DIN[27],dlmb_port_DIN[28],dlmb_port_DIN[29],dlmb_port_DIN[30],dlmb_port_DIN[31]}),
        .dinb({ilmb_port_DIN[0],ilmb_port_DIN[1],ilmb_port_DIN[2],ilmb_port_DIN[3],ilmb_port_DIN[4],ilmb_port_DIN[5],ilmb_port_DIN[6],ilmb_port_DIN[7],ilmb_port_DIN[8],ilmb_port_DIN[9],ilmb_port_DIN[10],ilmb_port_DIN[11],ilmb_port_DIN[12],ilmb_port_DIN[13],ilmb_port_DIN[14],ilmb_port_DIN[15],ilmb_port_DIN[16],ilmb_port_DIN[17],ilmb_port_DIN[18],ilmb_port_DIN[19],ilmb_port_DIN[20],ilmb_port_DIN[21],ilmb_port_DIN[22],ilmb_port_DIN[23],ilmb_port_DIN[24],ilmb_port_DIN[25],ilmb_port_DIN[26],ilmb_port_DIN[27],ilmb_port_DIN[28],ilmb_port_DIN[29],ilmb_port_DIN[30],ilmb_port_DIN[31]}),
        .douta(dlmb_port_DOUT),
        .doutb(ilmb_port_DOUT),
        .ena(dlmb_port_EN),
        .enb(ilmb_port_EN),
        .rsta(dlmb_port_RST),
        .rstb(ilmb_port_RST),
        .wea({dlmb_port_WE[0],dlmb_port_WE[1],dlmb_port_WE[2],dlmb_port_WE[3]}),
        .web({ilmb_port_WE[0],ilmb_port_WE[1],ilmb_port_WE[2],ilmb_port_WE[3]}));
  bd_0ac7_mdm_0_0 mdm_0
       (.Dbg_Capture_0(microblaze_I_mdm_bus_CAPTURE),
        .Dbg_Clk_0(microblaze_I_mdm_bus_CLK),
        .Dbg_Disable_0(microblaze_I_mdm_bus_DISABLE),
        .Dbg_Reg_En_0(microblaze_I_mdm_bus_REG_EN),
        .Dbg_Rst_0(microblaze_I_mdm_bus_RST),
        .Dbg_Shift_0(microblaze_I_mdm_bus_SHIFT),
        .Dbg_TDI_0(microblaze_I_mdm_bus_TDI),
        .Dbg_TDO_0(microblaze_I_mdm_bus_TDO),
        .Dbg_Update_0(microblaze_I_mdm_bus_UPDATE),
        .Debug_SYS_Rst(Debug_SYS_Rst),
        .S_AXI_ACLK(Clk3),
        .S_AXI_ARADDR(mdm_0_s_axi_ARADDR[3:0]),
        .S_AXI_ARESETN(mdm_0_ARESETN),
        .S_AXI_ARREADY(mdm_0_s_axi_ARREADY),
        .S_AXI_ARVALID(mdm_0_s_axi_ARVALID),
        .S_AXI_AWADDR(mdm_0_s_axi_AWADDR[3:0]),
        .S_AXI_AWREADY(mdm_0_s_axi_AWREADY),
        .S_AXI_AWVALID(mdm_0_s_axi_AWVALID),
        .S_AXI_BREADY(mdm_0_s_axi_BREADY),
        .S_AXI_BRESP(mdm_0_s_axi_BRESP),
        .S_AXI_BVALID(mdm_0_s_axi_BVALID),
        .S_AXI_RDATA(mdm_0_s_axi_RDATA),
        .S_AXI_RREADY(mdm_0_s_axi_RREADY),
        .S_AXI_RRESP(mdm_0_s_axi_RRESP),
        .S_AXI_RVALID(mdm_0_s_axi_RVALID),
        .S_AXI_WDATA(mdm_0_s_axi_WDATA),
        .S_AXI_WREADY(mdm_0_s_axi_WREADY),
        .S_AXI_WSTRB(mdm_0_s_axi_WSTRB),
        .S_AXI_WVALID(mdm_0_s_axi_WVALID));
  (* BMM_INFO_PROCESSOR = "microblaze-le > bd_0ac7 dlmb_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_0ac7_microblaze_I_0 microblaze_I
       (.Byte_Enable(dlmb_BE),
        .Clk(Clk3),
        .DCE(dlmb_CE),
        .DReady(dlmb_READY),
        .DUE(dlmb_UE),
        .DWait(dlmb_WAIT),
        .D_AS(dlmb_ADDRSTROBE),
        .Data_Addr(dlmb_ABUS),
        .Data_Read(dlmb_READDBUS),
        .Data_Write(dlmb_WRITEDBUS),
        .Dbg_Capture(microblaze_I_mdm_bus_CAPTURE),
        .Dbg_Clk(microblaze_I_mdm_bus_CLK),
        .Dbg_Disable(microblaze_I_mdm_bus_DISABLE),
        .Dbg_Reg_En(microblaze_I_mdm_bus_REG_EN),
        .Dbg_Shift(microblaze_I_mdm_bus_SHIFT),
        .Dbg_Stop(1'b0),
        .Dbg_TDI(microblaze_I_mdm_bus_TDI),
        .Dbg_TDO(microblaze_I_mdm_bus_TDO),
        .Dbg_Update(microblaze_I_mdm_bus_UPDATE),
        .Dbg_Wakeup(Dbg_Wakeup),
        .Debug_Rst(microblaze_I_mdm_bus_RST),
        .Ext_BRK(1'b0),
        .Ext_NM_BRK(1'b0),
        .ICE(ilmb_CE),
        .IFetch(ilmb_READSTROBE),
        .IReady(ilmb_READY),
        .IUE(ilmb_UE),
        .IWAIT(ilmb_WAIT),
        .I_AS(ilmb_ADDRSTROBE),
        .Instr(ilmb_READDBUS),
        .Instr_Addr(ilmb_ABUS),
        .Interrupt(1'b0),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(mdm_0_s_axi_ARADDR),
        .M_AXI_DP_ARREADY(mdm_0_s_axi_ARREADY),
        .M_AXI_DP_ARVALID(mdm_0_s_axi_ARVALID),
        .M_AXI_DP_AWADDR(mdm_0_s_axi_AWADDR),
        .M_AXI_DP_AWREADY(mdm_0_s_axi_AWREADY),
        .M_AXI_DP_AWVALID(mdm_0_s_axi_AWVALID),
        .M_AXI_DP_BREADY(mdm_0_s_axi_BREADY),
        .M_AXI_DP_BRESP(mdm_0_s_axi_BRESP),
        .M_AXI_DP_BVALID(mdm_0_s_axi_BVALID),
        .M_AXI_DP_RDATA(mdm_0_s_axi_RDATA),
        .M_AXI_DP_RREADY(mdm_0_s_axi_RREADY),
        .M_AXI_DP_RRESP(mdm_0_s_axi_RRESP),
        .M_AXI_DP_RVALID(mdm_0_s_axi_RVALID),
        .M_AXI_DP_WDATA(mdm_0_s_axi_WDATA),
        .M_AXI_DP_WREADY(mdm_0_s_axi_WREADY),
        .M_AXI_DP_WSTRB(mdm_0_s_axi_WSTRB),
        .M_AXI_DP_WVALID(mdm_0_s_axi_WVALID),
        .Non_Secure({1'b0,1'b0,1'b0,1'b0}),
        .Pause(1'b0),
        .Read_Strobe(dlmb_READSTROBE),
        .Reset(MB_Reset),
        .Reset_Mode({1'b0,1'b0}),
        .Wakeup({Wakeup[1],Wakeup[0]}),
        .Write_Strobe(dlmb_WRITESTROBE));
  bd_0ac7_rst_0_0 rst_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(LMB_Rst1),
        .dcm_locked(1'b1),
        .ext_reset_in(Reset),
        .mb_debug_sys_rst(Debug_SYS_Rst),
        .mb_reset(MB_Reset),
        .peripheral_aresetn(mdm_0_ARESETN),
        .peripheral_reset(IO_Rst),
        .slowest_sync_clk(Clk3));
  bd_0ac7_xlconcat_0_0 xlconcat_0
       (.In0(Dbg_Wakeup),
        .In1(Dbg_Wakeup),
        .dout(Wakeup));
endmodule
