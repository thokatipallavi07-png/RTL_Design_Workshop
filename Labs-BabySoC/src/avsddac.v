// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: avsddac (10-bit DAC Model for BabySoC)
// =============================================================================

`timescale 1ns / 1ps

module avsddac (
    input  wire [9:0] dac_in,
    input  wire       vrefh,
    output reg  [9:0] dac_out
);

    always @(*) begin
        if (vrefh)
            dac_out = dac_in;
        else
            dac_out = 10'd0;
    end

endmodule
