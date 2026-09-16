// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_dff_syncres (Testbench for Synchronous Reset DFF)
// =============================================================================

`timescale 1ns / 1ps

module tb_dff_syncres;

    reg clk;
    reg sync_reset;
    reg d;
    wire q;

    dff_syncres uut (
        .clk(clk),
        .sync_reset(sync_reset),
        .d(d),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_dff_syncres.vcd");
        $dumpvars(0, tb_dff_syncres);

        clk = 0;
        sync_reset = 1;
        d = 0;

        #12 sync_reset = 0;
        #8  d = 1;
        #10 d = 0;
        #10 d = 1;
        #4  sync_reset = 1; // Assert reset, takes effect only on posedge clk
        #10 sync_reset = 0;
        #10 d = 1;

        #20 $finish;
    end

endmodule
