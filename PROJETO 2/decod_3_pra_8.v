module decod_3_pra_8(A, B, C, out);
	input A, B, C;
	output [7:0] out;
	
	wire A_not, B_not, C_not;
	
	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	and And0 (out[0], A_not, B_not, C_not);
	and And1 (out[1], A_not, B_not, C);
	and And2 (out[2], A_not, B, C_not);
	and And3 (out[3], A_not, B, C);
	and And4 (out[4], A, B_not, C_not);
	and And5 (out[5], A, B_not, C);
	and And6 (out[6], A, B, C_not);
	and And7 (out[7], A, B, C);
	
	

endmodule 