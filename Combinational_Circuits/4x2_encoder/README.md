# 4:2 Encoder

A 4:2 encoder converts one active input out of four inputs into a 2-bit binary output.

## Files

- `encoder4x2.v` – Verilog design
- `tb_encoder4x2.v` – Testbench
- `encoder4x2_waveform.png` – Simulation waveform

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

