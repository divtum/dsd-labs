`timescale 1ns/1ps
module tff(input clk,reset,T, output reg Q);
always @(posedge clk or reset) 
	begin
	if (reset)
	Q <= 1'b0;
	else if (T)
	Q <= ~Q;
	else
	Q <= Q;
end
endmodule

