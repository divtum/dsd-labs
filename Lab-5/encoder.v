`timescale 1ns/1ps
module priority_encoder42(input [3:0] d, output reg [1:0] y, output reg valid);
    always @(*)
    begin
            if (d[3]) begin
            y = 2'b11;
            valid = 1'b1;
            end else
            if (d[2]) begin
            y = 2'b10;
            valid = 1'b1;
            end
            else if (d[1]) begin
            y = 2'b01;
            valid = 1'b1;
            end
            else if (d[0]) begin
            y = 2'b00;
            valid = 1'b1;
            end else begin
            y = 2 b00;
            valid = 1'b0;
            end
    end
endmodule