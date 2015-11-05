module q1(w, en, y);
input [2: 0]w;
input en;
output [0: 7]y;
reg [0: 7]y;
always @(en or w)
	case({en, w})
	4'b1000 : y = 8'b01111111;
	4'b1001 : y = 8'b10111111;
	4'b1010 : y = 8'b11011111;
	4'b1011 : y = 8'b11101111;
	4'b1100 : y = 8'b11110111;
	4'b1101 : y = 8'b11111011;
	4'b1110 : y = 8'b11111101;
	4'b1111 : y = 8'b11111110;
	default : y = 8'b11111111;
	endcase
endmodule
