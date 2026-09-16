// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: dff_asyncres (D Flip-Flop with Asynchronous Reset)
// =============================================================================

`timescale 1ns / 1ps

module dff_asyncres (
    input  wire clk,
    input  wire async_reset,
    input  wire d,
    output reg  q
);

    always @(posedge clk or posedge async_reset) begin
        if (async_reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
