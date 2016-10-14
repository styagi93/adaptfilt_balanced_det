set_global_assignment -entity "p_sine" -library "lib_p_sine" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "p_sine" -library "lib_p_sine" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "p_sine" -library "lib_p_sine" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_p_sine" -name SPD_FILE [file join $::quartus(sip_path) "../p_sine.spd"]
set_global_assignment -library "lib_p_sine" -name MISC_FILE [file join $::quartus(sip_path) "../../p_sine.qsys"]

set_global_assignment -library "lib_p_sine" -name MISC_FILE [file join $::quartus(sip_path) "p_sine.v"]
set_global_assignment -library "lib_p_sine" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altsource_probe.v"]
