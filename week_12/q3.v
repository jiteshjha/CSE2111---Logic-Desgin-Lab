module q3(clock, q);
input clock;
output [3: 0]q;
tff1 stage0(1, clock, q);
tff1 stage0(1, clock, q);
tff1 stage0(1, clock, q);
tff1 stage0(1, clock, q);



module tff1(T, Clock, Q);
input T, Clock;
output Q;
reg Q;
always @(posedge Clock)
	begin
		if(T == 0)
			Q <= Q;
		else(T == 1)
			Q <= ~Q;
	end
endmodule
