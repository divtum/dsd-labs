# Lab 5 — Encoder and Decoder

## Aim

To design, implement, and simulate an **8:3 Encoder** and a **3:8 Decoder** using **Verilog HDL**, and verify their functionality using testbenches and simulation waveforms.

## Contents

| File | Description |
|---|---|
| `decoder.v` | Verilog implementation of the 3:8 Decoder |
| `tb_decoder.v` | Testbench for the 3:8 Decoder |
| `encoder.v` | Verilog implementation of the 8:3 Encoder |
| `tb_encoder.v` | Testbench for the 8:3 Encoder |
| `Images/` | Circuit schematics and simulation waveforms |

---

## 1. 3:8 Decoder

A **3:8 Decoder** is a combinational logic circuit that converts a 3-bit binary input into one of eight mutually exclusive outputs. For every valid 3-bit input combination, exactly one output is activated.

### Verilog Implementation

[`decoder.v`](./decoder.v)

### Testbench

[`tb_decoder.v`](./tb_decoder.v)

### Decoder Schematic

![3:8 Decoder Schematic](./Images/Decoder\Schematic.png)

### Decoder Simulation Waveform

![3:8 Decoder Waveform](./Images/Decoder\waveform_.png)

---

## 2. 8:3 Encoder

An **8:3 Encoder** performs the reverse operation of a decoder. It converts one of eight input lines into a corresponding 3-bit binary output.

For valid operation, only one input line is assumed to be active at a time.

### Verilog Implementation

[`encoder.v`](./encoder.v)

### Testbench

[`tb_encoder.v`](./tb_encoder.v)

### Encoder Schematic

![8:3 Encoder Schematic](./Images/encoder%20schematic.png)

### Encoder Simulation Waveform

![8:3 Encoder Waveform](./Images/encoder%20waveform.png)

---

## Simulation

The designs were verified using their respective Verilog testbenches. The simulation waveforms demonstrate the relationship between the input and output signals for different combinations.

### Verification

- **3:8 Decoder:** Each 3-bit input combination activates the corresponding output line.
- **8:3 Encoder:** Each active input line produces its corresponding 3-bit binary code.
- Testbenches are provided for functional verification.
- Schematics and simulation waveforms are included in the `Images` directory.

## Tools Used

- **Verilog HDL**
- **Cadence / NCLaunch**
- **Digital Design & Simulation**
- **Git & GitHub**

## Folder Structure

```text
Lab-5/
├── README.md
├── decoder.v
├── encoder.v
├── tb_decoder.v
├── tb_encoder.v
└── Images/
    ├── Decoder Schematic.png
    ├── Decoder waveform_.png
    ├── encoder schematic.png
    └── encoder waveform.png
```

## Result

The **3:8 Decoder** and **8:3 Encoder** were successfully implemented in Verilog HDL and verified through simulation using their respective testbenches.
