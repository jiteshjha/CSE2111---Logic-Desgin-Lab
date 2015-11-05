module q1(D, Clock, Reset, Q);
input D, Clock, Reset;
output Q;
reg Q;
always @(negedge Clock or posedge Reset)
	begin
		if(Reset)
			Q <= 0;
		else
			Q <= D;
	end
endmodule
