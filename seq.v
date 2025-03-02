module top(A, B, clk, Z);

    input A, B, clk; 
    output Z;

    reg D = 0;

    assign Z = D;

    always @(posedge clk) begin
      
        D <= A ^ B ^ D;

    end


endmodule   