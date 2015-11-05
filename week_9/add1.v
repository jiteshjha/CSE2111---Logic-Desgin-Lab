module add1(a,b,c,f1,f2,f3,en);
input a,b,c,en;
output f1,f2,f3;
wire [0:7]w;
wire [2:0]x;
assign x[0]=c;
assign x[1]=b;
assign x[2]=a;
dec3to8 s0(x[2:0],w[0:7],en);
or(f1,w[2],w[4],w[7]);
or(f2,w[0],w[3]);
or(f3,w[0],w[2],w[3],w[4],w[7]);
endmodule

module dec3to8(w,y,en);
input [2:0]w;
input en;
output [0:7]y;
reg [0:7]y;
always @(w or en)
  	case({en,w})
 	4'b1000: y=8'b10000000;
   	4'b1001: y=8'b01000000;
	4'b1010: y=8'b00100000;
	4'b1011: y=8'b00010000;
	4'b1100: y=8'b00001000;
	4'b1101: y=8'b00000100;
	4'b1110: y=8'b00000010;
	4'b1111: y=8'b00000001;
	default : y=8'b00000000;
  endcase
endmodule


