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
create_clock -period 50 [get_ports ADB_DCO]
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

set_input_delay -add_delay -max -clock ADB_DCO 1.000 {ADB_D[*] ADB_OR}

set_input_delay -add_delay -min -clock ADB_DCO -1.000 {ADB_D[*] ADB_OR}

set_input_delay -add_delay -max -clock CLOCK_50 1.000 {KEY[0] KEY[3] SW[16] SRAM_DQ[*]}

set_input_delay -add_delay -min -clock CLOCK_50 -1.000 {KEY[0] KEY[3] SW[16] SRAM_DQ[*]}

set_input_delay -add_delay -max -clock altera_reserved_tck 1.000 { altera_reserved_tdi }

set_input_delay -add_delay -min -clock altera_reserved_tck -1.000 { altera_reserved_tdi }

set_input_delay -add_delay -max -clock altera_reserved_tck 1.000 { altera_reserved_tms }

set_input_delay -add_delay -min -clock altera_reserved_tck -1.000 { altera_reserved_tms }



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock CLOCK_50 1.000 {get_ports DA[*]  LEDG[*] adaptive_out_data[*] emu[*] error_adaptive_out[*]}

set_output_delay -add_delay -min -clock CLOCK_50 -1.000 {get_ports DA[*] LEDG[*] adaptive_out_data[*] emu[*] error_adaptive_out[*]}

set_output_delay -add_delay -max -clock altera_reserved_tck 1.000 { altera_reserved_tdo }

set_output_delay -add_delay -min -clock altera_reserved_tck -1.000 { altera_reserved_tdo }

set_output_delay -add_delay -max -clock CLOCK_50 0.000 {get_ports FPGA_CLK_A_N FPGA_CLK_A_P FPGA_CLK_B_P FPGA_CLK_B_N SRAM_DQ[*] SRAM_CE_N SRAM_LB_N SRAM_UB_N SRAM_WE_N SRAM_ADDR[*] SRAM_OE_N}

set_output_delay -add_delay -min -clock CLOCK_50 -1.000 {get_ports FPGA_CLK_A_N FPGA_CLK_A_P FPGA_CLK_B_P FPGA_CLK_B_N SRAM_DQ[*] SRAM_CE_N SRAM_LB_N SRAM_UB_N SRAM_WE_N SRAM_ADDR[*] SRAM_OE_N}

set_output_delay -add_delay -max -clock CLOCK_50 0.000 {get_ports VGA_BLANK_N VGA_B[*] VGA_R[*] VGA_G[*] VGA_CLK VGA_HS VGA_VS}

set_output_delay -add_delay -min -clock CLOCK_50 -1.000 {get_ports VGA_BLANK_N VGA_B[*] VGA_R[*] VGA_G[*] VGA_CLK VGA_HS VGA_VS }


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


