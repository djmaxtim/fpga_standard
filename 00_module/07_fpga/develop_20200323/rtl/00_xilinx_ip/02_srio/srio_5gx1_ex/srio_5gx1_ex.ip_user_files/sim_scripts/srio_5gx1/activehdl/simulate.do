onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+srio_5gx1 -L xpm -L blk_mem_gen_v8_4_4 -L fifo_generator_v13_2_5 -L srio_gen2_v4_1_11 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.srio_5gx1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {srio_5gx1.udo}

run -all

endsim

quit -force
