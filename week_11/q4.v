module q4(w, Clk, Res, y);
input [7: 0]w;
input Clk, Res;
output [7: 0]y;
reg [7: 0]y;
dff1 stage0(w[0], Clk, Res, y[0]);
dff1 stage1(w[1], Clk, Res, y[1]);
dff1 stage2(w[2], Clk, Res, y[2]);
dff1 stage3(w[3], Clk, Res, y[3]);
dff1 stage4(w[4], Clk, Res, y[4]);
dff1 stage5(w[5], Clk, Res, y[5]);
dff1 stage6(w[6], Clk, Res, y[6]);
dff1 stage7(w[7], Clk, Res, y[7]);
endmodule

module dff1(D, Clock, Reset, Q);
input D, Clock, Reset;
output Q;
reg Q;
always @(posedge Clock)
	begin
		if(Reset)
			Q <= 0;
		else
			Q <= D;
	end
endmodule
