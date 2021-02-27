module Mips32(
	input clk
);

wire branch;

wire [1:0] m6Out;
wire [4:0] m2Out, m7Out;
wire [31:0] m8Out, m9Out, m10Out, m5Out, m4Out, m3Out, m11Out, toMux1Out, m1Out, m0Out;

wire [31:0] aluOut;
wire zero, co;

wire [31:0] dmOut;

wire [31:0] seOut, shfOut;
wire [31:0] zeOut, ze30Out, zendeOut;

wire in, orM6out, toAnd, toMuxSel, orjjalout;
wire [31:0] pcOut, imOut;

wire RegDest, Beq, Bne, MemRead, MemWrite, MemtoReg, AluSrc, RegWrite1, RegWrite2, ori, lui, j, jal, jr, lw;
wire [1:0] AluOp;

wire [31:0] read_data_RS;
wire [31:0] read_data_RT;

wire [2:0] aluOpToAlu;

wire [1:0] cmpOut;

wire [31:0] a0out, a1out;
wire carry_out, carry_out1;

program_counter PC(.out(pcOut), .clk(clk), .in(m0Out));

instruction_memory  IM(.readAddress(pcOut), .instruction(imOut));

control_unit CU(
	.RegDest(RegDest),
	.Beq(Beq), .Bne(Bne),
	.MemRead(MemRead), .MemWrite(MemWrite),
	.MemtoReg(MemtoReg),
	.AluOp(AluOp),
	.AluSrc(AluSrc),
	.RegWrite1(RegWrite1), .RegWrite2(RegWrite2),
	.ori(ori),
	.lui(lui),
	.j(j), .jal(jal), .jr(jr),
	.lw(lw),

	.opcode(imOut[31:26])
);

mux_2to1_5bit M2(.out(m2Out), .sel(RegDest), .in1(imOut[15:11]), .in0(imOut[20:16]));
mux_2to1_5bit M7(.out(m7Out), .sel(jal), .in1(5'b11111), .in0(m2Out));

registers REG(
	.read_data_RS(read_data_RS),
	.read_data_RT(read_data_RT),
	
	.RegWrite_RS(RegWrite2),
	.RegWrite_RT_RD(RegWrite1),
	.clk(clk),
	
	.RS(imOut[25:21]),
	.RT(imOut[20:16]),
	.write_register(m7Out),
	.write_data(m3Out),
	.write_data_RS(m10Out)
);


sign_extender_16bit SE(.out(seOut), .in(imOut[15:0]));

alu_control ALUControl( .aluOpToAlu(aluOpToAlu), .aluOpFromCU(AluOp), .funcField(imOut[5:0]));

zero_extender_16bit ZE(.out(zeOut), .in(imOut[15:0]));
mux_2to1_32bit M8(.out(m8Out), .sel(ori), .in1(zeOut), .in0(read_data_RT));

mux_2to1_32bit M9(.out(m9Out), .sel(AluSrc), .in1(seOut), .in0(m8Out));
	
alu_32bit ALU(.r(aluOut), .co(co), .z(zero), .aluOp(aluOpToAlu), .a(read_data_RS), .b(m9Out));

data_memory_256KB DM(.readData(dmOut), .clk(clk), .memRead(MemRead), .memWrite(MemWrite), .address(aluOut[17:0]), .writeData(m8Out));

mux_2to1_32bit M10(.out(m10Out), .sel(MemtoReg), .in1(dmOut), .in0(aluOut[31:0]));

compare_with_zero_32bit CMP(.equal(cmpOut[1]), .lessThan(cmpOut[0]), .in(m10Out));

mux_4to1_2bit M6(.out(m6Out), .sel(cmpOut), .in3(2'b00), .in0(2'b11), .in1(2'b10), .in2(2'b01));
zero_extender_30bit ZE30(.out(ze30Out), .in(m6Out));

or orLwOri(orM6out, lw, ori);
mux_2to1_32bit M5(.out(m5Out), .sel(orM6out), .in1(m10Out), .in0(ze30Out));

zero_end_extender_16bit zende(.out(zendeOut), .in(imOut[15:0]));
mux_2to1_32bit M4(.out(m4Out), .sel(lui), .in1(zendeOut), .in0(m5Out));

adder_subtractor_32bit A0(.result(a0out), .carry_out(carry_out), .subt_signal(1'b0), .A(pcOut), .B(32'b100));

mux_2to1_32bit M3(.out(m3Out), .sel(jal), .in1(a0out), .in0(m4Out));

shift32bit_left_2bit SHF(.out(shfOut), .in(seOut));
adder_subtractor_32bit A1(.result(a1out), .carry_out(carry_out1), .subt_signal(1'b0), .A(a0out), .B(shfOut));

xor branchXor(toAnd, zero, Bne);
or (branch, Beq, Bne);
and branchAnd(toMuxSel, branch, toAnd);

mux_2to1_32bit M11(.out(m11Out), .sel(toMuxSel), .in1(a1out), .in0(a0out));


j_jal_mux_input toMux1(.out(toMux1Out), .in1(pcOut[3:0]), .in0(imOut[25:0]));
or orjjal(orjjalout, j, jal);
mux_2to1_32bit M1(.out(m1Out), .sel(orjjalout), .in1(toMux1Out), .in0(m11Out));

mux_2to1_32bit M0(.out(m0Out), .sel(jr), .in1(read_data_RS), .in0(m1Out));


endmodule
