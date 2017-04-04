
module CIC (
	clk,
	reset_n,
	in_error,
	in_valid,
	in_ready,
	in0_data,
	in1_data,
	in2_data,
	in3_data,
	in4_data,
	in5_data,
	in6_data,
	in7_data,
	in8_data,
	in9_data,
	in10_data,
	in11_data,
	in12_data,
	in13_data,
	in14_data,
	in15_data,
	out_data,
	out_error,
	out_valid,
	out_ready,
	out_startofpacket,
	out_endofpacket,
	out_channel);	

	input		clk;
	input		reset_n;
	input	[1:0]	in_error;
	input		in_valid;
	output		in_ready;
	input	[15:0]	in0_data;
	input	[15:0]	in1_data;
	input	[15:0]	in2_data;
	input	[15:0]	in3_data;
	input	[15:0]	in4_data;
	input	[15:0]	in5_data;
	input	[15:0]	in6_data;
	input	[15:0]	in7_data;
	input	[15:0]	in8_data;
	input	[15:0]	in9_data;
	input	[15:0]	in10_data;
	input	[15:0]	in11_data;
	input	[15:0]	in12_data;
	input	[15:0]	in13_data;
	input	[15:0]	in14_data;
	input	[15:0]	in15_data;
	output	[15:0]	out_data;
	output	[1:0]	out_error;
	output		out_valid;
	input		out_ready;
	output		out_startofpacket;
	output		out_endofpacket;
	output	[3:0]	out_channel;
endmodule
