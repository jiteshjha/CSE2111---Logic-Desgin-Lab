module extraq2(x1,x2,x3,x4,f2);
	input x1,x2,x3,x4;
	output f2;
	assign f2=(x1|x3)&(x1&x2&x4)&(x2|x3|x4);
endmodule
