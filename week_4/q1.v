module q1(A, B, D, f);
input A, B, D;
output f;
nor(nA, A, A);
nor(nB, B, B);
nor(nD, D, D);
nor(f1, nB, D);
nor(f2, nA, nD);
nor(f, f1, f2);
endmodule

