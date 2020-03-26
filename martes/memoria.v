module memoria(
	input 
		en,
	input [6:0]dir,
	input [31:0]dataIn,
	output reg [31:0]dataOut
);
reg [31:0] data [0:127];
always @*
begin
	if(en)	//enable en 1 = write
	begin
		data[dir] = dataIn;
	end
	else	//enable en 0 = read
	begin
		dataOut = data[dir];
	end
end
endmodule