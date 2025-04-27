onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L blk_mem_gen_v8_4_4 -L fifo_generator_v13_2_5 -L srio_gen2_v4_1_11 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.srio_5gx1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {srio_5gx1.udo}

run -all

quit -force
