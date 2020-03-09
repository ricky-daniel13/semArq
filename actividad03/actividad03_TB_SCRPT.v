//Archivo de TestBench para verilog basico generado por Veriscript_TB BETA 1.0
`timescale 1ns/1ns

module actividad03_TB()
    wire salidaand
    wire salidaor
    wire salidaxor
    wire salidanot
    wire salidanand
    wire salidayes
    wire salidanor
    wire salidaxnor
    reg entrada1
    reg entrada2
    actividad03 DUV(.entrada1(entrada1),.entrada2(entrada2),.salidaand(salidaand),.salidaor(salidaor),.salidaxor(salidaxor),.salidanot(salidanot),.salidanand(salidanand),.salidayes(salidayes),.salidanor(salidanor),.salidaxnor(salidaxnor))

    initial begin

        entrada1=1'd0
        entrada2=1'd1
        #10

        entrada1=1'd1
        entrada2=1'd1
        #10

        end

endmodule