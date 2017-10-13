//`timescale 20 ns / 0.01 ns
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module a2dv2(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// LED //////////
	LEDG,
	LEDR,

	//////////// KEY //////////
	KEY,

	//////////// SW //////////
	SW,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,

	//////////// LCD //////////
	LCD_BLON,
	LCD_DATA,
	LCD_EN,
	LCD_ON,
	LCD_RS,
	LCD_RW,
	
		//////// GPIO //////////
	GPIO,

	//////////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_N,

	//////////// I2C for HSMC  //////////
	I2C_SCLK,
	I2C_SDAT,

	//////////// Flash //////////
	FL_ADDR,
	FL_CE_N,
	FL_DQ,
	FL_OE_N,
	FL_RST_N,
	FL_RY,
	FL_WE_N,
	FL_WP_N,
	
	//////////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_N,
	SRAM_DQ,
	SRAM_LB_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_WE_N,
	
	//////////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,
	
		// Ethernet 0
//  ENET0_MDC,
//  ENET0_MDIO,
//  ENET0_RESET_N,
//	
//	// Ethernet 1
//  ENET1_GTX_CLK,
//  ENET1_MDC,
//  ENET1_MDIO,
//  ENET1_RESET_N,
//  ENET1_RX_CLK,
//  ENET1_RX_DATA,
//  ENET1_RX_DV,
//  ENET1_TX_DATA,
//   ENET1_TX_EN,

	//////////// HSMC, HSMC connect to DCC - High Speed ADC/DAC //////////
	AD_SCLK,
	AD_SDIO,
	ADA_D,
	ADA_DCO,
	ADA_OE,
	ADA_OR,
	ADA_SPI_CS,
	ADB_D,
	ADB_DCO,
	ADB_OE,
	ADB_OR,
	ADB_SPI_CS,
	AIC_BCLK,
	AIC_DIN,
	AIC_DOUT,
	AIC_LRCIN,
	AIC_LRCOUT,
	AIC_SPI_CS,
	AIC_XCLK,
	CLKIN1,
	CLKOUT0,
	DA,
	DB,
	FPGA_CLK_A_N,
	FPGA_CLK_A_P,
	FPGA_CLK_B_N,
	FPGA_CLK_B_P,
	J1_152,
	XT_IN_N,
	XT_IN_P,
//	NCO_OUT,
// clk_1khz,
//	ast_source_data,
//	ast_source_valid,
//	ast_source_error,
//	DFF_ast_source_data,
//	CLOCK_20,
//	test_out_data,
	adaptive_out_data,
	error_adaptive_out
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input 		     [3:0]		KEY;

//////////// SW //////////
input 		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//////////// LCD //////////
output		          		LCD_BLON;
inout 		     [7:0]		LCD_DATA;
output		          		LCD_EN;
output		          		LCD_ON;
output		          		LCD_RS;
output		          		LCD_RW;

//////////// SDCARD //////////
output		          		SD_CLK;
inout 		          		SD_CMD;
inout 		     [3:0]		SD_DAT;
input 		          		SD_WP_N;

//////////// GPIO //////////
inout		        [35:0]		GPIO;

//////////// SRAM //////////
output		    [19:0]		SRAM_ADDR;
output		          		SRAM_CE_N;
inout 		    [15:0]		SRAM_DQ;
output		          		SRAM_LB_N;
output		          		SRAM_OE_N;
output		          		SRAM_UB_N;
output		          		SRAM_WE_N;

//////////// I2C for HSMC  //////////
output		          		I2C_SCLK;
inout 		          		I2C_SDAT;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		          		VGA_VS;

//////////// Flash //////////
output		    [22:0]		FL_ADDR;
output		          		FL_CE_N;
inout 		     [7:0]		FL_DQ;
output		          		FL_OE_N;
output		          		FL_RST_N;
input 		          		FL_RY;
output		          		FL_WE_N;
output		          		FL_WP_N;

//////////// HSMC, HSMC connect to DCC - High Speed ADC/DAC //////////
inout 		          		AD_SCLK;
inout 		          		AD_SDIO;
input 		    [13:0]		ADA_D;
input 		          		ADA_DCO;
output		          		ADA_OE;
input 		          		ADA_OR;
output		          		ADA_SPI_CS;
input 		    [13:0]		ADB_D;
input 		          		ADB_DCO;
output		          		ADB_OE;
input 		          		ADB_OR;
output		          		ADB_SPI_CS;
inout 		          		AIC_BCLK;
output		          		AIC_DIN;
input 		          		AIC_DOUT;
inout 		          		AIC_LRCIN;
inout 		          		AIC_LRCOUT;
output		          		AIC_SPI_CS;
output		          		AIC_XCLK;
input 		          		CLKIN1;
output		          		CLKOUT0;
output		    [13:0]		DA;
output		    [13:0]		DB;
inout 		          		FPGA_CLK_A_N;
inout 		          		FPGA_CLK_A_P;
inout 		          		FPGA_CLK_B_N;
inout 		          		FPGA_CLK_B_P;
inout 		          		J1_152;
input 		          		XT_IN_N;
input 		          		XT_IN_P;

		// Ethernet 0
//output        ENET0_MDC;
//inout         ENET0_MDIO;
//output        ENET0_RESET_N;
//	
//	// Ethernet 1
//output        ENET1_GTX_CLK;
//output        ENET1_MDC;
//inout         ENET1_MDIO;
//output        ENET1_RESET_N;
//input         ENET1_RX_CLK;
//input  [3: 0] ENET1_RX_DATA;
//input         ENET1_RX_DV;
//output [3: 0] ENET1_TX_DATA;
//output        ENET1_TX_EN;


//=======================================================
//  REG/WIRE declarations
//=======================================================

wire						reset_n;
wire						sys_clk;
reg			[13:0]	per_a2da_d;
(*noprune*) reg			[13:0]	a2da_data;
reg			[13:0]	per_a2db_d;
(*noprune*) reg			[13:0]	a2db_data;

//////////// NCO //////////

//output reg clk_1khz=0;
//  output CLOCK_20;
//reg [15:0] counter = 16'd0;
//reg [5:0] async_counter= 6'd0;
//output reg [11:0] NCO_OUT;
//reg [11:0] l_NCO_OUT;
//wire NCO_FREQ_UP;
//wire NCO_FREQ_DOWN;
//wire filter_change_sw;
//integer temp = 20'b00000000000000000001;
//wire [19:0] NCO_IN;
//assign NCO_IN =temp;
//assign	filter_change_sw	= SW[17];	
//reg l_CLOCK_50;
//reg ll_CLOCK_50;
//reg lll_CLOCK_50;
wire lfsr_out;
reg  [13:0] FIFO_random_seq [0:29];
//reg signed [11:0] l_random_seq;
wire reset_frame;
reg reg_reset_frame;
reg l_reg_reset_frame;
assign reset_frame = GPIO[34];

//////////// FIR //////////


//wire [1:0]  ast_sink_error = 2'b00;
//output reg[32:0] ast_source_data;
//output reg [32:0] DFF_ast_source_data;
//output reg  ast_source_valid;
//reg  l_ast_source_valid;
//output reg  [1:0]  ast_source_error;
//reg [4:0]  coeff_in_address;
//reg        coeff_in_areset=1'b0;
//reg        coeff_in_read = 1'b0;
//reg [0:0]  coeff_out_valid;
//reg [15:0] coeff_out_data;
//reg [0:0]  coeff_in_we=1'b0;
//reg [15:0] coeff_in_data;
//reg [15:0] mem [0:31];
//reg [15:0] mem1 [0:31];
//reg [1:0] state_f = 2'd0;
//wire sw_17_debounced;
//parameter IDLE  = 2'd0,COUNT_ON = 2'd1,WRITE_COEFF = 2'd2;
parameter INIT  = 1'd0,INCREMENT = 1'd1;
//reg switch_prev = 0;
//reg [5:0] i = 6'd0;
//reg ast_sink_valid;
//output [31:0] test_out_data;
//reg [11:0] desired_data;
output [42:0] adaptive_out_data;
output [32:0] error_adaptive_out;
(*noprune*) reg			[13:0]			o_sine_p;
wire [7:0] mu;
wire [7:0] tap;
wire CLOCK_20;
wire adc_clock;
//reg [2:0] phasecounterselect = 3'b001;


//	wire system_clk, clk_125, clk_25, clk_2p5;
//	wire tx_clk;
////	wire core_reset_n;
//	wire mdc, mdio_in, mdio_oen, mdio_out;
//	wire eth_mode, ena_10;

//	assign mdio_in   = ENET1_MDIO;
//	assign ENET0_MDC  = mdc;
//	assign ENET1_MDC  = mdc;
//	assign ENET0_MDIO = mdio_oen ? 1'bz : mdio_out;
//	assign ENET1_MDIO = mdio_oen ? 1'bz : mdio_out;
//	
//	assign ENET0_RESET_N = core_reset_n;
//	assign ENET1_RESET_N = core_reset_n;
//	
//
//	
//	assign tx_clk = eth_mode ? clk_125 :       // GbE Mode   = 125MHz clock
//	                ena_10   ? clk_2p5 :       // 10Mb Mode  = 2.5MHz clock
//	                           clk_25;         // 100Mb Mode = 25 MHz clock


//initial begin
//mem[0]	<=	-	16'sd	1	;
//mem[1]	<=		16'sd	63	;
//mem[2]	<=	-	16'sd	89	;
//mem[3]	<=		16'sd	3	;
//mem[4]	<=		16'sd	227	;
//mem[5]	<=	-	16'sd	435	;
//mem[6]	<=		16'sd	301	;
//mem[7]	<=		16'sd	349	;
//mem[8]	<=	-	16'sd	1202	;
//mem[9]	<=		16'sd	1430	;
//mem[10]	<=	-	16'sd	247	;
//mem[11]	<=	-	16'sd	2235	;
//mem[12]	<=		16'sd	4504	;
//mem[13]	<=	-	16'sd	3920	;
//mem[14]	<=	-	16'sd	3006	;
//mem[15]	<=		16'sd	32767	;
//mem[16]	<=		16'sd	32767	;
//mem[17]	<=	-	16'sd	3006	;
//mem[18]	<=	-	16'sd	3920	;
//mem[19]	<=		16'sd	4504	;
//mem[20]	<=	-	16'sd	2235	;
//mem[21]	<=	-	16'sd	247	;
//mem[22]	<=		16'sd	1430	;
//mem[23]	<=	-	16'sd	1202	;
//mem[24]	<=		16'sd	349	;
//mem[25]	<=		16'sd	301	;
//mem[26]	<=	-	16'sd	435	;
//mem[27]	<=		16'sd	227	;
//mem[28]	<=		16'sd	3	;
//mem[29]	<=	-	16'sd	89	;
//mem[30]	<=		16'sd	63	;
//mem[31]	<=	-	16'sd	1	;
//
//mem1[0]	<=		16'sd	309	;
//mem1[1]	<=	-	16'sd	226	;
//mem1[2]	<=	-	16'sd	47	;
//mem1[3]	<=	-	16'sd	349	;
//mem1[4]	<=	-	16'sd	1037	;
//mem1[5]	<=		16'sd	1932	;
//mem1[6]	<=		16'sd	2737	;
//mem1[7]	<=	-	16'sd	2959	;
//mem1[8]	<=	-	16'sd	2021	;
//mem1[9]	<=	-	16'sd	556	;
//mem1[10]	<=	-	16'sd	4962	;
//mem1[11]	<=		16'sd	10950	;
//mem1[12]	<=		16'sd	17813	;
//mem1[13]	<=	-	16'sd	24493	;
//mem1[14]	<=	-	16'sd	29815	;
//mem1[15]	<=		16'sd	32767	;
//mem1[16]	<=		16'sd	32767	;
//mem1[17]	<=	-	16'sd	29815	;
//mem1[18]	<=	-	16'sd	24493	;
//mem1[19]	<=		16'sd	17813	;
//mem1[20]	<=		16'sd	10950	;
//mem1[21]	<=	-	16'sd	4962	;
//mem1[22]	<=	-	16'sd	556	;
//mem1[23]	<=	-	16'sd	2021	;
//mem1[24]	<=	-	16'sd	2959	;
//mem1[25]	<=		16'sd	2737	;
//mem1[26]	<=		16'sd	1932	;
//mem1[27]	<=	-	16'sd	1037	;
//mem1[28]	<=	-	16'sd	349	;
//mem1[29]	<=	-	16'sd	47	;
//mem1[30]	<=	-	16'sd	226	;
//mem1[31]	<=		16'sd	309	;
//
//
//end


//=======================================================
//  Structural coding
//=======================================================

//--- globa signal assign
assign	reset_n			= KEY[3];
//assign	NCO_FREQ_UP			= KEY[2];
//assign	NCO_FREQ_DOWN			= KEY[1];
assign   sys_clk = CLOCK_20;
assign	FPGA_CLK_A_P	=  CLOCK_20;
assign	FPGA_CLK_A_N	=  ~CLOCK_20;
assign	FPGA_CLK_B_P	=  CLOCK_20;
assign	FPGA_CLK_B_N	=  ~CLOCK_20;
assign	LEDG[3]			=  ADA_OR;
assign	LEDG[4]			=  ADB_OR;

 // assign for ADC control signal
assign	AD_SCLK			= 1'b1;			// (DFS)Data Format Select
assign	AD_SDIO			= 1'b1;			// (DCS)Duty Cycle Stabilizer Select
assign	ADA_OE			= 1'b0;				// enable ADA output
assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)
assign	ADB_OE			= 1'b0;				// enable ADA output
assign	ADB_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)

 // assign for DAC output data
