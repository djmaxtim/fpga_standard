vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/fifo_generator_v13_2_5
vlib riviera/srio_gen2_v4_1_11
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap srio_gen2_v4_1_11 riviera/srio_gen2_v4_1_11
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work srio_gen2_v4_1_11  -v2k5 \
"../../../ipstatic/hdl/srio_gen2_v4_1_rfs.v" \

vcom -work srio_gen2_v4_1_11 -93 \
"../../../ipstatic/hdl/srio_gen2_v4_1_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 \
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

vlog -work xil_defaultlib \
"glbl.v"

