vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_1
vlib questa_lib/msim/axi_vip_v1_1_1
vlib questa_lib/msim/processing_system7_vip_v1_0_3
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/blk_mem_gen_v8_3_6
vlib questa_lib/msim/axi_bram_ctrl_v4_0_13
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_1
vlib questa_lib/msim/lib_fifo_v1_0_10
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_17
vlib questa_lib/msim/axi_sg_v4_1_8
vlib questa_lib/msim/axi_dma_v7_1_16
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_15
vlib questa_lib/msim/axi_data_fifo_v2_1_14
vlib questa_lib/msim/axi_crossbar_v2_1_16
vlib questa_lib/msim/axi_protocol_converter_v2_1_15

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 questa_lib/msim/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 questa_lib/msim/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 questa_lib/msim/processing_system7_vip_v1_0_3
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap blk_mem_gen_v8_3_6 questa_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_13 questa_lib/msim/axi_bram_ctrl_v4_0_13
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 questa_lib/msim/lib_fifo_v1_0_10
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_17 questa_lib/msim/axi_datamover_v5_1_17
vmap axi_sg_v4_1_8 questa_lib/msim/axi_sg_v4_1_8
vmap axi_dma_v7_1_16 questa_lib/msim/axi_dma_v7_1_16
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 questa_lib/msim/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 questa_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 questa_lib/msim/axi_crossbar_v2_1_16
vmap axi_protocol_converter_v2_1_15 questa_lib/msim/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/base_zynq/ip/base_zynq_processing_system7_0_0/sim/base_zynq_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/base_zynq/ip/base_zynq_blk_mem_gen_0_0/sim/base_zynq_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_13 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/20fd/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/base_zynq/ip/base_zynq_axi_bram_ctrl_0_0/sim/base_zynq_axi_bram_ctrl_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/base_zynq/ip/base_zynq_rst_ps7_0_50M_0/sim/base_zynq_rst_ps7_0_50M_0.vhd" \
"../../../bd/base_zynq/ip/base_zynq_axi_bram_ctrl_0_1/sim/base_zynq_axi_bram_ctrl_0_1.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_17 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_8 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5f94/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_16 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/bf8c/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/base_zynq/ip/base_zynq_axi_dma_0_0/sim/base_zynq_axi_dma_0_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/base_zynq/ip/base_zynq_xlconcat_0_0/sim/base_zynq_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/base_zynq/ip/base_zynq_xbar_0/sim/base_zynq_xbar_0.v" \
"../../../bd/base_zynq/ip/base_zynq_xbar_1/sim/base_zynq_xbar_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/base_zynq/sim/base_zynq.vhd" \
"../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1_M00_AXIS.vhd" \
"../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1_S00_AXIS.vhd" \
"../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1.vhd" \
"../../../bd/base_zynq/ip/base_zynq_myip_0_0/sim/base_zynq_myip_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_15 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/base_zynq/ip/base_zynq_auto_pc_0/sim/base_zynq_auto_pc_0.v" \
"../../../bd/base_zynq/ip/base_zynq_auto_pc_1/sim/base_zynq_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

