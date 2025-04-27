vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/JESD204_PHY_gt/example_design/jesd204_phy_gt_tx_startup_fsm.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/JESD204_PHY_gt/example_design/jesd204_phy_gt_rx_startup_fsm.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/jesd204_phy_gt_init.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/jesd204_phy_gt_gt.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/jesd204_phy_gt_multi_gt.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/JESD204_PHY_gt/example_design/jesd204_phy_gt_sync_block.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/ip_0/jesd204_phy_gt.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/synth/JESD204_PHY_block.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/synth/JESD204_PHY_sync_block.v" \
"../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_PHY/synth/JESD204_PHY.v" \

vlog -work xil_defaultlib \
"glbl.v"

