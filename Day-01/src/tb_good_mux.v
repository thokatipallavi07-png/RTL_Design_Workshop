// =============================================================================
// Course: VLSI System Design (VSD) RTL Design Workshop
// Student: T. Pallavi
// PIN / Roll No: 25EG504F43
// Module: tb_good_mux (Testbench for 2:1 Multiplexer)
// =============================================================================

`timescale 1ns / 1ps

module tb_good_mux;

    reg i0;
    reg i1;
    reg sel;
    wire y;

    good_mux uut (
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("tb_good_mux.vcd");
        $dumpvars(0, tb_good_mux);

        $display("-------------------------------------------");
        $display("Time\tsel\ti0\ti1\t|\ty");
        $display("-------------------------------------------");
        $monitor("%0t\t%b\t%b\t%b\t|\t%b", $time, sel, i0, i1, y);

        // Apply stimuli
        i0 = 1'b0; i1 = 1'b0; sel = 1'b0; #10;
        i0 = 1'b1; i1 = 1'b0; sel = 1'b0; #10;
        i0 = 1'b0; i1 = 1'b1; sel = 1'b1; #10;
        i0 = 1'b1; i1 = 1'b0; sel = 1'b1; #10;
        i0 = 1'b1; i1 = 1'b1; sel = 1'b0; #10;
        i0 = 1'b0; i1 = 1'b1; sel = 1'b0; #10;

        #20;
        $finish;
    end

endmodule
