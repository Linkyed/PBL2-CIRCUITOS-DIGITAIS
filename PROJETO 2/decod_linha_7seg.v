module decod_linha_7seg (A, B, C, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g);
	input A, B, C;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	
	wire A_not, B_not, C_not,
	
	T0, T1, T2, T3, T4, T5;
	
	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	//saida S0 do decodificador
	and And0 (T0, A_not, B_not, C_not);
	and And1 (T1, B, C);
	or Or0 (seg_a, T0, T1);
	
	//saida S1 do decodificador
	and And2 (T2, A, B_not);
	and And3 (T3, A, C);
	or Or1 (seg_b, T3, T2);
	
	//saida S2 do decodificador
	and And4 (T4, A_not, B_not, C);
	and And5 (T5, A, B, C);
	or Or2 (seg_c, T4, T5);
	
	//saida S3 do decodificador
	and And6 (T6, A, B);
	or Or3 (seg_d, T0, T1, T6);
	
	//saida S4 do decodificador
	or Or4 (seg_e, C_not, B);
	
	//saida S5 do decodificador
	and And7 (T7, A_not, B_not);
	and And8 (T8, A_not, C_not);
	or Or5 (seg_f, T6, T7, T8);
	
	//saida S6 do decodificador
	or Or6 (seg_g, T0, T6);
	
	

endmodule 