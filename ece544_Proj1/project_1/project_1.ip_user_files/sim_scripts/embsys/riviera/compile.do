transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/microblaze_v11_0_13
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_24
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_26
vlib riviera/xlconcat_v2_1_6
vlib riviera/iomodule_v3_1_10

vmap xpm riviera/xpm
vmap microblaze_v11_0_13 riviera/microblaze_v11_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 riviera/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_26 riviera/mdm_v3_2_26
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap iomodule_v3_1_10 riviera/iomodule_v3_1_10

vlog -work xpm  -incr -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"A:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_0/sim/bd_0ac7_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_1/sim/bd_0ac7_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_2/sim/bd_0ac7_ilmb_0.vhd" \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_3/sim/bd_0ac7_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_4/sim/bd_0ac7_dlmb_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_5/sim/bd_0ac7_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_6/sim/bd_0ac7_lmb_bram_I_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_26 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_7/sim/bd_0ac7_mdm_0_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_8/sim/bd_0ac7_xlconcat_0_0.v" \

vcom -work iomodule_v3_1_10 -93  -incr \
"../../../../project_1.gen/sources_1/bd/embsys/ipshared/213d/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/ip/ip_9/sim/bd_0ac7_iomodule_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/bd_0/sim/bd_0ac7.v" \
"../../../bd/embsys/ip/embsys_microblaze_mcs_0_0/sim/embsys_microblaze_mcs_0_0.v" \
"../../../bd/embsys/ip/embsys_rgbPWM_0_0/sim/embsys_rgbPWM_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/embsys/ip/embsys_proc_sys_reset_0_0/sim/embsys_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_26 -l xlconcat_v2_1_6 -l iomodule_v3_1_10 \
"../../../bd/embsys/sim/embsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

