vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/jesd204_v7_2_12
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap jesd204_v7_2_12 riviera/jesd204_v7_2_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jesd204_v7_2_12  -v2k5 \
"../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
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

