vlib work
vmap work

#================================================================
# IPcore
#================================================================

vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/00_afifo/afifo_i32o32_d2048/afifo_i32o32_d2048_sim_netlist.V
vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/00_afifo/afifo_i90o90_d512/afifo_i90o90_d512_sim_netlist.V
vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/01_sfifo/sfifo_i32o32_d1024/sfifo_i32o32_d1024_sim_netlist.V

#================================================================
# RTL
#================================================================

vlog    -reportprogress 300 -work work      ../rtl/03_usb/*.V
vlog    -reportprogress 300 -work work      ../rtl/04_bist/*.V