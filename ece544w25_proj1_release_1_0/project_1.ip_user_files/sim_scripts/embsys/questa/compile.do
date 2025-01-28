vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_13
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_14
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_24
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_19
vlib questa_lib/msim/xlconcat_v2_1_6
vlib questa_lib/msim/mdm_v3_2_26
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/fit_timer_v2_0_12
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/axi_timer_v2_0_33
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_33

vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_13 questa_lib/msim/microblaze_v11_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_14 questa_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 questa_lib/msim/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_19 questa_lib/msim/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6
vmap mdm_v3_2_26 questa_lib/msim/mdm_v3_2_26
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap fit_timer_v2_0_12 questa_lib/msim/fit_timer_v2_0_12
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap axi_timer_v2_0_33 questa_lib/msim/axi_timer_v2_0_33
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 questa_lib/msim/axi_gpio_v2_0_33

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_19  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \

vcom -work fit_timer_v2_0_12  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/c0be/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ipshared/f811/hdl/nexys4io_v3_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/f811/hdl/nexys4io_v3_0.v" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/f811/src/rgbpwm.v" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/f811/src/debounce.v" \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/f811/src/sevensegment.v" \
"../../../bd/embsys/ip/embsys_nexys4io_0_0/sim/embsys_nexys4io_0_0.v" \
"../../../bd/embsys/ipshared/3593/hdl/pulseLength.v" \
"../../../bd/embsys/ipshared/3593/hdl/PWM_Analyzer_v1_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/3593/hdl/PWM_Analyzer_v1_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_0_0/sim/embsys_PWM_Analyzer_0_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_1_0/sim/embsys_PWM_Analyzer_1_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_2_0/sim/embsys_PWM_Analyzer_2_0.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_33  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/a443/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33  -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_rgbPWM_0_0/sim/embsys_rgbPWM_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/embsys/ip/embsys_proc_sys_reset_0_0/sim/embsys_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/sim/embsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

