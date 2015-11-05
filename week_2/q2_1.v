module q2_1(a,b,c,y);
input a,b,c;
output y;
and(f1,a,b);
and(f2,a,c);
and(f3,b,c);
or(y,f1,f2,f3);
endmodule
