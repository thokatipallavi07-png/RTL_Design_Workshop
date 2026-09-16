// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: comp_case (Complete CASE Statement)
// =============================================================================

`timescale 1ns / 1ps

module comp_case (
    input  wire [1:0] sel,
    input  wire i0,
    input  wire i1,
    input  wire i2,
    output reg  y
);

    // All conditions covered through explicit cases and default branch
    always @(*) begin
        case (sel)
            2'b00:   y = i0;
            2'b01:   y = i1;
            default: y = i2;
        endcase
    end

endmodule
