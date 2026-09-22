`timescale 1ns/1ps
module tb_add_sub;
    reg a_in,b_in;
    wire sum,carry,diff,borrow;

half_adder ha(
    .A(a_in),
    .B(b_in),
    .S(sum),
    .C(carry));

half_subtractor hs(
    .A(a_in),
    .B(b_in),
    .D(diff),
    .Br(borrow));

initial
begin
    a_in = 0; b_in = 0;
    #10 
    a_in = 0; b_in = 1;
    #10 
    a_in = 1; b_in = 0;
    #10 
    a_in = 1; b_in = 1;
    #10 
$finish;
end
endmodule