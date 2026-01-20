vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../basys_exam_2025.gen/sources_1/ip/adc_2ch_sequence/adc_2ch_sequence.v" \


vlog -work xil_defaultlib \
"glbl.v"

