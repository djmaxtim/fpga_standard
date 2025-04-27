onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib JESD204_TX_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {JESD204_TX.udo}

run -all

quit -force
