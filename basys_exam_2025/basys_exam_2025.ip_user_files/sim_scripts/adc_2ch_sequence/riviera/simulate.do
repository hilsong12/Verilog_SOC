transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+adc_2ch_sequence  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.adc_2ch_sequence xil_defaultlib.glbl

do {adc_2ch_sequence.udo}

run 1000ns

endsim

quit -force
