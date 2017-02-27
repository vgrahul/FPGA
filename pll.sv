set_global_assignment -entity "pll" -library "pll" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "pll" -library "pll" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "pll" -library "pll" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "pll" -name SOPCINFO_FILE [file join $::quartus(qip_path) "../../pll.sopcinfo"]
set_instance_assignment -entity "pll" -library "pll" -name SLD_INFO "QSYS_NAME pll HAS_SOPCINFO 1 GENERATION_ID 1376850995"
set_global_assignment -library "pll" -name MISC_FILE [file join $::quartus(qip_path) "../../pll.cmp"]
set_global_assignment -name SYNTHESIS_ONLY_QIP ON
set_global_assignment -library "pll" -name MISC_FILE [file join $::quartus(qip_path) "../../pll.qsys"]

set_global_assignment -library "pll" -name VHDL_FILE [file join $::quartus(qip_path) "pll.vhd"]
set_global_assignment -library "pll" -name VERILOG_FILE [file join $::quartus(qip_path) "submodules/pll_altpll_0.v"]

set_global_assignment -entity "pll_altpll_0" -library "pll" -name IP_TOOL_NAME "altpll"
set_global_assignment -entity "pll_altpll_0" -library "pll" -name IP_TOOL_VERSION "13.0"
set_global_assignment -entity "pll_altpll_0" -library "pll" -name IP_TOOL_ENV "Qsys"