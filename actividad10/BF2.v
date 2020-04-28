module BF2(
	input 
		clk,
		zeroFlag,
	input [31:0]res,
	output reg zeroFlagOut,
	output reg [31:0]resOut
);

always @(posedge clk)
begin
	zeroFlagOut = zeroFlag;
	resOut = res;
end
endmodule