transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+embsys  -L xpm -L microblaze_v11_0_13 -L xil_defaultlib -L lmb_v10_v3_0_14 -L lmb_bram_if_cntlr_v4_0_24 -L blk_mem_gen_v8_4_8 -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_19 -L xlconcat_v2_1_6 -L mdm_v3_2_26 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L fit_timer_v2_0_12 -L lib_pkg_v1_0_4 -L axi_timer_v2_0_33 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_33 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.embsys xil_defaultlib.glbl

do {embsys.udo}

run 1000ns

endsim

quit -force
