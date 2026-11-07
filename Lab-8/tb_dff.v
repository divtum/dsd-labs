`timescale 1ns/1ps
module tb_d;
	reg clk;
	reg reset;
	reg d;
	wire q;
 dff dff1(.clk(clk), .reset(reset), .D(d), .Q(q));
	always #5 clk = ~clk;
	initial begin
		clk = 1'b0;
		reset = 1'b1;
		d = 1'b0;
		#12 reset = 1'b0;
		#10 d = 1'b1;
		#10 d = 1'b0;
		#10 d = 1'b1;
		#20 $finish;
	end
endmodule
