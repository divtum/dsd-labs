`timescale 1ns/1ps
module half_adder(input A,B, output S,C);
    assign S = A ^ B;
    assign C = A & B;
endmodule

module full_adder(input a,b,cin, output sum,cout);
    wire w_sum1,w_c1,w_c2;
    half_adder HA1(.A(a), .B(b), .S(w_sum1), .C(w_c1));
    half_adder HA2(.A(w_sum1), .B(cin), .S(sum), .C(w_c2));
    or G1(cout, w_c1, w_c2);
endmodule