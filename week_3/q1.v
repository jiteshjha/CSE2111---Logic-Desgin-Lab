module q1(A,B,D,f);
input A, B, D;
output f;
not(nA, A);
not(nB, B);
not(nD, D);
and(f1, nB, nD);
and(f2, nA, B);
and(f3, B, D);
or(f, f1, f2, f3);
endmodule

