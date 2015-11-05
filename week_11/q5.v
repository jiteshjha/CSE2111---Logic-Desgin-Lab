module q5(w, d, clk);
input w, clk;
output [3: 0]d;
reg [3: 0]d;
df1 stage0(d[1], d[0], clk);
df1 stage1(d[2], d[1], clk);
df1 stage2(d[3], d[2], clk);
df1 stage3(w, d[3], clk);
endmodule

module df1(D, Q, Clock);
input D, Clock;
output Q;
reg Q;
always @(posedge Clock)
	Q <= D;
endmodule
