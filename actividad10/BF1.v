module BF1(
	input clk,
	input [3:0]selector,
	input [31:0]
		readData1,
		readData2,
	output reg [3:0]selectorOut,
	output reg [31:0]
		readData1Out,
		readData2Out	
);

always @(posedge clk)
begin
	selectorOut = selector;
	readData1Out = readData1;
	readData2Out = readData2;
end
endmodule