onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib srio_5gx1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {srio_5gx1.udo}

run -all

quit -force
