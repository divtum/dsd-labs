`timescale 1ns/1ps
module comparator_tb;
reg[3:0] A,B;
wire A_gt_B,A_lt_B,A_eq_B;
comparator dut(.A(A), .B(B), .A_gt_B(A_gt_B), .A_lt_B(A_lt_B), .A_eq_B(A_eq_B));
initial
begin
	A = 4'b0010; B = 4'b0001;
	#10 A = 4'b0000; B = 4'b1000;
	#10 A = 4'b0000; B = 4'b0101;
	#10 A = 4'b0100; B = 4'b0000;
	#10 A = 4'b0100; B = 4'b1000;
	#10 A = 4'b0001; B = 4'b0100;
	#10 $finish;
end
endmodule

