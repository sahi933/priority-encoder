`timescale 1ns/1ps

module decoder_tb;

reg A1, A0;

wire Y0, Y1, Y2, Y3;

decoder uut(
    .A1(A1),
    .A0(A0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_tb);

    $display("A1 A0 | Y3 Y2 Y1 Y0");

    A1=0; A0=0;
    #10;
    $display("%b  %b | %b  %b  %b  %b", A1, A0, Y3, Y2, Y1, Y0);

    A1=0; A0=1;
    #10;
    $display("%b  %b | %b  %b  %b  %b", A1, A0, Y3, Y2, Y1, Y0);

    A1=1; A0=0;
    #10;
    $display("%b  %b | %b  %b  %b  %b", A1, A0, Y3, Y2, Y1, Y0);

    A1=1; A0=1;
    #10;
    $display("%b  %b | %b  %b  %b  %b", A1, A0, Y3, Y2, Y1, Y0);

    #10;
    $finish;

end

endmodule