module adaptive_fir 
#(parameter 	W1 = 12,
					W2 = 32,
					L=16 )
(input clk,
input reset,
input signed [11:0] x_in,
input signed [13:0] d_in,
input [7:0] mu_in,
output reg signed [42:0] y_out,
output reg signed [30:0] e_out,
output reg signed [42:0] emu_out
);

//regs and wire declarations:
reg signed [11:0] x [0:L-1];
reg signed [15:0] f [0:L-1];
reg signed [13:0] d ;
reg signed [27:0] p [0:L-1];
wire signed [30:0] emu;
reg signed [42:0] xemu [0:L-1];
wire signed [42:0] y;
wire signed [30:0] e;

initial begin
	d <= 14'd0;
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

	f[0] <= 16'd0;
	f[1] <= 16'd0;
	f[2] <= 16'd0;
	f[3] <= 16'd0;
	f[4] <= 16'd0;
	f[5] <= 16'd0;
	f[6] <= 16'd0;
	f[7] <= 16'd0;
	f[8] <= 16'd0;
	f[9] <= 16'd0;
	f[10] <= 16'd0;
	f[11] <= 16'd0;
	f[12] <= 16'd0;
	f[13] <= 16'd0;
	f[14] <= 16'd0;
	f[15] <= 16'd0;
	
end

always @(posedge clk)
begin
	d <= d_in;
	
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

f[0] <= f[0] + {xemu [0][42],xemu [0][24:10]};
f[1] <= f[1] + {xemu [1][42],xemu [1][24:10]};
f[2] <= f[2] + {xemu [2][42],xemu [2][24:10]};
f[3] <= f[3] + {xemu [3][42],xemu [3][24:10]};
f[4] <= f[4] + {xemu [4][42],xemu [4][24:10]};
f[5] <= f[5] + {xemu [5][42],xemu [5][24:10]};
f[6] <= f[6] + {xemu [6][42],xemu [6][24:10]};
f[7] <= f[7] + {xemu [7][42],xemu [7][24:10]};
f[8] <= f[8] + {xemu [8][42],xemu [8][24:10]};
f[9] <= f[9] + {xemu [9][42],xemu [9][24:10]};
f[10] <= f[10] + {xemu [10][42],xemu [10][24:10]};
f[11] <= f[11] + {xemu [11][42],xemu [11][24:10]};
f[12] <= f[12] + {xemu [12][42],xemu [12][24:10]};
f[13] <= f[13] + {xemu [13][42],xemu [13][24:10]};
f[14] <= f[14] + {xemu [14][42],xemu [14][24:10]};
f[15] <= f[15] + {xemu [15][42],xemu [15][24:10]};

y_out <= y;
e_out <= e;
emu_out <= d;
end

always @(*) begin
integer i;
for (i=0; i<L; i=i+1) p[i] <= x[i] * f[i];
end

assign  y = p[0] + p[1]+ p[2] + p[3] +p[4]+ p[5] + p[6] + p[7] + p[8] + p[9] + p[10] + p[11] + p[12] + p[13] + p[14] + p[15] ;

assign e = (d-(y>>>12));

assign emu  = (e>>>mu_in);  //Delta control

always @(*) begin
integer i;
for (i=0; i<L ; i = i+1) xemu[i] <= emu * x[i];
end

endmodule
