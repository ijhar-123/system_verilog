module alu
import alu_pkg::*;
(
input logic [DATA_WIDTH-1:0] a,
input logic [DATA_WIDTH-1:0] b,
input logic [1:0] sel,
output logic [DATA_WIDTH-1:0] out
);

always_comb begin
        case (sel)
            2'b00:   out = a + b;
            2'b01:   out = a - b;
            2'b10:   out = a & b;
            2'b11:   out = a | b;
            default: out = 'x;
        endcase
    end
endmodule : alu
