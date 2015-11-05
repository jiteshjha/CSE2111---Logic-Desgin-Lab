module q3_1(clock, q);
input clock;
output [3: 0]q;
tff1 stage0(1, clock, q[0]);
tff1 stage1(1, q[0], q[1]);
tff1 stage2(1, q[1], q[2]);
tff1 stage3(1, q[2], q[3]);
endmodule



module tff1(T, Clock, Q);
input T, Clock;
output Q;
reg Q;
always @(negedge Clock)
	begin
		if(!T)
			Q <= Q;
		else
			Q <= ~Q;
	end
endmodule
