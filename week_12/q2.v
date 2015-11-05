module q2(q,clk,clr);
  input clk,clr;
  output [3:0]q;
  reg [3:0]q;
  
				dff1 stage0((~q[0]), clk, clr, q[3]);
				dff1 stage1(q[3], clk, clr, q[2]);
				dff1 stage2(q[2], clk, clr, q[1]);
				dff1 stage3(q[1], clk, clr, q[0]);
endmodule

module dff1(D, Clock, Reset, Q);
input D, Clock, Reset;
output Q;
reg Q;
always @(posedge Clock)
	begin
		if(!Reset)
			Q <= 0;
		else
			Q <= D;
	end
endmodule
