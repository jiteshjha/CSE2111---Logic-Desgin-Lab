module q3(J, K, Clock, Reset, Q);
input J, K, Clock, Reset;
output Q;
reg Q;

always @(posedge Clock or negedge Reset)
	begin
		if(!Reset)
			Q <= 0;
		else if(J == 0 & K == 0)
			Q <= Q;
		else if(J == 0 & K == 1)
			Q <= 0;
		else if(J == 1 & K == 0)
			Q <= 1;
		else 
			Q <= ~Q;
	end
endmodule
		
