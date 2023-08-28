module magnitude_comparator2 (
	input [3:0] a, b,
	
	output aeqb, agtb, altb
);

	assign aeqb = (a == b) ? 1'b1 : 1'b0;
	assign agtb = (a > b)  ? 1'b1 : 1'b0;
	assign altb = (a < b)  ? 1'b1 : 1'b0;
endmodule
