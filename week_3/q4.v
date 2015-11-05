module q4(a, b, c, f);
input a, b, c;
output f;   
and(f1, b, c);
and(f2, a, c);
and(f3, a, b);
or(f, f1, f2, f3);
endmodule


