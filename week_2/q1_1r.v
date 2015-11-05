module q1_1r(x,y,z,f);
input x,y,z;
output f;
assign f = (x&y)|(x&z);
endmodule
