transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../../basys_exam_2025.gen/sources_1/ip/adc_2ch_sequence/adc_2ch_sequence.v" \


vlog -work xil_defaultlib \
"glbl.v"

