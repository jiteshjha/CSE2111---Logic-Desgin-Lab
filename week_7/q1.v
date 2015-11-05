module q1(b, g);
input [3: 0]b;
output [3: 0]g;
wire [7: 0]m0, m1, m2;
assign m0 = 8'b01100110;
assign m1 = 8'b00111100;
assign m2 = 8'b11110000;
mux8 stage0(m0[7: 0], g[0], b[2: 0]);
mux8 stage1(m1[7: 0], g[1], b[2: 0]);
mux8 stage2(m2[7: 0], k, b[2: 0]);
assign g[2] = k ^ b[3];
assign g[3] = b[3];
endmodule

module mux8(w,f,s);
input [7: 0]w;
input [2: 0]s;
output f;
reg f;
always@ (s or w)
begin
case(s)
	0:f=w[0];
	1:f=w[1];
	2:f=w[2];
	3:f=w[3];
	4:f=w[4];
	5:f=w[5];
	6:f=w[6];
	7:f=w[7];
endcase
end
endmodule 
