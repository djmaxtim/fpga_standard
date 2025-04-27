vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/jesd204_v7_2_12
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap jesd204_v7_2_12 modelsim_lib/msim/jesd204_v7_2_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jesd204_v7_2_12  -incr -mfcu \
"../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/JESD204_block.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/axi_ipif/JESD204_address_decoder.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/JESD204_register_decode.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/axi_ipif/JESD204_axi_lite_ipif.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/axi_ipif/JESD204_counter_f.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/axi_ipif/JESD204_pselect_f.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/axi_ipif/JESD204_slave_attachment.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/JESD204_count_err.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/JESD204_reset_block.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204/synth/JESD204.v" \

vlog -work xil_defaultlib \
"glbl.v"

