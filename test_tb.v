`timescale 1ns / 1ns 
`include "test.v"

module test_tb;

    reg A;
    wire B; 

    test inst_1(A,B);

    initial begin
        
        $dumpfile("test_tb.vcd");
        $dumpvars(0, test_tb);

        A = 0;
        #20;

        A = 1;
        #20;

        A = 0;
        #20;

        $display("Test Complete");


    end 

endmodule
