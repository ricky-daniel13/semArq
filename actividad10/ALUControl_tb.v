`timescale 1ns/1ns

module ALUControl_tb();
reg [5:0]func;
wire [3:0]sel;

ALUControl ac(
	.func(func),
	.sel(sel)
);

initial
begin
	 func = 6'b011111; //WROnG
	 #10;
	 func = 6'b100000;
	 #10;
    func = 6'b100010; 
	 #10;
    func = 6'b011000;
	 #10;
    func = 6'b011010;
	 #10;
	 func = 6'b011111; //WROnG
	 #10;
end
	
endmodule