`timescale 1ns/1ps

module tb_mux4x1;

reg i0, i1, i2, i3;
reg [1:0] sel;
wire y;

mux4x1 uut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

initial begin
    $display("Time\tI0\tI1\tI2\tI3\tSEL\tY");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, i0, i1, i2, i3, sel, y);

    i0 = 0; i1 = 1; i2 = 0; i3 = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    i0 = 1; i1 = 0; i2 = 1; i3 = 0;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule
