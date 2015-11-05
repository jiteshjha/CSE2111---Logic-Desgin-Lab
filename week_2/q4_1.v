module q4_1(x1,x2,x3,f);
input x1, x2, x3;
output f;
nor(f1, x1, x2);
not(nx1, x1);
not(nx3, x3);
nor(f2, nx1, nx3);
nor(f, f1, f2);
endmodule

