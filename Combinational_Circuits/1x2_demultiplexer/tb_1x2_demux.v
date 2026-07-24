`timescale 1ns/1ps

module tb_demux1x2;

reg d, sel;
wire y0, y1;

demux1x2 uut (
    .d(d),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $display("Time\tD\tSEL\tY0\tY1");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, d, sel, y0, y1);

    d = 0; sel = 0; #10;
    d = 1; sel = 0; #10;
    d = 0; sel = 1; #10;
    d = 1; sel = 1; #10;

    $finish;
end

endmodule
