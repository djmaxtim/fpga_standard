onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib JESD204_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {JESD204.udo}

run -all

quit -force
