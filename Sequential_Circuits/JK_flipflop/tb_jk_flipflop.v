`timescale 1ns/1ps

module tb_jk_flipflop;

reg clk, j, k;
wire q;

jk_flipflop uut (
    .clk(clk),
    .j(j),
    .k(k),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    j = 0; k = 0; #10;
    j = 1; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 1; #10;
    j = 1; k = 1; #10;
    j = 0; k = 0; #10;

    $finish;
end

endmodule
