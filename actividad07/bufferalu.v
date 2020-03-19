module bufferalu(
	input clk, en,
	input [6:0]dir,
	input [31:0]res,
	output reg [6:0]dirout,
	output reg [31:0]resout,
	output reg enout
);
always  @(posedge clk)
begin
	enout = en;
	resout = res;
	dirout = dir;
end
endmodule