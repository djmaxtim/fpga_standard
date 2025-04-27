vlib work
vmap work

#================================================================
# IPcore
#================================================================

vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/00_afifo/afifo_i72o72_d2048/afifo_i72o72_d2048_sim_netlist.V
vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/01_sfifo/sfifo_i32o32_d1024/sfifo_i32o32_d1024_sim_netlist.V
vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/01_sfifo/sfifo_i64o64_d512/sfifo_i64o64_d512_sim_netlist.V
vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/01_sfifo/sfifo_i72o72_d512/sfifo_i72o72_d512_sim_netlist.V

vlog    -reportprogress 300 -work work      ../rtl/00_xilinx_ip/03_ram/sram_i64o64_d256/sram_i64o64_d256_sim_netlist.V

#================================================================
# RTL
#================================================================

vlog    -reportprogress 300 -work work      ../rtl/01_user_ip/*.V
vlog    -reportprogress 300 -work work      ../rtl/03_srio/*.V
vlog    -reportprogress 300 -work work      ../rtl/04_bist/*.V