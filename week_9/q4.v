module q4(x, s, f);
input [3: 0]x;
input [1: 0]s;
output f;

wire [0: 3]Y;
wire [0: 3]F;

dec2to4 level(s, 1, Y);
assign F[0] = Y[0] & x[0];
assign F[1] = Y[1] & x[1];
assign F[2] = Y[2] & x[2];
assign F[3] = Y[3] & x[3];
assign f = F[0] | F[1] | F[2] | F[3];
endmodule



module dec2to4(w, en, y);
input [1: 0]w;
input en;
output [0: 3]y;
reg [0: 3]y;
always @(en or w)
	case({en, w})
	3'b100 : y = 4'b1000;
	3'b101 : y = 4'b0100;
	3'b110 : y = 4'b0010;
	3'b111 : y = 4'b0001;
	default : y = 4'b0000;
	endcase
endmodule

