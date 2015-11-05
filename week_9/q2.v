module q2(x,y,z,f1,f2,f3,en);
input x,y,z,en;
output f1,f2,f3;

wire [2:0]b;
wire [0:7]w;

assign b[0]=z;
assign b[1]=y;
assign b[2]=x;

dec3_8 s0(en,b[2:0],w[0:7]);
or(f1,w[0],w[7],w[5]);
or(f2,w[4],w[2],w[3]);
or(f3,w[1],w[7],w[6]);

endmodule

module dec3_8(En,w,Y);
input [2:0]w;
input En;
output [0:7]Y;
reg [0:7]Y;
always@(w or En)
	begin
		if(En==0)
			Y=8'b00000000;
		else if(En==1)
			begin
				if(w==0)
					Y=8'b10000000;
				else if(w==1)
					Y=8'b01000000;
				else if(w==2)
					Y=8'b00100000;
				else if(w==3)
					Y=8'b00010000;
				else if(w==4)
					Y=8'b00001000;
				else if(w==5)
					Y=8'b00000100;
				else if(w==6)
					Y=8'b00000010;
				else if(w==7)
					Y=8'b00000001;
			end
		end 
endmodule

