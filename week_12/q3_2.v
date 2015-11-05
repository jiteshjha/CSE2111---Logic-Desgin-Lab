module q3_2(clock, q);
input clock;
output [3: 0]q;
tff1 stage0(1, clock, q[0]);
wire temp1, temp2, temp3;
assign temp1 = 1 & q[0];
tff1 stage1(temp1, clock, q[1]);
assign temp2 = temp1 & q[1];
tff1 stage2(temp2, clock, q[2]);
assign temp3 = temp2 & q[2];
tff1 stage3(temp3, clock, q[3]);
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
