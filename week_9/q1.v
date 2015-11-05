module q1(w, en, f);
input [2: 0]w;
input en;
output f;
wire [0: 7]Y;
dec3to8 level(w, en, Y);
assign f = Y[0] | Y[2] | Y[3] | Y[4] | Y[5] | Y[7];
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

