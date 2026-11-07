`timescale 1ns/1ps
module tb_t;
	reg clk;
	reg reset;
	reg t;
	wire q;
 tff tff1(.clk(clk), .reset(reset), .T(t), .Q(q));
always #5 clk = ~clk;
initial begin
	clk = 1'b0;
	reset = 1'b1;
	t = 1'b0;
	#12 reset = 1'b0;
	#10 t = 1'b0;
	#10 t = 1'b1;
	#10 t = 1'b1;
	#20 $finish;
end
endmodule

