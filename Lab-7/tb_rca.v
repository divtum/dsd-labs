`timescale 1ns/1ps
module tb_add_sub;
reg [3:0] A,B;
reg CTRL;
wire [3:0] S;
wire Cout;
add_sub dut(A,B,CTRL,S,Cout);
initial 
begin
 A=4'b0100; B=4'b1001; CTRL=1;
#10 A=4'b1001; B=4'b0100; CTRL=1;
#10 A=4'b1111; B=4'b1111; CTRL=0;
#10 A=4'b1111; B=4'b1111; CTRL=1;
#10 A=4'b1010; B=4'b1111; CTRL=0;
#10 A=4'b1110; B=4'b0110; CTRL=1;
#10 $finish; 
end
endmodule

