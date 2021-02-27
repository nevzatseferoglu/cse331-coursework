module alu_32bit(
	output [31:0] r,
	output co,
	output z,
	
	input [2:0] aluOp,
	input [31:0] a,
	input [31:0] b
);


wire c[31:0];
wire notZ;

alu_1bit alu0(	.ri(r[0]), 	.co(c[0]), 	.aluOp(aluOp), .ci(aluOp[2]), .ai(a[0]), .bi(b[0]));
alu_1bit alu1(	.ri(r[1]), 	.co(c[1]), 	.aluOp(aluOp), .ci(c[0]), 	.ai(a[1]), 	.bi(b[1]));
alu_1bit alu2(	.ri(r[2]), 	.co(c[2]), 	.aluOp(aluOp), .ci(c[1]), 	.ai(a[2]), 	.bi(b[2]));
alu_1bit alu3(	.ri(r[3]), 	.co(c[3]), 	.aluOp(aluOp), .ci(c[2]), 	.ai(a[3]), 	.bi(b[3]));
alu_1bit alu4(	.ri(r[4]), 	.co(c[4]), 	.aluOp(aluOp), .ci(c[3]), 	.ai(a[4]), 	.bi(b[4]));
alu_1bit alu5(	.ri(r[5]), 	.co(c[5]), 	.aluOp(aluOp), .ci(c[4]), 	.ai(a[5]), 	.bi(b[5]));
alu_1bit alu6(	.ri(r[6]), 	.co(c[6]), 	.aluOp(aluOp), .ci(c[5]), 	.ai(a[6]), 	.bi(b[6]));
alu_1bit alu7(	.ri(r[7]), 	.co(c[7]), 	.aluOp(aluOp), .ci(c[6]), 	.ai(a[7]), 	.bi(b[7]));
alu_1bit alu8(	.ri(r[8]), 	.co(c[8]), 	.aluOp(aluOp), .ci(c[7]), 	.ai(a[8]), 	.bi(b[8]));
alu_1bit alu9(	.ri(r[9]), 	.co(c[9]), 	.aluOp(aluOp), .ci(c[8]), 	.ai(a[9]), 	.bi(b[9]));
alu_1bit alu10(.ri(r[10]), .co(c[10]), .aluOp(aluOp), .ci(c[9]), 	.ai(a[10]), .bi(b[10]));
alu_1bit alu11(.ri(r[11]), .co(c[11]), .aluOp(aluOp), .ci(c[10]), .ai(a[11]), .bi(b[11]));
alu_1bit alu12(.ri(r[12]), .co(c[12]), .aluOp(aluOp), .ci(c[11]), .ai(a[12]), .bi(b[12]));
alu_1bit alu13(.ri(r[13]), .co(c[13]), .aluOp(aluOp), .ci(c[12]), .ai(a[13]), .bi(b[13]));
alu_1bit alu14(.ri(r[14]), .co(c[14]), .aluOp(aluOp), .ci(c[13]), .ai(a[14]), .bi(b[14]));
alu_1bit alu15(.ri(r[15]), .co(c[15]), .aluOp(aluOp), .ci(c[14]), .ai(a[15]), .bi(b[15]));
alu_1bit alu16(.ri(r[16]), .co(c[16]), .aluOp(aluOp), .ci(c[15]), .ai(a[16]), .bi(b[16]));
alu_1bit alu17(.ri(r[17]), .co(c[17]), .aluOp(aluOp), .ci(c[16]), .ai(a[17]), .bi(b[17]));
alu_1bit alu18(.ri(r[18]), .co(c[18]), .aluOp(aluOp), .ci(c[17]), .ai(a[18]), .bi(b[18]));
alu_1bit alu19(.ri(r[19]), .co(c[19]), .aluOp(aluOp), .ci(c[18]), .ai(a[19]), .bi(b[19]));
alu_1bit alu20(.ri(r[20]), .co(c[20]), .aluOp(aluOp), .ci(c[19]), .ai(a[20]), .bi(b[20]));
alu_1bit alu21(.ri(r[21]), .co(c[21]), .aluOp(aluOp), .ci(c[20]), .ai(a[21]), .bi(b[21]));
alu_1bit alu22(.ri(r[22]), .co(c[22]), .aluOp(aluOp), .ci(c[21]), .ai(a[22]), .bi(b[22]));
alu_1bit alu23(.ri(r[23]), .co(c[23]), .aluOp(aluOp), .ci(c[22]), .ai(a[23]), .bi(b[23]));
alu_1bit alu24(.ri(r[24]), .co(c[24]), .aluOp(aluOp), .ci(c[23]), .ai(a[24]), .bi(b[24]));
alu_1bit alu25(.ri(r[25]), .co(c[25]), .aluOp(aluOp), .ci(c[24]), .ai(a[25]), .bi(b[25]));
alu_1bit alu26(.ri(r[26]), .co(c[26]), .aluOp(aluOp), .ci(c[25]), .ai(a[26]), .bi(b[26]));
alu_1bit alu27(.ri(r[27]), .co(c[27]), .aluOp(aluOp), .ci(c[26]), .ai(a[27]), .bi(b[27]));
alu_1bit alu28(.ri(r[28]), .co(c[28]), .aluOp(aluOp), .ci(c[27]), .ai(a[28]), .bi(b[28]));
alu_1bit alu29(.ri(r[29]), .co(c[29]), .aluOp(aluOp), .ci(c[28]), .ai(a[29]), .bi(b[29]));
alu_1bit alu30(.ri(r[30]), .co(c[30]), .aluOp(aluOp), .ci(c[29]), .ai(a[30]), .bi(b[30]));
alu_1bit alu31(.ri(r[31]), .co(co), .aluOp(aluOp), .ci(c[30]), .ai(a[31]), .bi(b[31]));

or (notZ,
	r[31], r[27], r[23], r[19], r[15], r[11], r[7], r[3],
	r[30], r[26], r[22], r[18], r[14], r[10], r[6], r[2],
	r[29], r[25], r[21], r[17], r[13], r[9], r[5], r[1],
	r[28], r[24], r[20], r[16], r[12], r[8], r[4], r[0]
);

not (z, notZ);


endmodule