assign DA =  o_sine_p;

						
always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		o_sine_p	<= 14'd0;
	end
	else begin
		o_sine_p	<= (lfsr_out)? 14'b00011111111111 : 14'b11100000000001 ;
	end
end
						
						
//--- analog to digital converter capture and sync
	//--- Channel A
always @(negedge reset_n or posedge ADA_DCO)
begin
	if (!reset_n) begin
		per_a2da_d	<= 14'd0;
	end
	else begin
		per_a2da_d	<=  ADA_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<=  per_a2da_d;
	end
end

	//--- Channel B
always @(negedge reset_n or posedge ADB_DCO)
begin
	if (!reset_n) begin
		per_a2db_d	<= 14'd0;
	end
	else begin
		per_a2db_d	<=  ADB_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2db_data	<= 14'd0;
	end
	else begin
		a2db_data	<=  per_a2db_d;
	end
end


////--- probe points for data capture
//a2d_data_a	a2d_data_a_inst(
//			.probe(a2da_data),
//			.source());
//			
//a2d_data_a	a2d_data_b_inst(
//			.probe(a2db_data),
//			.source());			
//			
//p_sine	p_sine_inst(
//			.probe(o_sine_p),
//			.source());
			
			

//nco abc_inst (.clk			(CLOCK_20),
//			.phase_incr (NCO_IN),
//			.cos_out  (NCO_OUT));
	
