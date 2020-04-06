module BFF(
	input clk,
	input [14:0]dirs,
	output reg [4:0]
		rsOut,
		rtOut,
		rdOut
);

always @(posedge clk)
begin
	rsOut = dirs[14:10];
	rtOut = dirs[9:5];
	rdOut = dirs[4:0];
end
endmodule