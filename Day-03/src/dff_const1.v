// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: dff_const1 (Constant Flip-Flop Optimization Example 1)
// =============================================================================

`timescale 1ns / 1ps

module dff_const1 (
    input  wire clk,
    input  wire reset,
    output reg  q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= 1'b1;
    end

endmodule
