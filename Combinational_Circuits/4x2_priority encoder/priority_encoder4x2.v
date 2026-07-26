module priority_encoder4x2 (
    input d0,
    input d1,
    input d2,
    input d3,
    output y1,
    output y0
);

assign y1 = d3 | d2;
assign y0 = d3 | (~d2 & d1);

endmodule
