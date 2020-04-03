module memoriaAsin(
	input 
		en,
	input [4:0]dir,
	input [7:0]dataIn,
	output reg [7:0]dataOut
);
reg [7:0] data [0:31];
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