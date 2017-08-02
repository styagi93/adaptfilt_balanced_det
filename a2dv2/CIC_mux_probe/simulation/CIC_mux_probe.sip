set_global_assignment -entity "CIC_mux_probe" -library "lib_CIC_mux_probe" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "CIC_mux_probe" -library "lib_CIC_mux_probe" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "CIC_mux_probe" -library "lib_CIC_mux_probe" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_CIC_mux_probe" -name SPD_FILE [file join $::quartus(sip_path) "../CIC_mux_probe.spd"]
set_global_assignment -library "lib_CIC_mux_probe" -name MISC_FILE [file join $::quartus(sip_path) "../../CIC_mux_probe.qsys"]

set_global_assignment -library "lib_CIC_mux_probe" -name MISC_FILE [file join $::quartus(sip_path) "CIC_mux_probe.v"]
set_global_assignment -library "lib_CIC_mux_probe" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altsource_probe.v"]
