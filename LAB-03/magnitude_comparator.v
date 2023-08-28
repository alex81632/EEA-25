module magnitude_comparator (
	input [3:0] a, b,
	
	output aeqb, agtb, altb
);
	wire x0 , x1 , x2 , x3;
	wire g0 , g1 , g2 , g3;
	wire l0 , l1 , l2 , l3;

	assign x3 = ~( a[3] ^ b[3]);
	assign x2 = ~( a[2] ^ b[2]);
	assign x1 = ~( a[1] ^ b[1]);
	assign x0 = ~( a[0] ^ b[0]);

	assign aeqb = x3 & x2 & x1 & x0;

	assign g3 = a[3] & ~(b[3]);
	assign g2 = a[2] & ~(b[2]);
	assign g1 = a[1] & ~(b[1]);
	assign g0 = a[0] & ~(b[0]);
	
	assign agtb = g3 | (x3 & g2) | (x3 & x2 & g1) | (x3 & x2 & x1 & g0);
	
	assign altb = ~(aeqb | agtb);
endmodule
