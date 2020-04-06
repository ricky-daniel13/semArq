module FEDE(
	input 
		clk,
		regWrite,
	input [6:0]
		dir,
		pc,
	input [31:0]writeData,
	output [5:0]funct,
	output [31:0]
		readData1,
		readData2
);

reg [4:0]
	readReg1,
	readReg2,
	writeReg;
wire [31:0]inst;
wire [4:0]
	rsOut,
	rtOut,
	rdOut;
fetchCycle fc(
	.dir(dir),
	.pc(pc),
	.inst(inst)
);
assign funct = inst[5:0];
BFF bff(
	.clk(clk),
	.dirs(inst[25:11]),
	.rsOut(rsOut),
	.rtOut(rtOut),
	.rdOut(rdOut)
);
RB rb(
	.regWrite(regWrite),
	.readReg1(rsOut),
	.readReg2(rtOut),
	.writeReg(rdOut),
	.writeData(writeData),
	.readData1(readData1),
	.readData2(readData2)
);
endmodule