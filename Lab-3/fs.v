`timescale 1ns/1ps
module half_subtractor(input A,B, output D,Br);
    assign D = A ^ B;
    assign Br = ~A & B;
endmodule

module full_subtractor(input a,b,bin, output diff,bout);
    wire w_diff1,w_b1,w_b2;
    half_subtractor HS1(.A(a), .B(b), .D(w_diff1), .Br(w_b1));
    half_subtractor HS2(.A(w_diff1), .B(bin), .D(diff), .Br(w_b2));
    or G1 (bout, w_b1, w_b2);
endmodule