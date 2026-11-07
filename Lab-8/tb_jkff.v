`timescale 1ns/1ps
module tb_jk;
	reg clk;
	reg reset;
	reg j,k;
	wire q;
jkff jkff1(.clk(clk), .reset(reset), .J(j), .K(k), .Q(q));
always #5 clk = ~clk;
initial begin
	clk = 1'b0;
	reset = 1'b1;
	j = 1'b0; k = 1'b0;
	#12 reset = 1'b0;
	#10 j = 1'b0; k = 1'b0;
	#10 j = 1'b1; k = 1'b0;
	#10 j = 1'b0; k = 1'b1;
	#10 j = 1'b1; k = 1'b1;
	#10 j = 1'b1; k = 1'b1;
	#20 $finish;
end
endmodule
