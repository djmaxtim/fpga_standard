-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/JESD204_TX_phy_gt/example_design/jesd204_tx_phy_gt_tx_startup_fsm.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/JESD204_TX_phy_gt/example_design/jesd204_tx_phy_gt_rx_startup_fsm.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/jesd204_tx_phy_gt_init.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/jesd204_tx_phy_gt_gt.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/jesd204_tx_phy_gt_multi_gt.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/JESD204_TX_phy_gt/example_design/jesd204_tx_phy_gt_sync_block.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/ip_0/jesd204_tx_phy_gt.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy_block.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy_sync_block.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy_support.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy_gt_common_wrapper.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy_gtwizard_0_common.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/ip_0/synth/JESD204_TX_phy.v" \
-endlib
-makelib xcelium_lib/jesd204_v7_2_12 \
  "../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX_clocking.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX_support.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX_block.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/axi_ipif/JESD204_TX_address_decoder.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX_register_decode.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/axi_ipif/JESD204_TX_axi_lite_ipif.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/axi_ipif/JESD204_TX_counter_f.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/axi_ipif/JESD204_TX_pselect_f.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/axi_ipif/JESD204_TX_slave_attachment.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX_reset_block.v" \
  "../../../../../../../develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/synth/JESD204_TX.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

