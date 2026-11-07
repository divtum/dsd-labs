`timescale 1ns/1ps
module dff(input clk,reset,D, output reg Q);
	always @(posedge clk or reset) 
	begin
		if (reset)
		Q <= 1'b0;
		else
		Q <= D;
	end
endmodule
