module q1_1l(x,y,z,f);
input x,y,z;
output f;
or(f1,y,z);
and(f,f1,x);
endmodule


