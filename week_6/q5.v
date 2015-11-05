module q5(s ,w ,f);
input [2:0]s;
input [7:0]w;
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
		else if(s == 3)
				f = w[3];
		else if(s == 4)
				f = w[4];
		else if(s == 5)
				f = w[5];
		else if(s == 6)
				f = w[6];
		else
				f = w[7];
			end
endmodule
