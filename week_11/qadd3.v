module qadd3(c,i,q,clk,a,q);
input [1:0]c;
input a,clk;
input [3:0]i;
output [3:0]q;
reg [3:0]q; 
integer k;
always@(posedge clk)
	begin
		if(c==0)
			q=i;
		else if(c==1)
			begin
				for(k=0;k<3;k=k+1)
					q[k]=i[k];
			end
		else
			begin
				for(k=3;k>0;k=k-1)
					begin
						q[k]=q[k-1];
						q[0]=a;
					end
			end
	end 
endmodule

