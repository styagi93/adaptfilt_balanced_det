// megafunction wizard: %RAM: 1-PORT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: RAM_delta_control.v
// Megafunction Name(s):
// 			altsyncram
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// ************************************************************


//Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//altsyncram CLOCK_ENABLE_INPUT_A="BYPASS" CLOCK_ENABLE_OUTPUT_A="BYPASS" DEVICE_FAMILY="Cyclone IV E" ENABLE_RUNTIME_MOD="YES" INSTANCE_NAME="Mu" NUMWORDS_A=1 OPERATION_MODE="SINGLE_PORT" OUTDATA_ACLR_A="NONE" OUTDATA_REG_A="CLOCK0" POWER_UP_UNINITIALIZED="TRUE" read_during_write_mode_port_a="NEW_DATA_NO_NBE_READ" WIDTH_A=5 WIDTH_BYTEENA_A=1 WIDTHAD_A=1 address_a clock0 data_a q_a wren_a
//VERSION_BEGIN 16.0 cbx_altera_syncram_nd_impl 2016:04:27:18:05:34:SJ cbx_altsyncram 2016:04:27:18:05:34:SJ cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_lpm_compare 2016:04:27:18:05:34:SJ cbx_lpm_decode 2016:04:27:18:05:34:SJ cbx_lpm_mux 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ cbx_stratixiii 2016:04:27:18:05:34:SJ cbx_stratixv 2016:04:27:18:05:34:SJ cbx_util_mgl 2016:04:27:18:05:34:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//altsyncram ADDRESS_ACLR_B="NONE" ADDRESS_REG_B="CLOCK1" CLOCK_ENABLE_INPUT_A="BYPASS" CLOCK_ENABLE_OUTPUT_A="BYPASS" DEVICE_FAMILY="Cyclone IV E" ENABLE_RUNTIME_MOD="NO" INDATA_ACLR_B="NONE" INDATA_REG_B="CLOCK1" NUMWORDS_A=1 NUMWORDS_B=1 OPERATION_MODE="BIDIR_DUAL_PORT" OUTDATA_ACLR_A="NONE" OUTDATA_ACLR_B="NONE" OUTDATA_REG_A="CLOCK0" OUTDATA_REG_B="UNREGISTERED" RDCONTROL_REG_B="CLOCK1" read_during_write_mode_port_a="NEW_DATA_NO_NBE_READ" WIDTH_A=5 WIDTH_B=5 WIDTH_BYTEENA_A=1 WIDTHAD_A=1 WIDTHAD_B=1 WRCONTROL_ACLR_B="NONE" WRCONTROL_WRADDRESS_REG_B="CLOCK1" address_a address_b clock0 clock1 data_a data_b q_a q_b wren_a wren_b
//VERSION_BEGIN 16.0 cbx_altera_syncram_nd_impl 2016:04:27:18:05:34:SJ cbx_altsyncram 2016:04:27:18:05:34:SJ cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_lpm_compare 2016:04:27:18:05:34:SJ cbx_lpm_decode 2016:04:27:18:05:34:SJ cbx_lpm_mux 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ cbx_stratixiii 2016:04:27:18:05:34:SJ cbx_stratixv 2016:04:27:18:05:34:SJ cbx_util_mgl 2016:04:27:18:05:34:SJ  VERSION_END

