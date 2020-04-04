module RB(
	input regWrite
	input [4:0]
		readReg1,
		readReg2,
		writeReg,
	input [31:0]writeData,
	output [31:0]
		readData1,
		readData2
);
reg [31:0]bank[31:0];
endmodule