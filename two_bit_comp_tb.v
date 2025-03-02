`timescale 1ns/1ns
`include "two_bit_comp.v"

module two_bit_comp_tb;

    reg[1:0] A,B;
    wire Y;

    two_bit_comp ins1(A, B, Y);

    initial begin

        $dumpfile("two_bit_comp.vcd");
        $dumpvars(0, two_bit_comp_tb);

        {A, B} = 4'd0; #20;
        {A, B} = 4'd1; #20;
        {A, B} = 4'd2; #20;
        {A, B} = 4'd3; #20;
        {A, B} = 4'd4; #20;
        {A, B} = 4'd5; #20;
        {A, B} = 4'd6; #20;
        {A, B} = 4'd7; #20;
        {A, B} = 4'd8; #20;
        {A, B} = 4'd9; #20;
        {A, B} = 4'd10; #20;
        {A, B} = 4'd11; #20;
        {A, B} = 4'd12; #20;
        {A, B} = 4'd13; #20;
        {A, B} = 4'd14; #20;
        {A, B} = 4'd15; #20;
        $display("Test Run Successful");


    end

endmodule