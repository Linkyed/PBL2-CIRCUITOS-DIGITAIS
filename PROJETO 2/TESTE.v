module TESTE(B, clk, rstn, out0, out1, out2);
	input clk, rstn, B; 
	output out0, out1, out2;
	
	wire 	T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
		T0_not, T1_not, T2_not, T3_not, T4_not, T5_not, T6_not, T7_not, T8_not, T9_not, T10_not, T11_not, T12_not, T13_not, T14_not, T15_not;

	d_ff d0 ( .d(B), // SAIDA 25MHZ
		.rstn(rstn),
		.clk(clk),
		.q(T0)
	);
	
	not (T0_not, T0);
	
	d_ff d1 ( .d(T0), //SAIDA 12,5MHZ
		.rstn(rstn),
		.clk(clk),
		.q(T1)
	);
	
	not (T1_not, T1);
	
	d_ff d2 ( .d(T1), //SAIDA 6,25MHZ
		.rstn(rstn),
		.clk(clk),
		.q(T2)
	);
	
	not (T2_not, T2);
	
	and (T3, T0 ,T1);
	and (out0, T2, T3);

endmodule
