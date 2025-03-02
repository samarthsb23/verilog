module cyclic_light (clk, light);
    parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
    parameter RED=3'b100, GREEN = 3'b010, YELLOW = 3'b001;

    input clk; 
    output reg[2:0] light = RED;

    
    
    reg[1:0] state = s0;

    always @(posedge clk)
        case(state)

            s0: begin 
                light <= GREEN; state <= s1;
            end 
            s1: begin
                
                light <= YELLOW; state <= s2;
            end
            s2: begin
                light <= RED; state <= s0;
            end

            default: begin 

                light <= RED; state <= s0;
            end


        endcase 

endmodule