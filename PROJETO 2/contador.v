//module contador_sin_3bit(clk, rstn, out0, out1, out2);
//	input clk, rstn; 
//	output out0, out1, out2;
//	
//	wire T0, T1, T2;
//	
//	d_ff d0 ( .d(~T0),
//		.rstn(rstn),
//		.clk(clk),
//		.q(T0)
//	);
//	
//	xnor xnor0 (SUP4, T0, T1);
//	
//	d_ff d1 ( .d(SUP4), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(T1)
//	);
//	
//	or or0(SUP5, T1, T0);
//	xnor xnor1(SUP6, SUP5, T2);
//	
//	d_ff d2 ( .d(SUP6), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(T2)
//	);
//	
//	not (out0, T0);
//	not (out1, T1);
//	not (out2, T2);
//
//endmodule