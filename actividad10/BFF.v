module BFF(
	input clk,
	input [31:0]dirs,
	output reg [4:0]
		rsOut,
		rtOut,
		rdOut,
	output reg [5:0]funOut
);

always @(posedge clk)
begin
	rsOut = dirs[25:21];
	rtOut = dirs[20:16];
	rdOut = dirs[15:11];
	funOut = dirs[5:0];
end
endmodule