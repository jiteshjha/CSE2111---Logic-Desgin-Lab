module q3_2(x,y,z,f);
input x,y,z;
output f;
nand(y1,y,y);
nand(z1,z,z);
nand(f1,x,z1);
nand(f,f1,y1);
endmodule
