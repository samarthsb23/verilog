module two_bit_comp(A, B, Y);

    input [1:0] A, B;
    output Y;

    //assign Y = A > B;

    assign Y = (A[1] & ~B[1]) | (A[0] & ~B[0] & ~B[1]) | (A[0] & A[1] & ~B[0]);


endmodule