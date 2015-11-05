module q3_1(x,y,z,g);
input x,y,z;
output g;
nor(f1,x,y);
not(z1,z);
nor(f2,z1,y);
nor(g,f1,f2);
endmodule
