-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/srio_gen2_v4_1_11 \
  "../../../ipstatic/hdl/srio_gen2_v4_1_rfs.v" \
-endlib
-makelib xcelium_lib/srio_gen2_v4_1_11 \
  "../../../ipstatic/hdl/srio_gen2_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/cfg_fabric_srio_5gx1.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtx_GT.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtxe2_init.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtx_multi_gt.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtxe2_rx_startup_fsm.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtxe2_sync_block.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_gtxe2_tx_startup_fsm.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_gt_wrapper_srio_5gx1_k7_1x.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1_block.v" \
  "../../../../srio_5gx1_ex.gen/sources_1/ip/srio_5gx1/synth/srio_5gx1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

