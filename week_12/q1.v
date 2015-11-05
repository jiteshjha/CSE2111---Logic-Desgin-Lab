module q1(clk, clr, Q);
input clk, clr;
output [0: 3]Q;
wire [1: 0]w;
upcount stage0(clr, clk, w);
dec2to4 stage1(w, 1, Q);
endmodule


module upcount(clr, clk, q);
input clr, clk;
output [1: 0]q;
reg [1: 0]q;
always @ (posedge clk)
	begin
		if(clr)
			begin
				q <= 0;
			end
		else
			q <= q + 1;
	end
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



