`timescale 1ns/1ps
module fa(A,B,C,sum,carry);
input A,B,C;
output sum,carry;
assign sum=A^B^C;
assign carry=(A&B)|(B&C)|(C&A);
endmodule
module add_sub(input[3:0] A, input[3:0] B, input CTRL, output [3:0] S, output Cout);
wire W0,W1,W2,W3,C0,C1,C2;
xor g1(W0,B[0],CTRL);
xor g2(W1,B[1],CTRL);
xor g3(W2,B[2],CTRL);
xor g4(W3,B[3],CTRL);
fa g5(A[0],W0,CTRL,S[0],C0);
fa g6(A[1],W1,C0,S[1],C1);
fa g7(A[2],W2,C1,S[2],C2);
fa g8(A[3],W3,C2,S[3],Cout);
endmodule
