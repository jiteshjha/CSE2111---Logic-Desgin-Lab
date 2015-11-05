module q2_2(a,b,c,f);
input a,b,c;
output f;
nand(f1,a,b);
nand(f2,a,c);
nand(f3,b,c);
nand(f,f1,f2,f3);
endmodule
