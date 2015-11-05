module q4(bcd, ex3);
input [3: 0]bcd;
output [3: 0]ex3;
reg [3: 0]ex3;
always @ (ex3)
	begin
		assign ex3 = bcd + 3;
	end
endmodule
