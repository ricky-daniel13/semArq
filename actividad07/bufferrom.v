module bufferrom(
	input clk, en,
	input [31:0]inst,
	output reg [31:0]ins,
	output reg enout
);
always  @(posedge clk)
begin
	enout = en;
	ins = inst;
end
endmodule