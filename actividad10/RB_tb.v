`timescale 1ns/1ns
module RB_tb();
reg regWrite;
reg [4:0]
	readReg1,
	readReg2,
	writeReg;
reg [31:0]writeData;
wire [31:0]
	readData1,
	readData2;
RB rb(
	.regWrite(regWrite),
	.readReg1(readReg1),
	.readReg2(readReg2),
	.writeReg(writeReg),
	.writeData(writeData),
	.readData1(readData1),
	.readData2(readData2)
);

initial
begin
	$readmemb("RBdata_init.txt", rb.bank);
	regWrite = 1'b0;
	readReg1 = 5'd16;
	readReg2 = 5'd17;
	#10;
	regWrite = 1'b1;
	writeReg = 5'd0;
	writeData = 32'd50;
	readReg1 = 5'd31;
	readReg2 = 5'd27;
	#10;
	regWrite = 1'b0;
	readReg1 = 5'd0;
	readReg2 = 5'd23;
	#10;
end
endmodule