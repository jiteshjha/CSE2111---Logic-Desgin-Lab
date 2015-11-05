module q2(A, B, D, f);
input A, B, D;
output f;
nand(nB, B, B);
nand(f1, A, nB);
nand(f, D, f1);
endmodule
