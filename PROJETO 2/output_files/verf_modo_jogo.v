module verf_modo_jogo(A, B, out0, out1);
	input A, B;
	output out0, out1;
	
	wire A_not, B_not;
	
	not (A_not, A);
	not (B_not, B);
	
	and And1 (out0, A_not, B);
	and And2 (out1, A, B_not);
	
	

endmodule 