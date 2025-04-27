-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/jesd204_v7_2_12 \
  "../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

