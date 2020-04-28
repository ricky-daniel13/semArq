module DE_EX(
	input 
		clk,
		regWrite,
	output zeroFlag,
	output [31:0]res
);
wire 
	zeroFlagW,
	zeroFlagWire;
wire [31:0]
	inst,
	op1,
	op2,
	op1Wire,
	op2Wire,
	resW,
	resWire;
wire [4:0]
	rs,
	rt,
	rd;
wire [5:0]func;
wire [3:0]
	sel,
	selWire;
assign res = resWire;
assign zeroFlag = zeroFlagWire;
fetchCycle fc(
	.clk(clk),
	.inst(inst)
);

BFF bff(
	.clk(clk),
	.dirs(inst),
	.rsOut(rs),
	.rtOut(rt),
	.rdOut(rd),
	.funOut(func)
);

ALUControl aluc(
	.func(func),
	.sel(sel)
);

RB rb(
	.regWrite(regWrite),
	.readReg1(rs),
	.readReg2(rt),
	.writeReg(rd),
	.writeData(resWire),
	.readData1(op1),
	.readData2(op2)
);

BF1 bf1(
	.clk(clk),
	.selector(sel),
	.readData1(op1),
	.readData2(op2),
	.selectorOut(selWire),
	.readData1Out(op1Wire),
	.readData2Out(op2Wire)
);

ALU alu(
	.a(op1Wire),
	.b(op2Wire),
	.sel(selWire),
	.zeroFlag(zeroFlagW),
	.res(resW)
);

BF2 bf2(
	.clk(clk),
	.zeroFlag(zeroFlagW),
	.res(resW),
	.zeroFlagOut(zeroFlagWire),
	.resOut(resWire)
);
endmodule