PLL_200MHz PLL_200MHz_inst (
				.areset	(~KEY[0]),
				.inclk0(CLOCK_50),
				.c0(CLOCK_20),
//				.c1(adc_clock),
//				.c2(clk_125),
//				.c3(clk_25),
//				.c4(clk_10mhz),
				.locked(LEDG[1])
//				.phasecounterselect(phasecounterselect),
//				.phasestep(~KEY[1]),
//				.phaseupdown(1'b1),
//				.scanclk(CLOCK_50),
//				.phasedone(LEDR[10])
);			
	
//always @(posedge CLOCK_50)
//begin
//	if (counter == 16'd2500)
//	begin
//	clk_1khz <= ~clk_1khz;
//	counter <= 16'd0;
//	end
//	else 
//	begin
//	counter = counter +1;	
//	end	
//end
//
//always @( posedge clk_1khz)
//begin
//	if ((NCO_FREQ_UP ==1) && (NCO_FREQ_DOWN ==0))
//	begin 
//	temp= temp + 1;
//	end
//	
//	if ((NCO_FREQ_DOWN ==1) && (NCO_FREQ_UP ==0))
//	begin 
//	temp= temp - 1;
//	end
//end 


//fir_IP_0002 fir_ip_inst (
//		.clk              (CLOCK_50),              //                     clk.clk
//		.reset_n          (reset_n),          //                     rst.reset_n
//		.ast_sink_data    (l_NCO_OUT),    //   avalon_streaming_sink.data
//		.ast_sink_valid   (1'b1),   //                        .valid
//		.ast_sink_error   (ast_sink_error),   //                        .error
//		.ast_source_data  (ast_source_data),  // avalon_streaming_source.data
//		.ast_source_valid (ast_source_valid), //                        .valid
//		.ast_source_error (ast_source_error)  //                        .error
//	);

	/*
	fir_IP_0002 fir_ip_inst (
		.clk              (CLOCK_20),              //                     clk.clk
		.reset_n          (reset_n),          //                     rst.reset_n
		.ast_sink_data    (l_NCO_OUT),    //   avalon_streaming_sink.data
		.ast_sink_valid   (ast_sink_valid),   //                        .valid
		.ast_sink_error   (ast_sink_error),   //                        .error
		.ast_source_data  (ast_source_data),  // avalon_streaming_source.data
		.ast_source_valid (ast_source_valid), //                        .valid
		.ast_source_error (ast_source_error),
		//                        .error
		.coeff_in_clk     (CLOCK_20),     //             coeff_clock.clk
		.coeff_in_areset  (coeff_in_areset),  //             coeff_reset.reset_n
		.coeff_in_address (coeff_in_address), //         avalon_mm_slave.address
		.coeff_in_read    (coeff_in_read),    //                        .read
		.coeff_out_valid  (coeff_out_valid),  //                        .readdatavalid
		.coeff_out_data   (coeff_out_data),   //                        .readdata
		.coeff_in_we      (coeff_in_we),      //                        .write
		.coeff_in_data    (coeff_in_data)     //                        .writedata
	);
*/
	
/*
	always @ (filter_change_sw)
begin 
	if ((filter_change_sw ==1) && (switch_prev ==0))
	begin
	
	switch_prev <=1;
	coeff_in_areset <=1'b1;

	temp_b <= 1'b0;
	temp_a <= temp_b;
	coeff_in_areset <= temp_a;
	
	for (i=5'd0; i<5'd32 ; i=i+1)
	begin
		coeff_in_we <= 1'b1;
		coeff_in_address <= i;
		coeff_in_data <= mem[i];
		
	end
	coeff_in_we <= 1'b0;
	end
	

	if ((filter_change_sw ==0) && (switch_prev ==1))
	begin

	switch_prev <=0;
	coeff_in_areset <=1'b1;

	temp_b <= 1'b0;
	temp_a <= temp_b;
	coeff_in_areset <= temp_a;
	
	for (i=5'd0; i<5'd32 ; i=i+1)
	begin
		coeff_in_we <= 1'b1;
		coeff_in_address <= i;
		coeff_in_data <= mem1[i];
		
	end
	coeff_in_we <= 1'b0;
	end
end	*/
/*
// Adding debouncer
debouncer debounce_sw17 (.clk (CLOCK_50), 
						  	    .i (filter_change_sw), 
						  		 .o (sw_17_debounced));

								 
// State machine for coeff reload
always @(posedge CLOCK_20) begin

case (state_f)

IDLE:begin

	if (sw_17_debounced != switch_prev)  begin
	switch_prev <=sw_17_debounced;
	coeff_in_areset <=1'b1;
	state_f <= COUNT_ON;
	async_counter <= 6'd0;			
	end
end
	
COUNT_ON: begin
	if (async_counter != 6'd1) begin
	async_counter = async_counter +1;
	end
	else begin
	i <= 6'd0;
	state_f <= WRITE_COEFF;
	coeff_in_areset <= 1'b0;
	end
	end

WRITE_COEFF: 
begin
	if ( i < 6'd32)
	begin
	
		coeff_in_we <= 1'b1;
	
		if (sw_17_debounced == 0) 
			begin
			coeff_in_address <= i;
			coeff_in_data <= mem[i];
			i <=i +1;
			end
		else 	
			begin
			coeff_in_address <= i;
			coeff_in_data <= mem1[i];
			i <=i +1;
		end
	end
	else 
		begin
		coeff_in_we <= 1'b0;
		state_f <= IDLE;
		end
end


default : state_f <= IDLE;

endcase
end

// to latch the filter's output; confine only to valid values
always @(posedge CLOCK_20) begin
l_ast_source_valid <= ast_source_valid;
DFF_ast_source_data <= DFF_ast_source_data;
	if ((l_ast_source_valid == 0) && (ast_source_valid == 1)) begin
	DFF_ast_source_data <= ast_source_data;
	end
end 

//to take care of sink_valid generation and latching NCO's o/p
always @(posedge CLOCK_20) begin
	l_CLOCK_50 <= CLOCK_50;
	ll_CLOCK_50 <= l_CLOCK_50;
	lll_CLOCK_50 <= ll_CLOCK_50;
	ast_sink_valid <= 1'b0;
	//l_NCO_OUT <=l_NCO_OUT;
	if ((lll_CLOCK_50 ==0) && (ll_CLOCK_50 ==1)) begin
		l_NCO_OUT <=NCO_OUT;
		ast_sink_valid <= 1'b1;
	end
end

*/

