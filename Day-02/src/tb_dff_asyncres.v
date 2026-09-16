// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_dff_asyncres (Testbench for Asynchronous Reset DFF)
// =============================================================================

`timescale 1ns / 1ps

module tb_dff_asyncres;

    reg clk;
    reg async_reset;
    reg d;
    wire q;

    dff_asyncres uut (
        .clk(clk),
        .async_reset(async_reset),
        .d(d),
        .q(q)
    );

    // Clock generation (period = 10ns)
    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_dff_asyncres.vcd");
        $dumpvars(0, tb_dff_asyncres);

        clk = 0;
        async_reset = 1;
        d = 0;

        #12 async_reset = 0;
        #5  d = 1;
        #10 d = 0;
        #10 d = 1;
        #7  async_reset = 1; // Asynchronous reset pulse
        #8  async_reset = 0;
        #15 d = 0;
        #10 d = 1;

        #20 $finish;
    end

endmodule
