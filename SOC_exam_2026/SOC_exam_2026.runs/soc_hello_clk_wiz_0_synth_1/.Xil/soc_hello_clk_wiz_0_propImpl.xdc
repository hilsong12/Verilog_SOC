set_property SRC_FILE_INFO {cfile:/media/user12/data/work/SOC_exam_2026/SOC_exam_2026.gen/sources_1/bd/soc_hello/ip/soc_hello_clk_wiz_0/soc_hello_clk_wiz_0.xdc rfile:../../../SOC_exam_2026.gen/sources_1/bd/soc_hello/ip/soc_hello_clk_wiz_0/soc_hello_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
