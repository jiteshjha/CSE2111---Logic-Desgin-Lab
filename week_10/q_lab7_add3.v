module q_lab7_add3(w, y, sh, k);
input [3: 0]w;
output [3: 0]y;
input sh;
integer i;
output k;
reg k;
reg [3: 0]y;
always @( sh )
	begin
		if(sh == 1)
			begin
				y[3] = 0;
				k = w[0];
				for(i = 0; i < 3; i = i + 1)
					begin
						y[i] = w[i+1];
					end
			end
		else if(sh==0)
			begin
				y=w;
				k=0;
			end
		end
endmodule
