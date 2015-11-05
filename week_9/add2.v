module add2(a,b,c,f,en);
input a,b,c,en;
output f;
wire [0:7]w;
wire [2:0]x;
assign x[0]=c;
assign x[1]=b;
assign x[2]=a;
dec3to8 s0(x[2:0],w[0:7],en);
nand(f,w[1],w[2],w[3],w[5],w[6]);
endmodule

module dec3to8(w,y,en);
input [2:0]w;
input en;
output [0:7]y;
reg [0:7]y;
always @(w or en)
  	case({en,w})
 	4'b1000: y=8'b01111111;
   	4'b1001: y=8'b10111111;
	4'b1010: y=8'b11011111;
	4'b1011: y=8'b11101111;
	4'b1100: y=8'b11110111;
	4'b1101: y=8'b11111011;
	4'b1110: y=8'b11111101;
	4'b1111: y=8'b11111110;
	default : y=8'b00000000;
	endcase
endmodule



