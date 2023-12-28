module decod_mapa(A,B,C,out);
input A,B,C;
output [34:0] out;

	wire A_not, B_not, C_not;

	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	wire F1, F2, F3,F4,F5,F6, F8, F9, F10, F11, F12, 
			F13, F14, F15,F16,F17,F18,F19,F20, F21, F22,
			F23,F24,F25, F26, F27, F28, F29, F30, F31, F32,F33,
			F34, F35, F36,F37, F38, F39, F40, F41, F42, F43, F44, 
			F45, F46, F47, F48, F49, F50, F51, F52, F53, F54, F55, F56;

	
//	//LINHA 1
//	//~A~BC + B~C + A~C
//	//L1-1
//	and And0 (F1,A_not,B_not,C);
//	and And1 (F2,B,C_not);
//	and And2 (F3,A,C_not);
//	or Or0 (out0_inv,F1,F2,F3);
//
//	//B ~C + A
//	//L1-2
//	and And3 (F4,B,C_not);
//	or Or1 (out1_inv,F4,A);
//
//	//A + B + ~C
//	//L1-3
//	or Or2 (out2_inv,A,B,C_not);
//
//	//~A~C + ~BC
//	//L1-4
//	and And4 (F5, A_not, C_not);
//	and And5 (F6, B_not, C);
//	or Or3 (out3_inv, F5, F6);
//
//	//C~B~A
//	//L1-5
//	and And6 (out4_inv, C, A_not, A_not);
//
//	//LINHA 2
//	//L2-1
//	//~A~B + B~C
//	and And7 (F8, A_not, B_not);
//	and And8 (F9, B, C_not);
//	or Or4 (out5_inv, F8, F9);
//	
//	//L2-2
//	//~AC + ~BC + AB~C
//	and And9(F10, A_not, C);
//	and And10(F11, B_not, C);
//	and And11(F12, A,B, C_not);
//	or Or5 (out6_inv, F10,F11,F12);
//	
//	//L2-3
//	//~A + ~B + ~C
//	or Or6(out7_inv, A_not, B_not, C_not);
//	
//	//L2-4
//	//BC + A
//	and And12(F13, B,C);
//	or Or7 (out8_inv, F13, A);
//	
//	//L2-5
//	//~AC + BC + A~B~C
//	and And13(F14, A_not, C);
//	and And14(F15, B, C);
//	and And15(F16, A, B_not, C_not);
//	or Or8 (out9_inv, F14, F15 , F16);
//	
//	//LINHA 3
//	//L3-1
//	//~A + ~C + B
//	or Or9 (out10_inv,A_not, B_not, C_not);
//	
//	//L3-2
//	//~A~B + ~AC + AB
//	and And16(F17, A_not, B_not);
//	and And17(F18, A_not, C);
//	and And18(F19, A,B);
//	or Or10(out11_inv,F17,F18,F19);
//	
//	//L3-3
//	// B + A
//	or Or11(out12_inv, B, A);
//	
//	//L3-4
//	//~C + A~B
//	and And19(F20, A, B_not);
//	or Or12(out13_inv, C_not, F20);
//	
//	//L3-5
//	//~B + C + A
//	or Or13(out14_inv, B_not, C, A);
//	
//	//LINHA 4
//	//L4-1
//	//~A + ~B~C + BC
//	and And20(F21, B_not, C_not);
//	and And21(F22, B,C);
//	or Or14(out15_inv, A_not, F21,F22);
//	
//	//L4-2
//	//~AC + ~AB + A~B + A~C
//	and And22(F23, A_not, C);
//	and And23(F24, A_not, B);
//	and And24(F25, A, B_not);
//	and And25(F26, A, C_not);
//	or Or15(out16_inv, F23, F24, F25, F26);
//	
//	//L4-3
//	//~BC + B~C
//	and And26(F27, B_not, C);
//	and And27(F28, B, C_not);
//	or Or16(out17_inv, F27, F28);
//
//	//L4-4
//	//~B + ~C
//	or Or17(out18_inv, B_not, C_not);
//	
//	//L4-5
//	//~AC + A~B + A~C
//	and And28(F29, A_not, C);
//	and And29(F30, A, B_not);
//	and And30(F31, A, C_not);
//	or Or18(out19_inv, F29,F30, F31);
//	
//	//LINHA 5
//	//L5-1
//	//~A~C + ~AB + AC
//	and And31(F32, A_not, C_not);
//	and And32(F33, A_not, B);
//	and And33(F34, A, C);
//	or Or19(out20_inv,F32,F33, F34);
//	
//	//L5-2
//	//~A~C + BC + A~B
//	and And34(F35, A_not, C_not);
//	and And35(F36, B, C);
//	and And36(F37, A, B_not);
//	or Or20(out21_inv, F35, F36,F37);
//	
//	//L5-3
//	//~A + C + B
//	or Or21(out22_inv, A_not, C, B);
//	
//	//L5-4
//	//~A + C + B
//	or Or22(out23_inv, A_not, C, B);
//	
//	//L5-5
//	//~A + ~B + ~C
//	or Or23(out24_inv, A_not, B_not, C_not);
//	
//	//L6-1
//	//~BC
//	and And37(out25_inv, B_not, C);
//	
//	//L6-2
//	//~BC + B~C + A~B
//	and And38(F38,  B_not, C);
//	and And39(F39, B, C_not);
//	and And40(F40, A, B_not);
//	or Or24(out26_inv, F38,F39,F40);
//	
//	//L6-3
//	//~A~B + ~BC + AB
//	and And41(F41, A_not, B_not);
//	and And42(F42, B_not, C);
//	and And43(F43, A, B);
//	or Or25 (out27_inv, F41, F42, F43);
//	
//	//L6-4
//	//A
//	assign out28_inv = A;
//	
//	//L6-5
//	//~AC + ~AB + A~B~C
//	and And44(F44, A_not, C);
//	and And45(F45, A_not, B);
//	and And46(F46, A, B_not, C_not);
//	or Or26(out29_inv, F44, F45, F46);
//	
//	//LINHA7
//	//L7-1
//	// ~B + ~A C
//	and And47(F47, A_not, C);
//	or Or27(out30_inv, B_not, F47);
//	
//	//L7-2
//	//~B~C + BC + A
//	and And48(F48, B_not, C_not);
//	and And49(F49, B, C);
//	or Or28(out31_inv, F49, F48, A);
//	
//	//L7-3
//	//~A~C +B~C + A~BC
//	and And50(F50, A_not, C_not);
//	and And51(F51, B, C_not);
//	and And52(F52, A, B_not, C);
//	or Or29(out32_inv, F52, F50, F51);
//	
//	//L7-4
//	//~C + ~AB
//	and And53(F53, A_not, B);
//	or Or30(out33_inv, C_not, F53);
//	
	//L7-5
	//~AB + BC + A~B~C
