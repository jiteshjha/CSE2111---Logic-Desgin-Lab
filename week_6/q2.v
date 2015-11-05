module mux4to1(w, s, g);
input [3 :0]w;
input [1: 0]s;
output g;
reg g;
always @(w or s)
	begin
		assign g = s == 0 ? w[0] : s == 1 ? w[1] : s == 2 ? w[2] : w[3];
	end
endmodule

module q2(w, s, f);
input [15: 0]w;
input [3: 0]s;
output f;
wire [3: 0]m;
mux4to1 stage0(w[3: 0], s[1: 0], m[0]);
mux4to1 stage1(w[7: 4], s[1: 0], m[1]);
mux4to1 stage2(w[11: 8], s[1: 0], m[2]);
mux4to1 stage3(w[15: 12], s[1: 0], m[3]);
mux4to1 stage4(m[3: 0], s[3: 2], f);
endmodule
		

		

