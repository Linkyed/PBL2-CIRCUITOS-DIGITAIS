module sinalizar_acerto_erro(A, B, out0, out1);
	input A, B;
	output out0, out1;
	
	wire A_inv;
	
	not (A_inv, A);
		
		
	and And36 (out0, A, B);
	and And37(out1, A_inv, B);

endmodule 