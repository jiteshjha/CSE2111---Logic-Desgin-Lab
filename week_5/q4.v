module q4(a0, b0, a1, b1, s0, s1, s2, cout);
input a0, b0, a1, b1;
output s0, s1, s2, cout;
and(s0, a0, b0);
and(f1, a0, b1);
and(f2, a1, b0);
halfadd stage0(f1, f2, s1, c);
and(f3, a1, b1);
halfadd stage1(f3, c, s2, cout);
endmodule

module halfadd(x, y, s, co);
input x, y;
output s, co;
xor(s, x, y);
and(co, x, y);
endmodule
