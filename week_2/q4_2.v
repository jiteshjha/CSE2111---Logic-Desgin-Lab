module q4_2(x1,x2,x3,g);
input x1, x2, x3;
output g;
not(nx1, x1);
not(nx3, x3);
nand(g1, nx1, x2);
nand(g2, nx3, x1);
nand(g, g1, g2);
endmodule

