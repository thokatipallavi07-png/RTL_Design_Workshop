// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: opt_check (Combinational Logic Optimization)
// =============================================================================

`timescale 1ns / 1ps

module opt_check (
    input  wire a,
    input  wire b,
    output wire y
);
    // Y = a ? b : 0  ==>  Y = a & b
    assign y = a ? b : 1'b0;

endmodule
