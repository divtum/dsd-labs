`timescale 1ns/1ps

module tb_decoder;
reg[2:0] dec_in; 
wire[7:0] dec_out;

decoder38 dec111(.in(dec_in),. y(dec_out));

initial begin
    dec_in = 3'b000;
    #10 dec_in = 3'b001;
    #10 dec_in = 3'b010;
    #10 dec_in = 3'b011;
    #10 dec_in = 3'b100;
    #10 dec_in = 3'b101;
    #10 dec_in = 3'b110;
    #10 dec_in = 3'b111;
    #10 $finish;
end 
endmodule