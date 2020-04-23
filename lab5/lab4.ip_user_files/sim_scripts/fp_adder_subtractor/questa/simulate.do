onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_adder_subtractor_opt

do {wave.do}

view wave
view structure
view signals

do {fp_adder_subtractor.udo}

run -all

quit -force
