onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L jesd204_v7_2_12 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.JESD204 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {JESD204.udo}

run -all

quit -force
