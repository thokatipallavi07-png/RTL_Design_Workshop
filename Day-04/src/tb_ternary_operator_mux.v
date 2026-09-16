// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_ternary_operator_mux (Testbench for ternary_operator_mux)
// =============================================================================

`timescale 1ns / 1ps

module tb_ternary_operator_mux;

    reg i0;
    reg i1;
    reg sel;
    wire y;

    ternary_operator_mux uut (
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("tb_ternary_operator_mux.vcd");
        $dumpvars(0, tb_ternary_operator_mux);

        i0 = 0; i1 = 0; sel = 0; #10;
        i0 = 1; i1 = 0; sel = 0; #10;
        i0 = 0; i1 = 1; sel = 1; #10;
        i0 = 1; i1 = 0; sel = 1; #10;

        #20 $finish;
    end

endmodule
