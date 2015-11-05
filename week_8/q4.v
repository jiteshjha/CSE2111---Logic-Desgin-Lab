module q4(w1, en1, y1);
input [3: 0]w1;
input en1;
output [0: 15]y1;
and(e2, ~w1[3], en1);
and(e3, w1[3], en1);
dec3to8 stage0(w1[2: 0], e2, y1[0: 7]);
dec3to8 stage1(w1[2: 0], e3, y1[8: 15]);
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

