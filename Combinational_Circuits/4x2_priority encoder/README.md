# 4:2 Priority Encoder

A 4:2 priority encoder converts multiple input lines into a 2-bit binary output. If more than one input is HIGH, the highest-priority input is encoded.

Priority Order: D3 > D2 > D1 > D0

## Files

- `priority_encoder4x2.v` – Verilog design
- `tb_priority_encoder4x2.v` – Testbench
- `priority_encoder4x2_waveform.png` – Simulation waveform

## Truth Table

| Highest Active Input | Y1 | Y0 |
|----------------------|----|----|
| D0 | 0 | 0 |
| D1 | 0 | 1 |
| D2 | 1 | 0 |
| D3 | 1 | 1 |

