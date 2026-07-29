`timescale 1ns/1ps

module tb_t_flipflop;

reg clk;
reg reset;
reg t;
wire q;

t_flipflop uut(
    .clk(clk),
    .reset(reset),
    .t(t),
    .q(q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    t = 0;

    #10 reset = 0;

    t = 0; #10;
    t = 1; #10;
    t = 1; #10;
    t = 0; #10;
    t = 1; #10;
    t = 1; #10;

    $finish;
end

endmodule