//synthesis_resources = M9K 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"OPTIMIZE_POWER_DURING_SYNTHESIS=NORMAL_COMPILATION"} *)
module  RAM_delta_control_altsyncram1
	( 
	address_a,
	address_b,
	clock0,
	clock1,
	data_a,
	data_b,
	q_a,
	q_b,
	wren_a,
	wren_b) /* synthesis synthesis_clearbox=1 */;
	input   [0:0]  address_a;
	input   [0:0]  address_b;
	input   clock0;
	input   clock1;
	input   [4:0]  data_a;
	input   [4:0]  data_b;
	output   [4:0]  q_a;
	output   [4:0]  q_b;
	input   wren_a;
	input   wren_b;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   [0:0]  address_b;
	tri1   clock0;
	tri1   clock1;
	tri1   [4:0]  data_a;
	tri1   [4:0]  data_b;
	tri0   wren_a;
	tri0   wren_b;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_ram_block3a_0portadataout;
	wire  [0:0]   wire_ram_block3a_1portadataout;
	wire  [0:0]   wire_ram_block3a_2portadataout;
	wire  [0:0]   wire_ram_block3a_3portadataout;
	wire  [0:0]   wire_ram_block3a_4portadataout;
	wire  [0:0]   wire_ram_block3a_0portbdataout;
	wire  [0:0]   wire_ram_block3a_1portbdataout;
	wire  [0:0]   wire_ram_block3a_2portbdataout;
	wire  [0:0]   wire_ram_block3a_3portbdataout;
	wire  [0:0]   wire_ram_block3a_4portbdataout;
	wire  [0:0]  address_a_wire;
	wire  [0:0]  address_b_wire;

	cycloneive_ram_block   ram_block3a_0
	( 
	.clk0(clock0),
	.clk1(clock1),
	.portaaddr({address_a_wire[0]}),
	.portadatain({data_a[0]}),
	.portadataout(wire_ram_block3a_0portadataout[0:0]),
	.portare(1'b1),
	.portawe(wren_a),
	.portbaddr({address_b_wire[0]}),
	.portbdatain({data_b[0]}),
	.portbdataout(wire_ram_block3a_0portbdataout[0:0]),
	.portbre(1'b1),
	.portbwe(wren_b)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block3a_0.clk0_core_clock_enable = "none",
		ram_block3a_0.clk0_input_clock_enable = "none",
		ram_block3a_0.clk0_output_clock_enable = "none",
		ram_block3a_0.clk1_core_clock_enable = "none",
		ram_block3a_0.clk1_input_clock_enable = "none",
		ram_block3a_0.connectivity_checking = "OFF",
		ram_block3a_0.logical_ram_name = "ALTSYNCRAM",
		ram_block3a_0.mixed_port_feed_through_mode = "dont_care",
		ram_block3a_0.operation_mode = "bidir_dual_port",
		ram_block3a_0.port_a_address_width = 1,
		ram_block3a_0.port_a_data_out_clear = "none",
		ram_block3a_0.port_a_data_out_clock = "clock0",
		ram_block3a_0.port_a_data_width = 1,
		ram_block3a_0.port_a_first_address = 0,
		ram_block3a_0.port_a_first_bit_number = 0,
		ram_block3a_0.port_a_last_address = 0,
		ram_block3a_0.port_a_logical_ram_depth = 1,
		ram_block3a_0.port_a_logical_ram_width = 5,
		ram_block3a_0.port_a_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_0.port_b_address_clock = "clock1",
		ram_block3a_0.port_b_address_width = 1,
		ram_block3a_0.port_b_data_in_clock = "clock1",
		ram_block3a_0.port_b_data_out_clear = "none",
		ram_block3a_0.port_b_data_width = 1,
		ram_block3a_0.port_b_first_address = 0,
		ram_block3a_0.port_b_first_bit_number = 0,
		ram_block3a_0.port_b_last_address = 0,
		ram_block3a_0.port_b_logical_ram_depth = 1,
		ram_block3a_0.port_b_logical_ram_width = 5,
		ram_block3a_0.port_b_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_0.port_b_read_enable_clock = "clock1",
		ram_block3a_0.port_b_write_enable_clock = "clock1",
		ram_block3a_0.ram_block_type = "AUTO",
		ram_block3a_0.lpm_type = "cycloneive_ram_block";
	cycloneive_ram_block   ram_block3a_1
	( 
	.clk0(clock0),
	.clk1(clock1),
	.portaaddr({address_a_wire[0]}),
	.portadatain({data_a[1]}),
	.portadataout(wire_ram_block3a_1portadataout[0:0]),
	.portare(1'b1),
	.portawe(wren_a),
	.portbaddr({address_b_wire[0]}),
	.portbdatain({data_b[1]}),
	.portbdataout(wire_ram_block3a_1portbdataout[0:0]),
	.portbre(1'b1),
	.portbwe(wren_b)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block3a_1.clk0_core_clock_enable = "none",
		ram_block3a_1.clk0_input_clock_enable = "none",
		ram_block3a_1.clk0_output_clock_enable = "none",
		ram_block3a_1.clk1_core_clock_enable = "none",
		ram_block3a_1.clk1_input_clock_enable = "none",
		ram_block3a_1.connectivity_checking = "OFF",
		ram_block3a_1.logical_ram_name = "ALTSYNCRAM",
		ram_block3a_1.mixed_port_feed_through_mode = "dont_care",
		ram_block3a_1.operation_mode = "bidir_dual_port",
		ram_block3a_1.port_a_address_width = 1,
		ram_block3a_1.port_a_data_out_clear = "none",
		ram_block3a_1.port_a_data_out_clock = "clock0",
		ram_block3a_1.port_a_data_width = 1,
		ram_block3a_1.port_a_first_address = 0,
		ram_block3a_1.port_a_first_bit_number = 1,
		ram_block3a_1.port_a_last_address = 0,
		ram_block3a_1.port_a_logical_ram_depth = 1,
		ram_block3a_1.port_a_logical_ram_width = 5,
		ram_block3a_1.port_a_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_1.port_b_address_clock = "clock1",
		ram_block3a_1.port_b_address_width = 1,
		ram_block3a_1.port_b_data_in_clock = "clock1",
		ram_block3a_1.port_b_data_out_clear = "none",
		ram_block3a_1.port_b_data_width = 1,
		ram_block3a_1.port_b_first_address = 0,
		ram_block3a_1.port_b_first_bit_number = 1,
		ram_block3a_1.port_b_last_address = 0,
		ram_block3a_1.port_b_logical_ram_depth = 1,
		ram_block3a_1.port_b_logical_ram_width = 5,
		ram_block3a_1.port_b_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_1.port_b_read_enable_clock = "clock1",
		ram_block3a_1.port_b_write_enable_clock = "clock1",
		ram_block3a_1.ram_block_type = "AUTO",
		ram_block3a_1.lpm_type = "cycloneive_ram_block";
	cycloneive_ram_block   ram_block3a_2
	( 
	.clk0(clock0),
	.clk1(clock1),
	.portaaddr({address_a_wire[0]}),
	.portadatain({data_a[2]}),
	.portadataout(wire_ram_block3a_2portadataout[0:0]),
	.portare(1'b1),
	.portawe(wren_a),
	.portbaddr({address_b_wire[0]}),
	.portbdatain({data_b[2]}),
	.portbdataout(wire_ram_block3a_2portbdataout[0:0]),
	.portbre(1'b1),
	.portbwe(wren_b)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block3a_2.clk0_core_clock_enable = "none",
		ram_block3a_2.clk0_input_clock_enable = "none",
		ram_block3a_2.clk0_output_clock_enable = "none",
		ram_block3a_2.clk1_core_clock_enable = "none",
		ram_block3a_2.clk1_input_clock_enable = "none",
		ram_block3a_2.connectivity_checking = "OFF",
		ram_block3a_2.logical_ram_name = "ALTSYNCRAM",
		ram_block3a_2.mixed_port_feed_through_mode = "dont_care",
		ram_block3a_2.operation_mode = "bidir_dual_port",
		ram_block3a_2.port_a_address_width = 1,
		ram_block3a_2.port_a_data_out_clear = "none",
		ram_block3a_2.port_a_data_out_clock = "clock0",
		ram_block3a_2.port_a_data_width = 1,
		ram_block3a_2.port_a_first_address = 0,
		ram_block3a_2.port_a_first_bit_number = 2,
		ram_block3a_2.port_a_last_address = 0,
		ram_block3a_2.port_a_logical_ram_depth = 1,
		ram_block3a_2.port_a_logical_ram_width = 5,
		ram_block3a_2.port_a_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_2.port_b_address_clock = "clock1",
		ram_block3a_2.port_b_address_width = 1,
		ram_block3a_2.port_b_data_in_clock = "clock1",
		ram_block3a_2.port_b_data_out_clear = "none",
		ram_block3a_2.port_b_data_width = 1,
		ram_block3a_2.port_b_first_address = 0,
		ram_block3a_2.port_b_first_bit_number = 2,
		ram_block3a_2.port_b_last_address = 0,
		ram_block3a_2.port_b_logical_ram_depth = 1,
		ram_block3a_2.port_b_logical_ram_width = 5,
		ram_block3a_2.port_b_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_2.port_b_read_enable_clock = "clock1",
		ram_block3a_2.port_b_write_enable_clock = "clock1",
		ram_block3a_2.ram_block_type = "AUTO",
		ram_block3a_2.lpm_type = "cycloneive_ram_block";
	cycloneive_ram_block   ram_block3a_3
	( 
	.clk0(clock0),
	.clk1(clock1),
	.portaaddr({address_a_wire[0]}),
	.portadatain({data_a[3]}),
	.portadataout(wire_ram_block3a_3portadataout[0:0]),
	.portare(1'b1),
	.portawe(wren_a),
	.portbaddr({address_b_wire[0]}),
	.portbdatain({data_b[3]}),
	.portbdataout(wire_ram_block3a_3portbdataout[0:0]),
	.portbre(1'b1),
	.portbwe(wren_b)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block3a_3.clk0_core_clock_enable = "none",
		ram_block3a_3.clk0_input_clock_enable = "none",
		ram_block3a_3.clk0_output_clock_enable = "none",
		ram_block3a_3.clk1_core_clock_enable = "none",
		ram_block3a_3.clk1_input_clock_enable = "none",
		ram_block3a_3.connectivity_checking = "OFF",
		ram_block3a_3.logical_ram_name = "ALTSYNCRAM",
		ram_block3a_3.mixed_port_feed_through_mode = "dont_care",
		ram_block3a_3.operation_mode = "bidir_dual_port",
		ram_block3a_3.port_a_address_width = 1,
		ram_block3a_3.port_a_data_out_clear = "none",
		ram_block3a_3.port_a_data_out_clock = "clock0",
		ram_block3a_3.port_a_data_width = 1,
		ram_block3a_3.port_a_first_address = 0,
		ram_block3a_3.port_a_first_bit_number = 3,
		ram_block3a_3.port_a_last_address = 0,
		ram_block3a_3.port_a_logical_ram_depth = 1,
		ram_block3a_3.port_a_logical_ram_width = 5,
		ram_block3a_3.port_a_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_3.port_b_address_clock = "clock1",
		ram_block3a_3.port_b_address_width = 1,
		ram_block3a_3.port_b_data_in_clock = "clock1",
		ram_block3a_3.port_b_data_out_clear = "none",
		ram_block3a_3.port_b_data_width = 1,
		ram_block3a_3.port_b_first_address = 0,
		ram_block3a_3.port_b_first_bit_number = 3,
		ram_block3a_3.port_b_last_address = 0,
		ram_block3a_3.port_b_logical_ram_depth = 1,
		ram_block3a_3.port_b_logical_ram_width = 5,
		ram_block3a_3.port_b_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_3.port_b_read_enable_clock = "clock1",
		ram_block3a_3.port_b_write_enable_clock = "clock1",
		ram_block3a_3.ram_block_type = "AUTO",
		ram_block3a_3.lpm_type = "cycloneive_ram_block";
	cycloneive_ram_block   ram_block3a_4
	( 
	.clk0(clock0),
	.clk1(clock1),
	.portaaddr({address_a_wire[0]}),
	.portadatain({data_a[4]}),
	.portadataout(wire_ram_block3a_4portadataout[0:0]),
	.portare(1'b1),
	.portawe(wren_a),
	.portbaddr({address_b_wire[0]}),
	.portbdatain({data_b[4]}),
	.portbdataout(wire_ram_block3a_4portbdataout[0:0]),
	.portbre(1'b1),
	.portbwe(wren_b)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clr0(1'b0),
	.clr1(1'b0),
	.ena0(1'b1),
	.ena1(1'b1),
	.ena2(1'b1),
	.ena3(1'b1),
	.portaaddrstall(1'b0),
	.portabyteenamasks({1{1'b1}}),
	.portbaddrstall(1'b0),
	.portbbyteenamasks({1{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		ram_block3a_4.clk0_core_clock_enable = "none",
		ram_block3a_4.clk0_input_clock_enable = "none",
		ram_block3a_4.clk0_output_clock_enable = "none",
		ram_block3a_4.clk1_core_clock_enable = "none",
		ram_block3a_4.clk1_input_clock_enable = "none",
		ram_block3a_4.connectivity_checking = "OFF",
		ram_block3a_4.logical_ram_name = "ALTSYNCRAM",
		ram_block3a_4.mixed_port_feed_through_mode = "dont_care",
		ram_block3a_4.operation_mode = "bidir_dual_port",
		ram_block3a_4.port_a_address_width = 1,
		ram_block3a_4.port_a_data_out_clear = "none",
		ram_block3a_4.port_a_data_out_clock = "clock0",
		ram_block3a_4.port_a_data_width = 1,
		ram_block3a_4.port_a_first_address = 0,
		ram_block3a_4.port_a_first_bit_number = 4,
		ram_block3a_4.port_a_last_address = 0,
		ram_block3a_4.port_a_logical_ram_depth = 1,
		ram_block3a_4.port_a_logical_ram_width = 5,
		ram_block3a_4.port_a_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_4.port_b_address_clock = "clock1",
		ram_block3a_4.port_b_address_width = 1,
		ram_block3a_4.port_b_data_in_clock = "clock1",
		ram_block3a_4.port_b_data_out_clear = "none",
		ram_block3a_4.port_b_data_width = 1,
		ram_block3a_4.port_b_first_address = 0,
		ram_block3a_4.port_b_first_bit_number = 4,
		ram_block3a_4.port_b_last_address = 0,
		ram_block3a_4.port_b_logical_ram_depth = 1,
		ram_block3a_4.port_b_logical_ram_width = 5,
		ram_block3a_4.port_b_read_during_write_mode = "new_data_no_nbe_read",
		ram_block3a_4.port_b_read_enable_clock = "clock1",
		ram_block3a_4.port_b_write_enable_clock = "clock1",
		ram_block3a_4.ram_block_type = "AUTO",
		ram_block3a_4.lpm_type = "cycloneive_ram_block";
	assign
		address_a_wire = address_a,
		address_b_wire = address_b,
		q_a = {wire_ram_block3a_4portadataout[0], wire_ram_block3a_3portadataout[0], wire_ram_block3a_2portadataout[0], wire_ram_block3a_1portadataout[0], wire_ram_block3a_0portadataout[0]},
		q_b = {wire_ram_block3a_4portbdataout[0], wire_ram_block3a_3portbdataout[0], wire_ram_block3a_2portbdataout[0], wire_ram_block3a_1portbdataout[0], wire_ram_block3a_0portbdataout[0]};
endmodule //RAM_delta_control_altsyncram1

//synthesis_resources = M9K 1 sld_mod_ram_rom 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  RAM_delta_control_altsyncram
	( 
	address_a,
	clock0,
	data_a,
	q_a,
	wren_a) /* synthesis synthesis_clearbox=1 */;
	input   [0:0]  address_a;
	input   clock0;
	input   [4:0]  data_a;
	output   [4:0]  q_a;
	input   wren_a;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clock0;
	tri1   [4:0]  data_a;
	tri0   wren_a;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [4:0]   wire_altsyncram1_q_a;
	wire  [4:0]   wire_altsyncram1_q_b;
	wire  [0:0]   wire_mgl_prim2_address;
	wire  [4:0]   wire_mgl_prim2_data_write;
	wire  wire_mgl_prim2_enable_write;
	wire  wire_mgl_prim2_tck_usr;

	RAM_delta_control_altsyncram1   altsyncram1
	( 
	.address_a(address_a),
	.address_b(wire_mgl_prim2_address),
	.clock0(clock0),
	.clock1(wire_mgl_prim2_tck_usr),
	.data_a(data_a),
	.data_b(wire_mgl_prim2_data_write),
	.q_a(wire_altsyncram1_q_a),
	.q_b(wire_altsyncram1_q_b),
	.wren_a(wren_a),
	.wren_b(wire_mgl_prim2_enable_write));
	sld_mod_ram_rom   mgl_prim2
	( 
	.address(wire_mgl_prim2_address),
	.data_read(wire_altsyncram1_q_b),
	.data_write(wire_mgl_prim2_data_write),
	.enable_write(wire_mgl_prim2_enable_write),
	.tck_usr(wire_mgl_prim2_tck_usr));
	defparam
		mgl_prim2.cvalue = 5'b00000,
		mgl_prim2.is_data_in_ram = 1,
		mgl_prim2.is_readable = 1,
		mgl_prim2.node_name = 1299513344,
		mgl_prim2.numwords = 1,
		mgl_prim2.shift_count_bits = 3,
		mgl_prim2.width_word = 5,
		mgl_prim2.widthad = 1;
	assign
		q_a = wire_altsyncram1_q_a;
endmodule //RAM_delta_control_altsyncram
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module RAM_delta_control (
	address,
	clock,
	data,
	wren,
	q)/* synthesis synthesis_clearbox = 1 */;

	input	[0:0]  address;
	input	  clock;
	input	[4:0]  data;
	input	  wren;
	output	[4:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [4:0] sub_wire0;
	wire [4:0] q = sub_wire0[4:0];

	RAM_delta_control_altsyncram	RAM_delta_control_altsyncram_component (
				.address_a (address),
				.clock0 (clock),
				.data_a (data),
				.wren_a (wren),
				.q_a (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
// Retrieval info: PRIVATE: AclrAddr NUMERIC "0"
// Retrieval info: PRIVATE: AclrByte NUMERIC "0"
// Retrieval info: PRIVATE: AclrData NUMERIC "0"
// Retrieval info: PRIVATE: AclrOutput NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
// Retrieval info: PRIVATE: BlankMemory NUMERIC "1"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: Clken NUMERIC "0"
// Retrieval info: PRIVATE: DataBusSeparated NUMERIC "1"
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "1"
// Retrieval info: PRIVATE: JTAG_ID STRING "Mu"
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
// Retrieval info: PRIVATE: MIFfilename STRING ""
// Retrieval info: PRIVATE: NUMWORDS_A NUMERIC "1"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_PORT_A NUMERIC "3"
// Retrieval info: PRIVATE: RegAddr NUMERIC "1"
// Retrieval info: PRIVATE: RegData NUMERIC "1"
// Retrieval info: PRIVATE: RegOutput NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SingleClock NUMERIC "1"
// Retrieval info: PRIVATE: UseDQRAM NUMERIC "1"
// Retrieval info: PRIVATE: WRCONTROL_ACLR_A NUMERIC "0"
// Retrieval info: PRIVATE: WidthAddr NUMERIC "1"
// Retrieval info: PRIVATE: WidthData NUMERIC "5"
// Retrieval info: PRIVATE: rden NUMERIC "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
// Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_A STRING "BYPASS"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=YES,INSTANCE_NAME=Mu"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "1"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "SINGLE_PORT"
// Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "NONE"
// Retrieval info: CONSTANT: OUTDATA_REG_A STRING "CLOCK0"
// Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "TRUE"
// Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_PORT_A STRING "NEW_DATA_NO_NBE_READ"
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "1"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "5"
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
// Retrieval info: USED_PORT: address 0 0 1 0 INPUT NODEFVAL "address[0..0]"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC "clock"
// Retrieval info: USED_PORT: data 0 0 5 0 INPUT NODEFVAL "data[4..0]"
// Retrieval info: USED_PORT: q 0 0 5 0 OUTPUT NODEFVAL "q[4..0]"
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT NODEFVAL "wren"
// Retrieval info: CONNECT: @address_a 0 0 1 0 address 0 0 1 0
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data_a 0 0 5 0 data 0 0 5 0
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
// Retrieval info: CONNECT: q 0 0 5 0 @q_a 0 0 5 0
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL RAM_delta_control_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf