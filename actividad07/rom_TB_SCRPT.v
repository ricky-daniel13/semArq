//Archivo de TestBench para verilog basico generado por Veriscript_TB BETA 1.0
`timescale 1ns/1ns

module rom_TB_SCRPT();
    wire [31:0]inst;
    reg [6:0]dir;
    rom DUV(.dir(dir),.inst(inst));

    initial  begin

        dir=7'd0;
        #5;

        dir=7'd4;
        #5;

        dir=7'd16;
        #5;

        dir=7'd20;
        #5;

        end

endmodule