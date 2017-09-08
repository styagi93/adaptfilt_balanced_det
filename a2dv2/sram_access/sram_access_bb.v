
module sram_access (
	bridge_input_conduit_address,
	bridge_input_conduit_byte_enable,
	bridge_input_conduit_read,
	bridge_input_conduit_write,
	bridge_input_conduit_write_data,
	bridge_input_conduit_acknowledge,
	bridge_input_conduit_read_data,
	clk_clk,
	sram_conduit_DQ,
	sram_conduit_ADDR,
	sram_conduit_LB_N,
	sram_conduit_UB_N,
	sram_conduit_CE_N,
	sram_conduit_OE_N,
	sram_conduit_WE_N,
	vga_conduit_CLK,
	vga_conduit_HS,
	vga_conduit_VS,
	vga_conduit_BLANK,
	vga_conduit_SYNC,
	vga_conduit_R,
	vga_conduit_G,
	vga_conduit_B);	

	input	[20:0]	bridge_input_conduit_address;
	input	[1:0]	bridge_input_conduit_byte_enable;
	input		bridge_input_conduit_read;
	input		bridge_input_conduit_write;
	input	[15:0]	bridge_input_conduit_write_data;
	output		bridge_input_conduit_acknowledge;
	output	[15:0]	bridge_input_conduit_read_data;
	input		clk_clk;
	inout	[15:0]	sram_conduit_DQ;
	output	[19:0]	sram_conduit_ADDR;
	output		sram_conduit_LB_N;
	output		sram_conduit_UB_N;
	output		sram_conduit_CE_N;
	output		sram_conduit_OE_N;
	output		sram_conduit_WE_N;
	output		vga_conduit_CLK;
	output		vga_conduit_HS;
	output		vga_conduit_VS;
	output		vga_conduit_BLANK;
	output		vga_conduit_SYNC;
	output	[7:0]	vga_conduit_R;
	output	[7:0]	vga_conduit_G;
	output	[7:0]	vga_conduit_B;
endmodule
