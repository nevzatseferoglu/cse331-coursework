module alu_control(
	output [2:0] aluOpToAlu,
	
	input [1:0] aluOpFromCU,
	input [5:0] funcField
);

wire and1r, and2r, and3r;
wire not1r, not2r;
wire or3r;

wire first, second, oriCh, oriNot;

and oriCheck(oriNot, aluOpFromCU[0], aluOpFromCU[1]);
not orNot(oriCh, oriNot);

and and1(and1r, aluOpFromCU[1], funcField[1]);
or or1(first, aluOpFromCU[0], and1r);
and (aluOpToAlu[2], first, oriCh);

not not1(not1r, aluOpFromCU[1]);
not not2(not2r, funcField[2]);
or or2(second, not1r, not2r);
and (aluOpToAlu[1], second, oriCh);


or or3(or3r, funcField[3], funcField[0]);
and and2(and2r, aluOpFromCU[1], or3r);
and and3(and3r, aluOpFromCU[0], aluOpFromCU[1]);
or or4(aluOpToAlu[0], and3r, and2r);


endmodule
