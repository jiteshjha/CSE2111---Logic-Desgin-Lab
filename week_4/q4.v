module q4(x1, x2, x3, x4, f);
input x1, x2, x3, x4;
output f;
not(nx1, x1);
not(nx2, x2);
not(nx3, x3);
not(nx4, x4);
and(g, nx3, nx4);
or(h, nx1, nx2);
not(ng, g);
not(nh, h);
and(f1, h, g);
and(f2, nh, ng);
or(f, f1, f2);
endmodule
