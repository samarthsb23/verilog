`timescale 1ns/1ns
`include "cyclic_light.v"

module cyclic_tb;

    reg clk = 0; 
    wire [2:0] light; 

    cyclic_light ins(clk, light);

    always begin

        #5
        clk = ~clk;

    end

    initial begin

        $dumpfile("cyclic.vcd");
        $dumpvars(0, cyclic_tb);

        $monitor ($time, " RGY: %b", light);

        #100;
        $finish;

    end

endmodule