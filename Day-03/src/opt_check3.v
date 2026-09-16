// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: opt_check3 (Combinational Optimization Example 3 - 3-input)
// =============================================================================

`timescale 1ns / 1ps

module opt_check3 (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y
);
    // Y = a ? (b ? c : 0) : 0  ==>  Y = a & b & c
    assign y = a ? (b ? c : 1'b0) : 1'b0;

endmodule
