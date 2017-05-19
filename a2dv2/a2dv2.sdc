#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -period 20 [get_ports CLOCK_50]
create_clock -period 20 [get_ports CLOCK2_50]
create_clock -period 20 [get_ports CLOCK3_50]

create_clock -period 50 [get_ports ADA_DCO]
create_clock -period 50 [get_ports FPGA_CLK_A_P]
create_clock -period 50 [get_ports FPGA_CLK_A_N]

create_clock -period 100 [get_ports GPIO[8]]


#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock ADA_DCO 1.000 {ADA_D[*] ADA_OR}

set_input_delay -add_delay -min -clock ADA_DCO -1.000 {ADA_D[*] ADA_OR}

set_input_delay -add_delay -max -clock CLOCK_50 1.000 {KEY[0] KEY[3]}

set_input_delay -add_delay -min -clock CLOCK_50 -1.000 {KEY[0] KEY[3]}

set_input_delay -add_delay -max -clock altera_reserved_tck 1.000 {get_ports altera_reserved_tdi }

set_input_delay -add_delay -min -clock altera_reserved_tck -1.000 {get_ports altera_reserved_tdi }

set_input_delay -add_delay -max -clock altera_reserved_tck 1.000 {get_ports altera_reserved_tms }

set_input_delay -add_delay -min -clock altera_reserved_tck -1.000 {get_ports altera_reserved_tms }



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock CLOCK_50 1.000 {DA[*]    GPIO[*] LEDG[*] adaptive_out_data[*] emu[*] error_adaptive_out[*]}

set_output_delay -add_delay -min -clock CLOCK_50 -1.000 {DA[*]    GPIO[*] LEDG[*] adaptive_out_data[*] emu[*] error_adaptive_out[*]}

set_output_delay -add_delay -max -clock altera_reserved_tck 1.000 {get_ports altera_reserved_tdo }

set_output_delay -add_delay -min -clock altera_reserved_tck -1.000 {get_ports altera_reserved_tdo }

set_output_delay -add_delay -max -clock CLOCK_50 0.000 {get_ports FPGA_CLK_A_N FPGA_CLK_A_P }

set_output_delay -add_delay -min -clock CLOCK_50 -1.000 {get_ports FPGA_CLK_A_N FPGA_CLK_A_P }


#**************************************************************
# Set Clock Groups
#**************************************************************
set_clock_groups -asynchronous -group {GPIO[8]}


#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



