4-Bit Ring Counter Using Verilog HDL

Overview

This project implements a 4-bit Ring Counter using Verilog HDL.

A ring counter is a type of shift register where the output of the last flip-flop is connected back to the input of the first flip-flop. A single logic "1" circulates through the counter for every clock pulse.

Sequence

The 4-bit ring counter follows this sequence:

0001
0010
0100
1000
0001
...

Features

- 4-bit ring counter
- Written in Verilog HDL
- Synchronous counter operation with clock
- Reset initializes the counter to "0001"
- Testbench included
- Simulation output included

Files

ring-counter-verilog/
│
├── README.md
├── ring_counter.v
├── ring_counter_tb.v
└── simulation/
    └── simulation_output.txt

Module Description

Inputs

Signal| Width| Description
"clk"| 1 bit| Clock signal
"reset"| 1 bit| Reset signal

Output

Signal| Width| Description
"q"| 4 bits| Ring counter output

Working Principle

When reset is activated, the counter is initialized to:

0001

For every positive edge of the clock, the logic "1" shifts to the next position:

0001 → 0010 → 0100 → 1000 → 0001

This process repeats continuously.

Verilog Implementation

The counter uses a shift operation:

q <= {q[2:0], q[3]};

This moves the bits and feeds the last bit back into the counter.

Testbench

The testbench:

1. Generates the clock signal.
2. Applies reset.
3. Releases reset.
4. Observes the counter output.
5. Displays the output using "$monitor".
6. Stops the simulation after a fixed time.

Expected Output

0001
0010
0100
1000
0001
0010
0100
...

Applications

Ring counters are used in:

- Sequence generation
- Timing circuits
- Digital control systems
- Frequency division
- LED chaser circuits
- State-machine applications

Advantages

- Simple circuit design
- Easy to implement
- Requires fewer decoding circuits
- Useful for generating repeating sequences

Limitations

- A 4-bit ring counter requires four flip-flops.
- It normally requires an initial "1" state.
- If all bits become "0", the counter can remain in the zero state without proper initialization.

Tools

This project can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- Vivado

Conclusion

The 4-bit Ring Counter was successfully designed and simulated using Verilog HDL. The simulation demonstrates that a single logic "1" circulates through the four-bit register on every clock pulse.