// FIR filter
// 2016 Jesse Wilson and Ayush Mittal
// Colorado State University
// Dept of Electrical & Computer Engineering
// School of Biomedical Engineering
//
// This file defines a 32-tap FIR filter that can be used in an adaptive filter loop.


module fir_filter (
	clk,
	signal_in,
	filt_coeffs_b,
	signal_out
);

	// input/output port declarations
	input					clk;
	input 	[15:0] 	signal_in;
	input		[31:0]	filt_coeffs_b [0:15];	// filter coefficients
	output	[15:0] 	signal_out;
	
	// signal declarations
	reg		[31:0]	buffer [0:15];	// tapped delay line / buffer
	integer				sum,i;
	
	
// implementation

// tapped delay line shift register
// following the example here: http://www.bitweenie.com/listings/verilog-shift-register/
// this register stores 32 bytes, each having 16 bits
always @(posedge( clk ))
begin
	
	buffer[0]	<= signal_in;
	
	for( i = 1; i < 32; i = i + 1 ) 
	begin
		buffer[i]	<= buffer[i-1];
	end
end

// multiply and accumulate
// (this probably won't work, but it's a start)
always @(posedge( clk ))
begin
	sum = 0;
	
	for( i = 0; i < 32; i = i + 1 )
	begin
		sum = sum + buffer[i] * filt_coeffs_b[i];
	end
	signal_out <= sum;
end
endmodule
