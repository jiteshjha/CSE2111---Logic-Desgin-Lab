module q1_2r(x,y,z,f);
input x,y,z;
output f;
assign f = (x|y)&(x|z);
endmodule
