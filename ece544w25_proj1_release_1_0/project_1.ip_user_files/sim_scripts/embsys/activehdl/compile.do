transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_14
vlib activehdl/lmb_bram_if_cntlr_v4_0_24
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_crossbar_v2_1_32
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_19
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/mdm_v3_2_26
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/fit_timer_v2_0_12
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/axi_timer_v2_0_33
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_33

vmap xpm activehdl/xpm
vmap microblaze_v11_0_13 activehdl/microblaze_v11_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_14 activehdl/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 activehdl/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 activehdl/axi_crossbar_v2_1_32
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_19 activehdl/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap mdm_v3_2_26 activehdl/mdm_v3_2_26
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap fit_timer_v2_0_12 activehdl/fit_timer_v2_0_12
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap axi_timer_v2_0_33 activehdl/axi_timer_v2_0_33
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 activehdl/axi_gpio_v2_0_33

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_19 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \

vcom -work fit_timer_v2_0_12 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/c0be/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
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

vcom -work lib_pkg_v1_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_33 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/a443/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -93  \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/ip/embsys_rgbPWM_0_0/sim/embsys_rgbPWM_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_proc_sys_reset_0_0/sim/embsys_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ipshared/3242" "+incdir+../../../../project_1.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l fit_timer_v2_0_12 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/embsys/sim/embsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

