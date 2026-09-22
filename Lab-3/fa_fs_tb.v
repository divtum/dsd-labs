`timescale 1ns/1ps
module tb_fa_fs;
    reg a,b,cin_bin;
    wire sum,carry,diff,bout;
    full_adder fa(.a(a), .b(b), .cin(cin_bin), .sum(sum), .cout(carry));
    full_subtractor fs(.a(a), .b(b), .bin(cin_bin), .diff(diff), .bout(bout));

initial
begin
    a = 0; b = 0; cin_bin = 0;
    #10 
    a = 0; b = 0; cin_bin = 1;
    #10 
    a = 0; b = 1; cin_bin = 0;
    #10 
    a = 0; b = 1; cin_bin = 1;
    #10 
    a = 1; b = 0; cin_bin = 0;
    #10 
    a = 1; b = 0; cin_bin = 1;
    #10 
    a = 1; b = 1; cin_bin = 0;
    #10 
    a = 1; b = 1; cin_bin = 1;
    #10 
$finish;
end
endmodule