//always @ (posedge CLOCK_20)
//begin
//l_NCO_OUT <=NCO_OUT;
////desired_data <= test_out_data[31:20];
////l_test_out_data <= test_out_data;
//end

//just_fir just_fir_inst(	.clk(CLOCK_20),
//								.reset(reset_n),
//								.x_in(o_sine_p),
//								.y_out(test_out_data));


lfsr lfsrs_inst (	.clk (CLOCK_20),
						.outp(lfsr_out));

ROM_delta_control delta_control_inst (.address(1'b0),
												  .clock(CLOCK_20),
												  .q(mu));

ROM_buffer_tap buffer_control_inst (.address(1'b0),
												  .clock(CLOCK_20),
												  .q(tap));
//////////////////////////////////////////////////////
///////////DELAYING 'd' ///////////////////////////
reg  [13:0] delayed_reg_d [0:1];

always @(posedge CLOCK_20 )
begin
delayed_reg_d[0] <= a2da_data;
delayed_reg_d[1] <= delayed_reg_d[0];
end

//////////////////////////////////////////////////////////


adaptive_fir adaptive_fir_inst(	
								.clk(CLOCK_20),
								.reset(reset_n),
								.x_in(FIFO_random_seq[tap]),
								.d_in(delayed_reg_d[1]),
								.mu_in(mu),
								.y_out(adaptive_out_data),
								.e_out(error_adaptive_out),
								.f_0(f_0),
								.f_1(f_1),
								.f_2(f_2),
								.f_3(f_3),
								.f_4(f_4),
								.f_5(f_5),
								.f_6(f_6),
								.f_7(f_7),
								.f_8(f_8),
								.f_9(f_9),
								.f_10(f_10),
								.f_11(f_11),
								.f_12(f_12),
								.f_13(f_13),
								.f_14(f_14),
								.f_15(f_15)
								);	

wire ADC_CHB_SEL;
assign ADC_CHB_SEL = SW[16];
								
always @(posedge CLOCK_20)
begin

FIFO_random_seq[0] <= (ADC_CHB_SEL)? a2db_data : o_sine_p;
FIFO_random_seq[1] <= FIFO_random_seq[0];
FIFO_random_seq[2] <= FIFO_random_seq[1];
FIFO_random_seq[3] <= FIFO_random_seq[2];
FIFO_random_seq[4] <= FIFO_random_seq[3];
FIFO_random_seq[5] <= FIFO_random_seq[4];
FIFO_random_seq[6] <= FIFO_random_seq[5];
FIFO_random_seq[7] <= FIFO_random_seq[6];
FIFO_random_seq[8] <= FIFO_random_seq[7];
FIFO_random_seq[9] <= FIFO_random_seq[8];
FIFO_random_seq[10] <= FIFO_random_seq[9];
FIFO_random_seq[11] <= FIFO_random_seq[10];
FIFO_random_seq[12] <= FIFO_random_seq[11];
FIFO_random_seq[13] <= FIFO_random_seq[12];
FIFO_random_seq[14] <= FIFO_random_seq[13];
FIFO_random_seq[15] <= FIFO_random_seq[14];
FIFO_random_seq[16] <= FIFO_random_seq[15];
FIFO_random_seq[17] <= FIFO_random_seq[16];
FIFO_random_seq[18] <= FIFO_random_seq[17];
FIFO_random_seq[19] <= FIFO_random_seq[18];
FIFO_random_seq[20] <= FIFO_random_seq[19];
FIFO_random_seq[21] <= FIFO_random_seq[20];
FIFO_random_seq[22] <= FIFO_random_seq[21];
FIFO_random_seq[23] <= FIFO_random_seq[22];
FIFO_random_seq[24] <= FIFO_random_seq[23];
FIFO_random_seq[25] <= FIFO_random_seq[24];
FIFO_random_seq[26] <= FIFO_random_seq[25];
FIFO_random_seq[27] <= FIFO_random_seq[26];
FIFO_random_seq[28] <= FIFO_random_seq[27];
FIFO_random_seq[29] <= FIFO_random_seq[28];
//FIFO_random_seq[30] <= FIFO_random_seq[29];
//FIFO_random_seq[31] <= FIFO_random_seq[30];
//FIFO_random_seq[32] <= FIFO_random_seq[31];
//FIFO_random_seq[33] <= FIFO_random_seq[32];
//FIFO_random_seq[34] <= FIFO_random_seq[33];
//FIFO_random_seq[35] <= FIFO_random_seq[34];
//FIFO_random_seq[36] <= FIFO_random_seq[35];
//FIFO_random_seq[37] <= FIFO_random_seq[36];
//FIFO_random_seq[38] <= FIFO_random_seq[37];
//FIFO_random_seq[39] <= FIFO_random_seq[38];
//FIFO_random_seq[40] <= FIFO_random_seq[39];
//FIFO_random_seq[41] <= FIFO_random_seq[40];
//FIFO_random_seq[42] <= FIFO_random_seq[41];
//FIFO_random_seq[43] <= FIFO_random_seq[42];
//FIFO_random_seq[44] <= FIFO_random_seq[43];
//FIFO_random_seq[45] <= FIFO_random_seq[44];
//FIFO_random_seq[46] <= FIFO_random_seq[45];
//FIFO_random_seq[47] <= FIFO_random_seq[46];
//FIFO_random_seq[48] <= FIFO_random_seq[47];
//FIFO_random_seq[49] <= FIFO_random_seq[48];
//FIFO_random_seq[50] <= FIFO_random_seq[49];
//FIFO_random_seq[51] <= FIFO_random_seq[50];
//FIFO_random_seq[52] <= FIFO_random_seq[51];
//FIFO_random_seq[53] <= FIFO_random_seq[52];
//FIFO_random_seq[54] <= FIFO_random_seq[53];
//FIFO_random_seq[55] <= FIFO_random_seq[54];
//FIFO_random_seq[56] <= FIFO_random_seq[55];
//FIFO_random_seq[57] <= FIFO_random_seq[56];
//FIFO_random_seq[58] <= FIFO_random_seq[57];
//FIFO_random_seq[59] <= FIFO_random_seq[58];
//FIFO_random_seq[60] <= FIFO_random_seq[59];
//FIFO_random_seq[61] <= FIFO_random_seq[60];
//FIFO_random_seq[62] <= FIFO_random_seq[61];
//FIFO_random_seq[63] <= FIFO_random_seq[62];
//FIFO_random_seq[64] <= FIFO_random_seq[63];
//FIFO_random_seq[65] <= FIFO_random_seq[64];
//FIFO_random_seq[66] <= FIFO_random_seq[65];
//FIFO_random_seq[67] <= FIFO_random_seq[66];
//FIFO_random_seq[68] <= FIFO_random_seq[67];
//FIFO_random_seq[69] <= FIFO_random_seq[68];
//FIFO_random_seq[70] <= FIFO_random_seq[69];
//FIFO_random_seq[71] <= FIFO_random_seq[70];
//FIFO_random_seq[72] <= FIFO_random_seq[71];
//FIFO_random_seq[73] <= FIFO_random_seq[72];
//FIFO_random_seq[74] <= FIFO_random_seq[73];
//FIFO_random_seq[75] <= FIFO_random_seq[74];
end
								

//	my_ddio_out ddio_out_inst(
//		.datain_h(1'b1),
//		.datain_l(1'b0),
//		.outclock(tx_clk),
//		.dataout(ENET1_GTX_CLK)
//	);
//
//	
//    nios_system system_inst (
//        .clk_clk                                   (system_clk),           //                                   clk.clk
//        .reset_reset_n                             (core_reset_n),      //                                 reset.reset_n
//        .tse_mac_pcs_mac_tx_clock_connection_clk 		(tx_clk), 				// eth_tse_0_pcs_mac_tx_clock_connection.clk
//        .tse_mac_pcs_mac_rx_clock_connection_clk 		(ENET1_RX_CLK), 		// eth_tse_0_pcs_mac_rx_clock_connection.clk
//        .tse_mac_mac_mdio_connection_mdc               (mdc),             	//               tse_mac_mdio_connection.mdc
//        .tse_mac_mac_mdio_connection_mdio_in           (mdio_in),           //                                      .mdio_in
//        .tse_mac_mac_mdio_connection_mdio_out          (mdio_out),          //                                      .mdio_out
//        .tse_mac_mac_mdio_connection_mdio_oen          (mdio_oen),          //                                      .mdio_oen
//        .tse_mac_mac_rgmii_connection_rgmii_in         (ENET1_RX_DATA),     //              tse_mac_rgmii_connection.rgmii_in
//        .tse_mac_mac_rgmii_connection_rgmii_out        (ENET1_TX_DATA),     //                                      .rgmii_out
//        .tse_mac_mac_rgmii_connection_rx_control       (ENET1_RX_DV),       //                                      .rx_control
//        .tse_mac_mac_rgmii_connection_tx_control       (ENET1_TX_EN),       //                                      .tx_control
//
//        .tse_mac_mac_status_connection_eth_mode        (eth_mode),        	//                                      .eth_mode
//        .tse_mac_mac_status_connection_ena_10          (ena_10),          	//                                      .ena_10	  
//    );	
				
///////////////GPIO control////////////////
//wire clk_10mhz;
//reg [7:0] temp_counter = 8'd0;
//wire overflow;
//reg overflw_reg;
//assign GPIO[35] = clk_10mhz;
//
////assign GPIO[7:0] = temp_counter;
//	
//	
// FIFO fifo_1 (
//	.data({overflw_reg,temp_counter}),
//	.rdclk(GPIO[8]),
//	.rdreq(1'b1),
//	.wrclk(clk_10mhz),
//	.wrreq(1'b1),
//	.q({GPIO[10],GPIO[7:0]}),
//	.rdempty(GPIO[9]),
//	.wrfull(overflow)
//	);
//	
//	
//	always @(negedge clk_10mhz)
//	begin
//	temp_counter <= temp_counter + 2'd1;
//	end	
//		
//	always @(posedge clk_10mhz)
//	begin
//	overflw_reg <= overflow;
//	end	
	
////////////////////////////////////////////////////////
///////////////////////////CIC/////////////////////////
(*keep*) wire [15:0] f_0;
(*keep*) wire [15:0] f_1;
(*keep*) wire [15:0] f_2;
(*keep*) wire [15:0] f_3;
(*keep*) wire [15:0] f_4;
(*keep*) wire [15:0] f_5;
(*keep*) wire [15:0] f_6;
(*keep*) wire [15:0] f_7;
(*keep*) wire [15:0] f_8;
(*keep*) wire [15:0] f_9;
(*keep*) wire [15:0] f_10;
(*keep*) wire [15:0] f_11;
(*keep*) wire [15:0] f_12;
(*keep*) wire [15:0] f_13;
(*keep*) wire [15:0] f_14;
(*keep*) wire [15:0] f_15;
wire in_ready;
wire CIC_out_ready = 1'b1;
wire CIC_in_valid = 1'b1;
wire [1:0] CIC_in_error = 2'b0;
wire [15:0] out_data;
wire [1:0] out_error;
wire out_valid;
wire out_startofpacket;
wire out_endofpacket;
wire [3:0] out_channel;


 CIC u0 (
	  .in_error          (CIC_in_error),          //  av_st_in.error
	  .in_valid          (CIC_in_valid),          //          .valid
	  .in_ready          (in_ready),          //          .ready
	  .in0_data          (f_0),          //          .in0_data
	  .in1_data          (f_1),          //          .in1_data
	  .in2_data          (f_2),          //          .in2_data
	  .in3_data          (f_3),          //          .in3_data
	  .in4_data          (f_4),          //          .in4_data
	  .in5_data          (f_5),          //          .in5_data
	  .in6_data          (f_6),          //          .in6_data
	  .in7_data          (f_7),          //          .in7_data
	  .in8_data          (f_8),          //          .in8_data
	  .in9_data          (f_9),          //          .in9_data
	  .in10_data         (f_10),         //          .in10_data
	  .in11_data         (f_11),         //          .in11_data
	  .in12_data         (f_12),         //          .in12_data
	  .in13_data         (f_13),         //          .in13_data
	  .in14_data         (f_14),         //          .in14_data
	  .in15_data         (f_15),         //          .in15_data
	  .out_data          (out_data),          // av_st_out.out_data
	  .out_error         (out_error),         //          .error
	  .out_valid         (out_valid),         //          .valid
	  .out_ready         (CIC_out_ready),         //          .ready
	  .out_startofpacket (out_startofpacket), //          .startofpacket
	  .out_endofpacket   (out_endofpacket),   //          .endofpacket
	  .out_channel       (out_channel),       //          .channel
	  .clk               (CLOCK_20),               //     clock.clk
	  .reset_n           (~reg_reset_frame)            //     reset.reset_n
 );



//////////////////////////////////////////////////////

///////////////////////Adding multiplexer for CIC debugging///////////////////
//
//(* noprune *) reg [15:0] CIC_data [0:15];
//(* noprune *) reg [0:0] CIC_data_valid [0:15];
//
//always @(negedge out_valid) begin
//
//case (out_channel)
//
//4'd0 : begin
// CIC_data [0] <= out_data;
// CIC_data_valid [0]  <= out_valid;
// end
// 
//4'd1 : begin
//CIC_data [1] <= out_data;
//CIC_data_valid [1]  <= out_valid;
//end
//
//4'd2 : begin
//CIC_data [2] <= out_data;
//CIC_data_valid [2]  <= out_valid;
//end
//
//4'd3 : begin
//CIC_data [3] <= out_data;
//CIC_data_valid [3]  <= out_valid;
//end
//
//4'd4 : begin
//CIC_data [4] <= out_data;
//CIC_data_valid [4]  <= out_valid;
//end
//
//4'd5 : begin
//CIC_data [5] <= out_data;
//CIC_data_valid [5]  <= out_valid;
//end
//
//4'd6 : begin
//CIC_data [6] <= out_data;
//CIC_data_valid [6]  <= out_valid;
//end
//
//4'd7 : begin
//CIC_data [7] <= out_data;
//CIC_data_valid [7]  <= out_valid;
//end
//
//4'd8 : begin
//CIC_data [8] <= out_data;
//CIC_data_valid [8]  <= out_valid;
//end
//
//4'd9 : begin
//CIC_data [9] <= out_data;
//CIC_data_valid [9]  <= out_valid;
//end
//
//4'd10 : begin
//CIC_data [10] <= out_data;
//CIC_data_valid [10]  <= out_valid;
//end
//
//4'd11 : begin
//CIC_data [11] <= out_data;
//CIC_data_valid [11]  <= out_valid;
//end
//
//4'd12 : begin
//CIC_data [12] <= out_data;
//CIC_data_valid [12]  <= out_valid;
//end
//
//4'd13 : begin
//CIC_data [13] <= out_data;
//CIC_data_valid [13]  <= out_valid;
//end
//
//4'd14 : begin
//CIC_data [14] <= out_data;
//CIC_data_valid [14]  <= out_valid;
//end
//
//4'd15 : begin
//CIC_data [15] <= out_data;
//CIC_data_valid [15]  <= out_valid;
//end 
// 
//
//endcase
//end
//
////////////////////////////////////////////////////////////////////////////////

///////////////////////////PROTOCOL/////////////////////
reg [47:0] cic_encoded_data = 47'd0;
reg overflw_reg;
wire overflow;
wire dummy;
wire markXin;
reg markXin_reg;
wire markYin;
reg markYin_reg;


assign markXin = GPIO[14];
assign markYin = GPIO[15];

always @ (negedge out_valid)
begin
cic_encoded_data <= {1'd0,overflw_reg,markYin_reg,markXin_reg,out_channel,out_data[3:0],
							1'd0,overflw_reg,markYin_reg,markXin_reg,out_channel,out_data[7:4],
							1'd0,overflw_reg,markYin_reg,markXin_reg,out_channel,out_data[11:8],
							1'd0,overflw_reg,markYin_reg,markXin_reg,out_channel,out_data[15:12]			//MSB				
							};
end

//pass to FIFO


 FIFO fifo_1 (
	.data(cic_encoded_data),
	.rdclk(GPIO[8]),
	.rdreq(1'b1),
	.wrclk(out_valid),
	.wrreq(1'b1),
	.q({dummy,GPIO[10],GPIO[13],GPIO[12],GPIO[7:0]}),   
	.rdempty(GPIO[11]),
	.wrfull(overflow)
	);
	

	
always @(posedge out_valid)
begin
overflw_reg <= overflow;
markXin_reg <= markXin;
markYin_reg <= markYin;
end


	

	
//check wr_clk min pulse width//////////////////////


/////////////////////////////////////////////////////
//////////////////////Delaying CIC outputs for feeding in SRAM///////////////////
//
//reg  delay1_out_valid;
//reg  delay2_out_valid;
//reg [15:0] delay1_out_data;
//reg [15:0] delay2_out_data;
//
//
//always @ (posedge CLOCK_50)
//begin
//
//delay1_out_valid <= out_valid;
//delay2_out_valid <= delay1_out_valid;
//
//delay1_out_data <= out_data ;
//delay2_out_data <= delay1_out_data;
//
//end

//////////////////////////////////////////////////////

////////////////////////////////////////////////////////
////////////Transfer to SRAM////////////////////////////

(*noprune*) reg [21:0] sram_address = 22'd0;


sram_access sram_abc (
							.bridge_input_conduit_address((sram_write_done) ? 21'bzzzzzzzzzzzzzzzzzzzz : sram_address),     // bridge_input_conduit.address
							.bridge_input_conduit_byte_enable((sram_write_done) ? 2'bzz : 2'b11), //                     .byte_enable
							.bridge_input_conduit_read(),        //                     .read
							.bridge_input_conduit_write((sram_write_done) ? 1'bz : out_valid),       //                     .write
							.bridge_input_conduit_write_data((sram_write_done) ? 16'bzzzzzzzzzzzzzzzz : out_data),  //                     .write_data
							.bridge_input_conduit_acknowledge(), //                     .acknowledge
							.bridge_input_conduit_read_data(),   //                     .read_data
							.clk_clk(CLOCK_50),                          //                  clk.clk
							.sram_conduit_DQ(SRAM_DQ),                  //         sram_conduit.DQ
							.sram_conduit_ADDR(SRAM_ADDR),                //                     .ADDR
							.sram_conduit_LB_N(SRAM_LB_N),                //                     .LB_N
							.sram_conduit_UB_N(SRAM_UB_N),                //                     .UB_N
							.sram_conduit_CE_N(SRAM_CE_N),                //                     .CE_N
							.sram_conduit_OE_N(SRAM_OE_N),                //                     .OE_N
							.sram_conduit_WE_N(SRAM_WE_N),                 //                     .WE_N
							.vga_conduit_CLK(VGA_CLK),                  //          vga_conduit.CLK
							.vga_conduit_HS(VGA_HS),                   //                     .HS
							.vga_conduit_VS(VGA_VS),                   //                     .VS
							.vga_conduit_BLANK(VGA_BLANK_N),                //                     .BLANK
							.vga_conduit_SYNC(VGA_SYNC_N),                 //                     .SYNC
							.vga_conduit_R(VGA_R),                    //                     .R
							.vga_conduit_G(VGA_G),                    //                     .G
							.vga_conduit_B(VGA_B)   
	);


reg  delay1_out_valid;
	
always @ (posedge CLOCK_20)
begin
reg_reset_frame <= reset_frame;
l_reg_reset_frame <= reg_reset_frame;
delay1_out_valid <= out_valid;
end

////////////////////////////////////STATE MACHINE FOR SRAM DATA TRANSFER////////////////////////////
reg state_mach;
reg sram_write_done = 1'b0;


always @ (posedge CLOCK_20)
begin

case (state_mach)

INIT:
begin
if (reg_reset_frame == 1'b1 && l_reg_reset_frame == 1'b0) begin
	sram_address <= 22'd0;
	state_mach <= INCREMENT;
	sram_write_done <= 1'b0;
end
end

INCREMENT:
begin
if (reg_reset_frame == 1'b1 && sram_address < 22'd2097152) begin
	if (out_valid == 1'b0 && delay1_out_valid== 1'b1)
		sram_address <= sram_address + 2'b10;
	else begin
		state_mach <= INIT;
		sram_write_done <= 1'b1;
	end
end
end

default: state_mach <= INIT;

endcase

end

//////////////////////////////////////////////////////////////////////////////////////////////
	
//always @ (negedge out_valid or posedge reg_reset_frame) 
//begin
//(~l_reg_reset_frame) ? sram_address <= 22'd0 : 
//												sram_address < 22'd2097152 ?  sram_address <= sram_address + 2'b10 : #0;
//
////if (l_reg_reset_frame == 1'b0)
////	sram_address <= 22'd0;
////else	if (sram_address < 22'd2097152)
////begin
////	sram_address <= sram_address + 2'b10;
////end
//
//
////if (~reset_frame)
////begin
////sram_address <= 22'd0;
////end
////if (sram_address < 22'd2097152)         ////////////// 256*256*16 = 1048576 * 2 (for byte addressing) = 2097152
////	begin
////		sram_address <= sram_address + 2'b10;
////	end
//end



//(*noprune*) reg [19:0] temp_counter = 20'd0;
//(*noprune*) reg [19:0] temp_counter1 = 20'd0;


//always @(posedge out_valid)
//begin
//temp_counter <= temp_counter + 1'd1;
//temp_counter1 <= temp_counter;
//end

	
endmodule
