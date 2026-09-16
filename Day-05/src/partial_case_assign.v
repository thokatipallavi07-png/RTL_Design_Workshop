// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: partial_case_assign (Partial Output Assignment in CASE)
// =============================================================================

`timescale 1ns / 1ps

module partial_case_assign (
    input  wire [1:0] sel,
    input  wire i0,
    input  wire i1,
    input  wire i2,
    output reg  y,
    output reg  x
);

    // x is only assigned when sel == 2'b00; inferred latch for x!
    always @(*) begin
        case (sel)
            2'b00: begin
                y = i0;
                x = i2;
            end
            2'b01: begin
                y = i1;
            end
            default: begin
                y = i2;
            end
        endcase
    end

endmodule
