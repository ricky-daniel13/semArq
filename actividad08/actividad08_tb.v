`timescale 1ns/1ns

module actividad08_tb();

reg
	en,
	clk = 1'b1;
reg [4:0] dir;
reg [7:0] dataIn;
wire [7:0]
	dataOuts,
	dataOuta;

actividad08 memorias
(
		.en(en),
		.clk(clk),
		.dir(dir),
		.dataIn(dataIn),
		.dataOuts(dataOuts),
		.dataOuta(dataOuta)
);

always #5
begin
	clk=!clk;
end

initial
begin
	$readmemb("nombre.mem", memorias.mems.data);
	$readmemb("nombre.mem", memorias.mema.data);
	en = 1'b0;
	dir = 5'd0;
	#10;
	dir = 5'd1;
	#10;
	dir = 5'd2;
	#10;
	dir = 5'd3;
	#10;
	dir = 5'd4;
	#10;
	dir = 5'd5;
	#10;
	dir = 5'd6;
	#10;
	dir = 5'd7;
	#10;
	dir = 5'd8;
	#10;
	dir = 5'd9;
	#10;
	dir = 5'd10;
	#10;
	dir = 5'd11;
	#10;
	dir = 5'd12;
	#10;
	dir = 5'd13;
	#10;
	dir = 5'd14;
	#10;
	dir = 5'd15;
	#10;
	dir = 5'd16;
	#10;
	dir = 5'd17;
	#10;
	dir = 5'd18;
	#10;
	dir = 5'd19;
	#10;
	dir = 5'd20;
	#10;
	dir = 5'd21;
	#10;
	dir = 5'd22;
	#10;
	en = 1'b1;
	dir = 5'd0;
	dataIn = 8'd50;	// 2
	#10;
	dir = 5'd1;
	dataIn = 8'd49;	// 1
	#10;
	dir = 5'd2;
	dataIn = 8'd53;	// 5
	#10;
	dir = 5'd3;
	dataIn = 8'd54;	// 6
	#10;
	dir = 5'd4;
	dataIn = 8'd54;	// 6
	#10;
	dir = 5'd5;
	dataIn = 8'd49;	// 1
	#10;
	dir = 5'd6;
	dataIn = 8'd51;	// 3
	#10;
	dir = 5'd7;
	dataIn = 8'd57;	// 9
	#10;
	dir = 5'd8;
	dataIn = 8'd57;	// 9
	#10;
	en = 1'b0;
	dir = 5'd0;
	#10;
	dir = 5'd1;
	#10;
	dir = 5'd2;
	#10;
	dir = 5'd3;
	#10;
	dir = 5'd4;
	#10;
	dir = 5'd5;
	#10;
	dir = 5'd6;
	#10;
	dir = 5'd7;
	#10;
	dir = 5'd8;
	#10;
	dir = 5'd9;
	#10;
	dir = 5'd10;
	#10;
	dir = 5'd11;
	#10;
	dir = 5'd12;
	#10;
	dir = 5'd13;
	#10;
	dir = 5'd14;
	#10;
	dir = 5'd15;
	#10;
	dir = 5'd16;
	#10;
	dir = 5'd17;
	#10;
	dir = 5'd18;
	#10;
	dir = 5'd19;
	#10;
	dir = 5'd20;
	#10;
	dir = 5'd21;
	#10;
	dir = 5'd22;
	#10;
end
endmodule