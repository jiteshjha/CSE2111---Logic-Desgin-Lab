module q2(T, Clock, Reset, Q);
input T, Clock, Reset;
output Q;
reg Q;
always @(negedge Clock)
	begin
		if(Reset)
			Q <= 0;
		else if(T == 0)
			Q <= Q;
		else if(T == 1)
			Q <= ~Q;
	end
endmodule