//	and And54(F54, A_not, B);
//	and And55(F55, B, C);
//	and And56(F56, A, B_not, C_not);
//	or Or31(out34_inv, F54,F54, F56);
	
	and And0 (F1,A_not,B_not,C);
	and And1 (F2,B,C_not);
	and And2 (F3,A,C_not);
	or Or0 (out0_inv,F1,F2,F3);

	//B ~C + A
	//L1-2
	and And3 (F4,B,C_not);
	or Or1 (out1_inv,F4,A);

	//A + B + ~C
	//L1-3
	or Or2 (out2_inv,A,B,C_not);

	//~A~C + ~BC
	//L1-4
	and And4 (F5, A_not, C_not);
	and And5 (F6, B_not, C);
	or Or3 (out3_inv, F5, F6);

	//C~B~A
	//L1-5
	and And6 (out4_inv, C, A_not, B_not);

	//LINHA 2
	//L2-1
	//~A~B + B~C
	and And7 (F8, A_not, B_not);
	and And8 (F9, B, C_not);
	or Or4 (out5_inv, F8, F9);
	
	//L2-2
	//~AC + ~BC + AB~C
	and And9(F10, A_not, C);
	and And10(F11, B_not, C);
	and And11(F12, A,B, C_not);
	or Or5 (out6_inv, F10,F11,F12);
	
	//L2-3
	//~A + ~B + ~C
	or Or6(out7_inv, A_not, B_not, C_not);
	
	//L2-4
	//BC + A
	and And12(F13, B,C);
	or Or7 (out8_inv, F13, A);
	
	//L2-5
	//~AC + BC + A~B~C
	and And13(F14, A_not, C);
	and And14(F15, B, C);
	and And15(F16, A, B_not, C_not);
	or Or8 (out9_inv, F14, F15 , F16);
	
	//LINHA 3
	//L3-1
	//~A + ~C + B
	or Or9 (out10_inv,A_not, B, C_not);
	
	//L3-2
	//~A~B + ~AC + AB
	and And16(F17, A_not, B_not);
	and And17(F18, A_not, C);
	and And18(F19, A,B);
	or Or10(out11_inv,F17,F18,F19);
	
	//L3-3
	// B + A
	or Or11(out12_inv, B, A);
	
	//L3-4
	//~C + A~B
	and And19(F20, A, B_not);
	or Or12(out13_inv, C_not, F20);
	
	//L3-5
	//C + A
	//and Or123(T0, A_not, B_not, C_not);
	//and Or223 (T1, A_not, B, C_not);
	//and And00 (out[14], A_not, C_not);
	or Or232 (out14_inv, A, C);
	
	//LINHA 4
	//L4-1
	//~A + ~B~C + BC
	and And20(F21, B_not, C_not);
	and And21(F22, B,C);
	or Or14(out15_inv, A_not, F21,F22);
	
	//L4-2
	//~AC + ~AB + A~B + A~C
	and And22(F23, A_not, C);
	and And23(F24, A_not, B);
	and And24(F25, A, B_not);
	and And25(F26, A, C_not);
	or Or15(out16_inv, F23, F24, F25, F26);
	
	//L4-3
	//~BC + B~C
	and And26(F27, B_not, C);
	and And27(F28, B, C_not);
	or Or16(out17_inv, F27, F28);

	//L4-4
	//~B + ~C
	or Or17(out18_inv, B_not, C_not);
	
	//L4-5
	//~AC + A~B + A~C
	and And28(F29, A_not, C);
	and And29(F30, A, B_not);
	and And30(F31, A, C_not);
	or Or18(out19_inv, F29,F30, F31);
	
	//LINHA 5
	//L5-1
	//~A~C + ~AB + AC
	and And31(F32, A_not, C_not);
	and And32(F33, A_not, B);
	and And33(F34, A, C);
	or Or19(out20_inv,F32,F33, F34);
	
	//L5-2
	//~A~C + BC + A~B
	and And34(F35, A_not, C_not);
	and And35(F36, B, C);
	and And36(F37, A, B_not);
	or Or20(out21_inv, F35, F36,F37);
	
	//L5-3
	//~A + C + B
	or Or21(out22_inv, A_not, C, B);
	
	//L5-4
	//~A + C + B
	or Or22(out23_inv, A_not, C, B);
	
	//L5-5
	//~A + ~B + ~C
	or Or23(out24_inv, A_not, B_not, C_not);
	
	//L6-1
	//~BC
	and And37(out25_inv, B_not, C);
	
	//L6-2
	//~BC + B~C + A~B
	and And38(F38,  B_not, C);
	and And39(F39, B, C_not);
	and And40(F40, A, B_not);
	or Or24(out26_inv, F38,F39,F40);
	
	//L6-3
	//~A~B + ~BC + AB
	and And41(F41, A_not, B_not);
	and And42(F42, B_not, C);
	and And43(F43, A, B);
	or Or25 (out27_inv, F41, F42, F43);
	
	//L6-4
	//A
	assign out28_inv = A;
	
	//L6-5
	//~AC + ~AB + A~B~C
	and And44(F44, A_not, C);
	and And45(F45, A_not, B);
	and And46(F46, A, B_not, C_not);
	or Or26(out29_inv, F44, F45, F46);
	
	//LINHA7
	//L7-1
	// ~B + ~A C
	and And47(F47, A_not, C);
	or Or27(out30_inv, B_not, F47);
	
	//L7-2
	//~B~C + BC + A
	and And48(F48, B_not, C_not);
	and And49(F49, B, C);
	or Or28(out31_inv, F49, F48, A);
	
	//L7-3
	//~A~C +B~C + A~BC
	and And50(F50, A_not, C_not);
	and And51(F51, B, C_not);
	and And52(F52, A, B_not, C);
	or Or29(out32_inv, F52, F50, F51);
	
	//L7-4
	//~C + ~AB
	and And53(F53, A_not, B);
	or Or30(out33_inv, C_not, F53);
	
	//L7-5

	//~AB + BC + A~B~C
	and And54(F54, A_not, B);
	and And55(F55, B, C);
	and And56(F56, A, B_not, C_not);
	or Or31(out34_inv, F54,F55, F56);
	
	not (out[0], out0_inv);
	not (out[1], out1_inv);
	not (out[2], out2_inv);
	not (out[3], out3_inv);
	not (out[4], out4_inv);
	not (out[5], out5_inv);
	not (out[6], out6_inv);
	not (out[7], out7_inv);
	not (out[8], out8_inv);
	not (out[9], out9_inv);
	not (out[10], out10_inv);
	not (out[11], out11_inv);
	not (out[12], out12_inv);
	not (out[13], out13_inv);
	not (out[14], out14_inv);
	not (out[15], out15_inv);
	not (out[16], out16_inv);
	not (out[17], out17_inv);
	not (out[18], out18_inv);
	not (out[19], out19_inv);
	not (out[20], out20_inv);
	not (out[21], out21_inv);
	not (out[22], out22_inv);
	not (out[23], out23_inv);
	not (out[24], out24_inv);
	not (out[25], out25_inv);
	not (out[26], out26_inv);
	not (out[27], out27_inv);
	not (out[28], out28_inv);
	not (out[29], out29_inv);
	not (out[30], out30_inv);
	not (out[31], out31_inv);
	not (out[32], out32_inv);
	not (out[33], out33_inv);
	not (out[34], out34_inv);
	
	
	
endmodule 