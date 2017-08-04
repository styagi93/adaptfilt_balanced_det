## Generated SDC file "a2dv2.out.sdc"

## Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

## DATE    "Thu Aug 03 19:55:39 2017"

##
## DEVICE  "EP4CE115F29C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]
create_clock -name {CLOCK2_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK2_50}]
create_clock -name {CLOCK3_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK3_50}]
create_clock -name {ADA_DCO} -period 50.000 -waveform { 0.000 25.000 } [get_ports {ADA_DCO}]
create_clock -name {ADB_DCO} -period 50.000 -waveform { 0.000 25.000 } [get_ports {ADB_DCO}]
create_clock -name {FPGA_CLK_A_P} -period 50.000 -waveform { 0.000 25.000 } [get_ports {FPGA_CLK_A_P}]
create_clock -name {FPGA_CLK_A_N} -period 50.000 -waveform { 0.000 25.000 } [get_ports {FPGA_CLK_A_N}]
create_clock -name {GPIO[8]} -period 100.000 -waveform { 0.000 50.000 } [get_ports {GPIO[8]}]
create_clock -name {CIC:u0|CIC_cic_ii_0:cic_ii_0|alt_cic_core:core|auk_dspip_avalon_streaming_source:output_source_1|source_valid_s} -period 50.000 -waveform { 0.000 25.000 } 


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {PLL_200MHz_inst|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 50 -master_clock {CLOCK_50} [get_pins {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_50}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_50}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_50}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_50}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {ADB_DCO}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {ADB_DCO}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {ADB_DCO}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {ADB_DCO}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -rise_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ADB_DCO}] -fall_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {ADA_DCO}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {ADA_DCO}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {ADA_DCO}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {ADA_DCO}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -rise_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ADA_DCO}] -fall_to [get_clocks {CLOCK_50}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {ADB_DCO}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {ADB_DCO}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {ADA_DCO}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {ADA_DCO}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {PLL_200MHz_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {ADB_DCO}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {ADB_DCO}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {ADA_DCO}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {ADA_DCO}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[0]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[0]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[1]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[1]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[2]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[2]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[3]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[3]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[4]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[4]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[5]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[5]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[6]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[6]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[7]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[7]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[8]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[8]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[9]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[9]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[10]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[10]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[11]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[11]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[12]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[12]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_D[13]}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_D[13]}]
set_input_delay -add_delay -max -clock [get_clocks {ADA_DCO}]  1.000 [get_ports {ADA_OR}]
set_input_delay -add_delay -min -clock [get_clocks {ADA_DCO}]  -1.000 [get_ports {ADA_OR}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[0]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[0]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[1]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[1]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[2]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[2]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[3]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[3]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[4]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[4]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[5]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[5]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[6]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[6]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[7]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[7]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[8]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[8]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[9]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[9]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[10]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[10]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[11]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[11]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[12]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[12]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_D[13]}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_D[13]}]
set_input_delay -add_delay -max -clock [get_clocks {ADB_DCO}]  1.000 [get_ports {ADB_OR}]
set_input_delay -add_delay -min -clock [get_clocks {ADB_DCO}]  -1.000 [get_ports {ADB_OR}]
set_input_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {KEY[0]}]
set_input_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {KEY[0]}]
set_input_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {KEY[3]}]
set_input_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {KEY[3]}]
set_input_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SW[16]}]
set_input_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {SW[16]}]
set_input_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  -1.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  -1.000 [get_ports {altera_reserved_tms}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[9]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[9]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[10]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[10]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[11]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[11]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[12]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[12]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {DA[13]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {DA[13]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  0.000 [get_ports {FPGA_CLK_A_N}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {FPGA_CLK_A_N}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  0.000 [get_ports {FPGA_CLK_A_P}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {FPGA_CLK_A_P}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  0.000 [get_ports {FPGA_CLK_B_N}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {FPGA_CLK_B_N}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  0.000 [get_ports {FPGA_CLK_B_P}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {FPGA_CLK_B_P}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[9]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[9]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[10]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[10]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[11]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[11]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[12]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[12]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[13]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[13]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[14]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[14]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[15]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[15]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[16]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[16]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[17]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[17]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[18]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[18]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[19]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[19]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[20]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[20]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[21]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[21]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[22]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[22]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[23]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[23]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[24]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[24]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[25]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[25]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[26]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[26]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[27]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[27]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[28]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[28]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[29]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[29]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[30]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[30]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[31]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[31]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[32]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[32]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[33]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[33]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[34]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[34]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GPIO[35]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {GPIO[35]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {LEDG[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {LEDG[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[9]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[9]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[10]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[10]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[11]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[11]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[12]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[12]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[13]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[13]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[14]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[14]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[15]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[15]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[16]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[16]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[17]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[17]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[18]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[18]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[19]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[19]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[20]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[20]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[21]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[21]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[22]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[22]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[23]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[23]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[24]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[24]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[25]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[25]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[26]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[26]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[27]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[27]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[28]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[28]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[29]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[29]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[30]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[30]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[31]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[31]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[32]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[32]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[33]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[33]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[34]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[34]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[35]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[35]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[36]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[36]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[37]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[37]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[38]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[38]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[39]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[39]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[40]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[40]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[41]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[41]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {adaptive_out_data[42]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {adaptive_out_data[42]}]
set_output_delay -add_delay -max -clock [get_clocks {altera_reserved_tck}]  1.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay -min -clock [get_clocks {altera_reserved_tck}]  -1.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[9]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[9]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[10]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[10]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[11]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[11]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[12]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[12]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[13]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[13]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[14]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[14]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[15]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[15]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[16]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[16]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[17]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[17]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[18]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[18]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[19]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[19]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[20]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[20]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[21]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[21]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[22]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[22]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[23]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[23]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[24]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[24]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[25]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[25]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[26]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[26]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[27]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[27]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[28]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[28]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[29]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[29]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[30]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[30]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[31]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[31]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[32]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[32]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[33]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[33]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[34]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[34]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[35]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[35]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[36]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[36]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[37]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[37]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[38]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[38]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[39]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[39]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[40]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[40]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[41]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[41]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {emu[42]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {emu[42]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[0]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[0]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[1]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[1]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[2]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[2]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[3]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[3]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[4]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[4]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[5]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[5]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[6]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[6]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[7]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[7]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[8]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[8]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[9]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[9]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[10]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[10]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[11]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[11]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[12]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[12]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[13]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[13]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[14]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[14]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[15]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[15]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[16]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[16]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[17]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[17]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[18]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[18]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[19]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[19]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[20]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[20]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[21]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[21]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[22]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[22]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[23]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[23]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[24]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[24]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[25]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[25]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[26]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[26]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[27]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[27]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[28]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[28]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[29]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[29]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[30]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[30]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[31]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[31]}]
set_output_delay -add_delay -max -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {error_adaptive_out[32]}]
set_output_delay -add_delay -min -clock [get_clocks {CLOCK_50}]  -1.000 [get_ports {error_adaptive_out[32]}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {GPIO[8]}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]


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

