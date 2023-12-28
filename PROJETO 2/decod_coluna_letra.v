module decod_coluna_letra(A, B, C, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g);
	input A, B, C;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f,seg_g;
	
	wire A_not, B_not, C_not,
	T0, T1, T2, T3, T4;
	
	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	
	
	//saida S0 do decodificador
	and And0 (T0, A, B);
	or Or0 (seg_a, T0, C);
	
	//saida S1 do decodificador
	and And1 (T1, B_not, C);
	and And2 (T2, B, C_not);
	or Or1 (seg_b, T1, T2, A);
	
	//saida S2 do decodificador
	or Or2 (seg_c, T2, A);
	
	//saida S3 do decodificador
	and And3 (T3, A_not, B_not, C_not);
	and And4 (T4, A, C);
	or Or3 (seg_d, T3, T4, T0);
	
	//saida S4 do decodificador
	or Or4 (seg_e, T4, T0);
	
	// saida S5
	and And5 (T5, B, C);
	or Or5 (seg_f, T5, T4, T0);
	
	//saida S6
	or Or6 (seg_g, T2, T4);
	
	

endmodule 