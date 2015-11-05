module q3(x, y, ci, en, s, c);
input x, y, ci, en;
output s, c;
wire [2: 0]Y;
wire [0: 7]R;
assign Y[0] = x;
assign Y[1] = y;
assign Y[2] = ci;

dec3to8 level(Y, en, R);
assign c = R[3] | R[7] | R[5] | R[6];
assign s  = R[4] | R[2] | R[7] | R[1];
endmodule


module dec3to8(w, en, y);
input [2: 0]w;
input en;
output [0: 7]y;
reg [0: 7]y;
always @(en or w)
	case({en, w})
	4'b1000 : y = 8'b10000000;
	4'b1001 : y = 8'b01000000;
	4'b1010 : y = 8'b00100000;
	4'b1011 : y = 8'b00010000;
	4'b1100 : y = 8'b00001000;
	4'b1101 : y = 8'b00000100;
	4'b1110 : y = 8'b00000010;
	4'b1111 : y = 8'b00000001;
	default : y = 8'b00000000;
	endcase
endmodule
