// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: opt_check2 (Combinational Optimization Example 2)
// =============================================================================

`timescale 1ns / 1ps

module opt_check2 (
    input  wire a,
    input  wire b,
    output wire y
);
    // Y = a ? 1 : b  ==>  Y = a | b
    assign y = a ? 1'b1 : b;

endmodule
