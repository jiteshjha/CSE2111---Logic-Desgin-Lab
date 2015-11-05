module q3(s, w, f);
input [3 :0]w;
input [1: 0]s;
output f;
reg f;
always @(s or w)
	begin
		if(s == 0)
				f = w[0];
			
		else if(s == 1)
			
				f = w[1];
			
		else if(s == 2)
			
				f = w[2];
			
		else
			
				f = w[3];
			
	end
endmodule
