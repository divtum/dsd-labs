`timescale 1ns/1ps
module half_subtractor(input A,B, output D,Br);
    assign D = A ^ B;
    assign Br = ~A & B;
endmodule