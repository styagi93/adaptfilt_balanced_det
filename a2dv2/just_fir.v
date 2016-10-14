module just_fir 
#(parameter 	W1 = 12,
					W2 = 32,
					L=16 )
(input clk,
input reset,
input signed [W1-1:0] x_in,
output reg signed [W2-1:0] y_out);

//reg and wire declarations:
reg signed  [W1-1:0] x [0:L-1];
reg  signed [15:0] f [0:L-1];

reg signed [W2-1:0] p [0:L-1];

wire signed [W2-1:0] y;

initial begin

	x[0] <= 12'd0;
	x[1] <= 12'd0;
	x[2] <= 12'd0;
	x[3] <= 12'd0;
	x[4] <= 12'd0;
	x[5] <= 12'd0;
	x[6] <= 12'd0;
	x[7] <= 12'd0;
	x[8] <= 12'd0;
	x[9] <= 12'd0;
	x[10] <= 12'd0;
	x[11] <= 12'd0;
	x[12] <= 12'd0;
	x[13] <= 12'd0;
	x[14] <= 12'd0;
	x[15] <= 12'd0;

	f[0]	<=		16'sd32767	;
	f[1]	<=		16'sd26856	;
	f[2]	<=		16'sd21895		;
	f[3]	<=		16'sd18012	;
	f[4]	<=		16'sd14697	;
	f[5]	<=		16'sd11988	;
	f[6]	<=		16'sd9779	;
	f[7]	<=		16'sd7969	;
	f[8]	<=		16'sd6511	;
	f[9]	<=		16'sd5252	;
	f[10]	<=		16'sd4196	;
	f[11]	<=		16'sd3378	;
	f[12]	<=		16'sd2797	;
	f[13]	<=		16'sd2311	;
	f[14]	<=		16'sd1805	;
	f[15]	<=		16'sd1527	;

//	f[0]	<=		16'sd0	;
//	f[1]	<=		16'sd0	;
//	f[2]	<=		16'sd0		;
//	f[3]	<=		16'sd0	;
//	f[4]	<=		16'sd0	;
//	f[5]	<=		16'sd0	;
//	f[6]	<=		16'sd0	;
//	f[7]	<=		16'sd0	;
//	f[8]	<=		16'sd0	;
//	f[9]	<=		16'sd32767	;
//	f[10]	<=		16'sd0	;
//	f[11]	<=		16'sd0	;
//	f[12]	<=		16'sd0	;
//	f[13]	<=		16'sd0	;
//	f[14]	<=		16'sd0	;
//	f[15]	<=		16'sd0	;
	
end

always @(posedge clk) 
begin

	x[0] <= x_in;
	x[1] <= x[0];
	x[2] <= x[1];
	x[3] <= x[2];
	x[4] <= x[3];
	x[5] <= x[4];
	x[6] <= x[5];
	x[7] <= x[6];
	x[8] <= x[7];
	x[9] <= x[8];
	x[10] <= x[9];
	x[11] <= x[10];
	x[12] <= x[11];
	x[13] <= x[12];
	x[14] <= x[13];
	x[15] <= x[14];

//f[0] <= f[0] + xemu [0][32:17];   ///does this divide by 2?
//f[1] <= f[1] + xemu [1][32:17];
//f[2] <= f[2] + xemu [2][32:17];
//f[3] <= f[3] + xemu [3][32:17];
//f[4] <= f[4] + xemu [4][32:17];
//f[5] <= f[5] + xemu [5][32:17];
//f[6] <= f[6] + xemu [6][32:17];
//f[7] <= f[7] + xemu [7][32:17];
//f[8] <= f[8] + xemu [8][32:17];
//f[9] <= f[9] + xemu [9][32:17];
//f[10] <= f[10] + xemu [10][32:17];
//f[11] <= f[11] + xemu [11][32:17];
//f[12] <= f[12] + xemu [12][32:17];
//f[13] <= f[13] + xemu [13][32:17];
//f[14] <= f[14] + xemu [14][32:17];
//f[15] <= f[15] + xemu [15][32:17];

y_out <= y;

end

always @(*) begin
integer i;
for (i=0; i<L; i=i+1) p[i] <= x[i] * f[i];
end

assign  y = p[0] + p[1] + p[2] + p[3] +p[4]+ p[5] + p[6] + p[7] + p[8] + p[9] + p[10] + p[11] + p[12] + p[13] + p[14] + p[15] ;

//assign e = d - (y >>> 21);
//
//assign emu  = e >>> 3; // to make delta/mu = 0.0625

//always @(*) begin
//integer i;
//for (i=0; i<L ; i = i+1) xemu[i] <= emu * x[i];
//end

//converting to 12 bits

//assign e_out = e;

endmodule
