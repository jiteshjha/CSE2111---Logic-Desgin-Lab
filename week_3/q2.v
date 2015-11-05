module q2(A,B,C,D,f);
input A, B, C, D;
output f;  
not(nB, B);
not(nC, C);
not(nD, D);
and(f1, A, B, nC, D);
and(f2, C, nD);
and(f3, nB, nD);
or(f, f1, f2, f3);
endmodule

