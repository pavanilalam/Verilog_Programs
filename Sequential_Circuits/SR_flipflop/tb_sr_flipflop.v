`timescale 1ns/1ps

module tb_sr_flipflop;

reg clk, s, r;
wire q;

sr_flipflop uut (
    .clk(clk),
    .s(s),
    .r(r),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    s = 0; r = 0; #10;
    s = 1; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 1; #10;

    $finish;
end

endmodule
