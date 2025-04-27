onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+JESD204_TX -L xpm -L xil_defaultlib -L jesd204_v7_2_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.JESD204_TX xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {JESD204_TX.udo}

run -all

endsim

quit -force
