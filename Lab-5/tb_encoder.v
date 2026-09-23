'timescale 1ns/1ps 
module tb_encoder;
    reg[3:0] enc_in; 
    wire[1:0] enc_out; 
    wire enc_valid;

    priority_encoder42 enc(.d(enc_in), .y(enc_out), .valid(enc_valid));

    initial begin
        enc_in = 4'b0000;
        #10 enc_in = 4'b0001;
        #10 enc_in = 4'b0010;
        #10 enc_in = 4'b0100;
        #10 enc_in = 4'b1000;
        #10 enc_ in = 4'b0110;
        #10 enc_in = 4'b1101;
        #10 enc_in = 4'b1111;
        #10 $finish;
    end
endmodule