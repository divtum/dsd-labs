# Lab 7: Comparator and Ripple Carry Adder

## Objective

- To design and implement a digital comparator using Verilog HDL.
- To design a Ripple Carry Adder (RCA) for binary addition.
- To verify the functionality of both circuits using Verilog testbenches and waveform simulation.
- To analyze the circuit schematics and simulation waveforms to validate the expected outputs.

## Experiments

### 1. Comparator

A comparator is a combinational logic circuit that compares two binary inputs and determines their relative magnitudes. Depending on the implementation, it generates outputs indicating whether one input is greater than, less than, or equal to the other.

**Verilog Files:**
- `comparator.v` — Verilog implementation of the comparator.
- `tb_comparator.v` — Testbench used to verify the comparator's functionality.

**Circuit Schematic:**

![Comparator Schematic](<.Images/comparator schematic.png>)

**Simulation Waveform:**

![Comparator Waveform](<.Images/comparator waveform.png>)

### 2. Ripple Carry Adder (RCA)

A Ripple Carry Adder is a combinational circuit used to add two binary numbers. It consists of interconnected full-adder stages, where the carry output of each stage is passed to the next stage. The carry propagates sequentially through the circuit, producing the final sum and carry output.

**Verilog Files:**
- `rca.v` — Verilog implementation of the Ripple Carry Adder.
- `tb_rca.v` — Testbench used to verify the adder's functionality.

**Circuit Schematic:**

![Ripple Carry Adder Schematic](<.Images/rca schematic.png>)

**Simulation Waveform:**

![Ripple Carry Adder Waveform](<.Images/rca waveform.png>)

## Simulation and Verification

Both circuits were tested using Verilog testbenches. Different input combinations were applied to verify the expected output behavior.

- **Comparator:** The simulation verifies the comparison results for the applied input combinations.
- **Ripple Carry Adder:** The simulation verifies the sum and carry outputs for the applied binary operands.

The generated waveforms are used to inspect the input-output relationships and confirm the expected logical behavior of the circuits.

## Conclusion

The comparator and Ripple Carry Adder were designed using Verilog HDL and verified through testbench simulations. The circuit schematics and waveforms provide visual evidence of the implementations and their expected behavior, reinforcing the concepts of combinational logic design and digital arithmetic.

