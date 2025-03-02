`timescale 1ns/1ns
`include "seq.v"

module seq_tb;

    reg A, B, clk = 0;
    wire Z;

    top inst(A, B, clk, Z);

    always begin

        clk = ~clk; #10;
    end 

    initial begin

        $dumpfile("seq_tb.vcd");
        $dumpvars(0, seq_tb);

        {A, B} = 2'b00; #20;
        {A, B} = 2'b11; #20;
        {A, B} = 2'b01; #20;
        {A, B} = 2'b11; #20;
        {A, B} = 2'b10; #20;
        {A, B} = 2'b01; #20;
        {A, B} = 2'b10; #20;
        $stop;

    end


endmodule