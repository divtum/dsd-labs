`timescale 1ns/1ps
module tb_mux_demux;
    reg [3:0] in;
    reg [1:0] sel;
    reg din;
    wire mux_out;
    wire [3:0] demux_out;
    mux41 mux(.D(in), .S(sel), .Y(mux_out));
    demux14 demux(.D(din), .S(sel), .Y(demux_out));
    initial
        begin
        in = 4'b1010;
        din = 1'b1;
        sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 din = 1'b0;
            in = 4'b1100;
            sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 $finish;
    end
endmodule