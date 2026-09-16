// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: multiple_module_opt (Multi-module Optimization Example)
// =============================================================================

`timescale 1ns / 1ps

module sub_opt1 (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a & b;
endmodule

module sub_opt2 (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a ^ b;
endmodule

module multiple_module_opt (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y
);
    wire net1;

    sub_opt1 u1 (.a(a), .b(b), .y(net1));
    sub_opt2 u2 (.a(net1), .b(c), .y(y));

endmodule
