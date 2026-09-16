// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: incomp_case (Incomplete CASE Statement - Inferred Latch)
// =============================================================================

`timescale 1ns / 1ps

module incomp_case (
    input  wire [1:0] sel,
    input  wire i0,
    input  wire i1,
    output reg  y
);

    // sel=2'b10 and 2'b11 are uncovered -> infers latch
    always @(*) begin
        case (sel)
            2'b00: y = i0;
            2'b01: y = i1;
        endcase
    end

endmodule
