module mux2to1(w1, f1, s1);
input [1: 0]w1;
input s1;
output f1;
reg f1;
always @ (s1 or w1)
	begin
		if(s1 == 0)
			f1 = w1[0];
		else 
			f1 = w1[1];
	end
endmodule

module q_lab7_add2(w, f);
input [2: 0]w;
output f;
wire [1: 0]x;
assign x[0] = ~w[2] | w[1];
assign x[1] = ~w[2] & w[1];

mux2to1 stage0(x[1: 0], f, w[0]);
endmodule
