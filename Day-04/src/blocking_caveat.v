// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: blocking_caveat (Blocking Assignment Ordering Caveat)
// =============================================================================

`timescale 1ns / 1ps

module blocking_caveat (
    input  wire a,
    input  wire b,
    input  wire c,
    output reg  d
);

    reg x;

    always @(*) begin
        d = x & c;  // Uses old value of x before it is updated
        x = a | b;  // x updated after assignment to d
    end

endmodule
