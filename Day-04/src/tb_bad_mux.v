// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_bad_mux (Testbench for bad_mux)
// =============================================================================

`timescale 1ns / 1ps

module tb_bad_mux;

    reg i0;
    reg i1;
    reg sel;
    wire y;

    bad_mux uut (
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("tb_bad_mux.vcd");
        $dumpvars(0, tb_bad_mux);

        i0 = 0; i1 = 0; sel = 0; #10;
        i0 = 1; #10; // Changes i0 while sel remains 0; bad_mux fails to update in behavioral simulation!
        sel = 1; #10;
        i1 = 1; #10;
        sel = 0; #10;

        #20 $finish;
    end

endmodule
