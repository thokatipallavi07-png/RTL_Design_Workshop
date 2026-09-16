// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: dff_async_set (D Flip-Flop with Asynchronous Set)
// =============================================================================

`timescale 1ns / 1ps

module dff_async_set (
    input  wire clk,
    input  wire async_set,
    input  wire d,
    output reg  q
);

    always @(posedge clk or posedge async_set) begin
        if (async_set)
            q <= 1'b1;
        else
            q <= d;
    end

endmodule
