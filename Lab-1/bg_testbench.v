`timescale 1ns/1ps
module tb_basic_gates;
reg a,b;
wire out_and,out_or,out_not,out_nand,out_nor,out_xor,out_xnor;

basic_gates uut (
    .a(a),
    .b(b),
    .out_and(out_and),
    .out_or(out_or),
    .out_not(out_not),
    .out_nand(out_nand),
    .out_nor(out_nor),
    .out_xor(out_xor),
    .out_xnor(out_xnor)
);

initial begin
a = 0; b = 0;
#10; 
a = 0; b = 1;
#10;
a = 1; b = 0;
#10;
a = 1; b = 1;
#10;
$finish;
end
endmodule