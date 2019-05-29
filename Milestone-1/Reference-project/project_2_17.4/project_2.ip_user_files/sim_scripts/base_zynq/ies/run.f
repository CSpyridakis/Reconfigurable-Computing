-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_3 -sv \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_processing_system7_0_0/sim/base_zynq_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_blk_mem_gen_0_0/sim/base_zynq_blk_mem_gen_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_0_13 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/20fd/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_axi_bram_ctrl_0_0/sim/base_zynq_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_rst_ps7_0_50M_0/sim/base_zynq_rst_ps7_0_50M_0.vhd" \
  "../../../bd/base_zynq/ip/base_zynq_axi_bram_ctrl_0_1/sim/base_zynq_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_10 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_17 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/71f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_8 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/5f94/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_16 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/bf8c/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_axi_dma_0_0/sim/base_zynq_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_xlconcat_0_0/sim/base_zynq_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_15 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_14 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_16 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_xbar_0/sim/base_zynq_xbar_0.v" \
  "../../../bd/base_zynq/ip/base_zynq_xbar_1/sim/base_zynq_xbar_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/sim/base_zynq.vhd" \
  "../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1_M00_AXIS.vhd" \
  "../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1_S00_AXIS.vhd" \
  "../../../bd/base_zynq/ipshared/1f12/hdl/myip_v1_1.vhd" \
  "../../../bd/base_zynq/ip/base_zynq_myip_0_0/sim/base_zynq_myip_0_0.vhd" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_15 \
  "../../../../project_2.srcs/sources_1/bd/base_zynq/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base_zynq/ip/base_zynq_auto_pc_0/sim/base_zynq_auto_pc_0.v" \
  "../../../bd/base_zynq/ip/base_zynq_auto_pc_1/sim/base_zynq_auto_pc_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

