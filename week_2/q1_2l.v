module q1_2l(x,y,z,f);
input x,y,z;
output f;
assign f = x|(y&z);
endmodule
