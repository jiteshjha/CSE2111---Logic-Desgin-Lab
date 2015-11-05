module q3(A,B,C,D,f);
input A, B, C, D;
output f;  
not(nC, C);
not(nA, A);
not(nD, D);
or(f1, B, D);
or(f2, nA, B);
or(f3, A, nC, nD);
or(f4, nA, C, nD);
and(f, f1, f2, f3, f4);
endmodule


