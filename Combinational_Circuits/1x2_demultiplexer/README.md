# 1:2 Demultiplexer

A 1:2 demultiplexer routes one input (`d`) to one of two outputs (`y0` or `y1`) based on the select signal (`sel`).

## Files

- `1x2_demux.v` – Verilog design
- `tb_1x2_demux.v` – Testbench
- `demux1x2_waveform.png` – Simulation waveform

## Truth Table

| d | sel | y0 | y1 |
|---|-----|----|----|
| 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |

