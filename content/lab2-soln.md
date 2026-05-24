# Lab 2: Create a 1.5 V Source from a 3 V Supply Using a Resistor Divider

## Overview

This laboratory asks students to design and build a resistor divider that produces 1.5 V from a 3 V DC source, while ensuring that the divider current does not exceed approximately 1 mA [1][2]. The experiment then uses Thévenin-equivalent analysis to model the divider as a source voltage in series with an equivalent resistance, followed by measurement-based verification using the ADALM2000 and Scopy [1][2].

The ADALM2000 is suitable for this activity because it includes programmable power supplies, voltmeter functions, and oscilloscope capability in one USB-powered platform controlled through Scopy [1][2]. This lab builds directly on the introductory ADALM2000 lab by asking students not only to wire and measure a circuit, but also to connect circuit theory with measured behavior [1][2].

## Learning Outcomes

By the end of this lab, students should be able to:

- Design a two-resistor divider that converts 3 V to 1.5 V with divider current not exceeding 1 mA.
- Calculate the Thévenin voltage and Thévenin resistance seen at the divider output terminals.
- Measure the open-circuit voltage of the divider using the ADALM2000 voltmeter [1][2].
- Estimate the Thévenin resistance from load measurements and compare it with the calculated value.
- Explain why loading changes the output voltage of a resistor divider 

## Lab Duration

Total duration: 2 hours.

| Segment | Topic | Suggested Time |
|---|---|---:|
| 1 | Theory review and design calculation | 20 min |
| 2 | Build the 3 V to 1.5 V divider | 20 min |
| 3 | Measure open-circuit output voltage | 20 min |
| 4 | Calculate Thévenin equivalent | 20 min |
| 5 | Measure Thévenin equivalent with a load | 30 min |
| 6 | Comparison and submission | 10 min |

## Equipment

Each student group should have:

- 1 Analog Devices ADALM2000 unit [1][2].
- 1 computer with Scopy installed [1][2].
- 1 solderless breadboard.
- Jumper wires.
- Resistors: at least two 3.3 kilo-ohm resistors, plus one load resistor such as 3.3 kilo-ohm or 4.7 kilo-ohm.
- Optional handheld DMM for resistor verification.

## Theory

### Divider Design

For a two-resistor divider with output taken across the lower resistor,

\[
V_{out} = V_{in}\frac{R_2}{R_1 + R_2}
\]

To obtain 1.5 V from a 3 V source, the output must be exactly half of the input, so a simple choice is:

\[
R_1 = R_2
\]

The divider current is:

\[
I = \frac{V_{in}}{R_1 + R_2}
\]

Because the divider current must not exceed 1 mA,

\[
R_1 + R_2 \geq \frac{3\text{ V}}{1\text{ mA}} = 3\text{ k}\Omega
\]

A convenient standard-value choice is:

- \(R_1 = 3.3\text{ k}\Omega\)
- \(R_2 = 3.3\text{ k}\Omega\)

This gives:

- Total resistance = 6.6 kilo-ohm
- Divider current = \(3\text{ V}/6.6\text{ k}\Omega \approx 0.455\text{ mA}\)
- Ideal unloaded output voltage = 1.5 V

This design satisfies the current limit because 0.455 mA is less than 1 mA.

### Thévenin Equivalent

Viewed from the output node to ground, the resistor divider can be replaced by its Thévenin equivalent:

- Thévenin voltage: open-circuit output voltage
- Thévenin resistance: resistance seen looking back into the divider with the source set to zero

For the chosen divider,

\[
V_{th} = V_{out,oc} = 3\text{ V}\cdot \frac{3.3\text{ k}\Omega}{3.3\text{ k}\Omega + 3.3\text{ k}\Omega} = 1.5\text{ V}
\]

To find \(R_{th}\), replace the ideal 3 V source with a short circuit. Then the two resistors appear in parallel:

\[
R_{th} = R_1 \parallel R_2 = \frac{R_1R_2}{R_1 + R_2}
\]

So,

\[
R_{th} = 3.3\text{ k}\Omega \parallel 3.3\text{ k}\Omega = 1.65\text{ k}\Omega
\]

The predicted Thévenin equivalent is therefore:

- \(V_{th} = 1.5\text{ V}\)
- \(R_{th} = 1.65\text{ k}\Omega\)

## Pre-Lab Questions

Answer these before starting the circuit:

1. Why must \(R_1 = R_2\) to obtain 1.5 V from 3 V in an ideal unloaded divider?
2. Why is the current limit requirement equivalent to a minimum total divider resistance?
3. What happens to the output voltage when a load resistor is connected to the divider output?
4. Why is the Thévenin resistance found by shorting an ideal voltage source?

## Circuit

Build the following resistor divider:

```text
+3 V o---- R1 = 3.3 kΩ ----+---- R2 = 3.3 kΩ ----o GND
                            |
                          Vout
```

Use the ADALM2000 positive power supply as the 3 V source and the ADALM2000 ground as the circuit reference [1][2].

## Procedure

### Part A: Build the Divider

1. Open Scopy and connect to the ADALM2000 [1][2].
2. Set the positive power supply to +3.0 V and keep the negative supply off [1][2].
3. Place two 3.3 kilo-ohm resistors in series on the breadboard.
4. Connect the top of the series pair to +3.0 V.
5. Connect the bottom of the series pair to ground.
6. Label the midpoint between the two resistors as \(V_{out}\).
7. Ask the instructor to verify the wiring before enabling the supply.
8. Enable the +3.0 V supply.

### Part B: Measure the Open-Circuit Output Voltage

1. Open the voltmeter in Scopy [2].
2. Measure the voltage at \(V_{out}\) with respect to ground.
3. Record the value as the open-circuit voltage \(V_{oc}\).
4. Compare the measured value with the expected value of 1.5 V.

### Part C: Calculate the Thévenin Equivalent

Using the resistor values actually used in the circuit, calculate:

1. Divider current \(I\)
2. Thévenin voltage \(V_{th}\)
3. Thévenin resistance \(R_{th}\)

Use the formulas from the theory section.

### Part D: Measure the Thévenin Equivalent with a Load

To estimate the Thévenin resistance experimentally, connect a known load resistor \(R_L\) from \(V_{out}\) to ground. A 3.3 kilo-ohm load resistor is recommended because it produces a visible voltage change without drawing excessive current.

#### Recommended load setup

```text
+3 V o---- R1 ----+---- R2 ----o GND
                  |
                  +---- RL ----o GND
```

#### Steps

1. Turn off the supply before adding the load resistor.
2. Connect \(R_L = 3.3\text{ k}\Omega\) from \(V_{out}\) to ground.
3. Turn the 3 V supply back on.
4. Measure the loaded output voltage and record it as \(V_L\).
5. Remove power and verify the load resistor value if needed.

#### Experimental Thévenin resistance

Using the Thévenin model,

\[
V_L = V_{th}\frac{R_L}{R_{th}+R_L}
\]

Rearranging,

\[
R_{th} = R_L\left(\frac{V_{th}}{V_L}-1\right)
\]

Use the measured \(V_{oc}\) as the experimental estimate of \(V_{th}\), and use the measured loaded voltage \(V_L\) to compute the experimental \(R_{th}\).

### Part E: Optional Direct Verification with a Rebuilt Thévenin Circuit

If time permits, rebuild the divider as its predicted Thévenin equivalent:

- a 1.5 V source in series with a 1.65 kilo-ohm resistor feeding the same load resistor

Then compare the load voltage with the original divider circuit. The two circuits should produce nearly the same loaded output voltage when component tolerances are small.

## Sample Calculations

For \(R_1 = R_2 = 3.3\text{ k}\Omega\) and \(R_L = 3.3\text{ k}\Omega\):

### Divider current

\[
I = \frac{3\text{ V}}{3.3\text{ k}\Omega + 3.3\text{ k}\Omega} = 0.455\text{ mA}
\]

### Thévenin equivalent

\[
V_{th} = 1.5\text{ V}
\]

\[
R_{th} = 1.65\text{ k}\Omega
\]

### Expected loaded voltage

\[
V_L = 1.5\text{ V}\cdot\frac{3.3\text{ k}\Omega}{1.65\text{ k}\Omega + 3.3\text{ k}\Omega} = 1.0\text{ V}
\]

So if students use a 3.3 kilo-ohm load resistor, they should expect a loaded voltage close to 1.0 V.

## Data Tables

### Table 1: Design Values

| Quantity | Value |
|---|---:|
| Input voltage \(V_{in}\) | 3.0 V |
| \(R_1\) | 3.3 kΩ |
| \(R_2\) | 3.3 kΩ |
| Calculated divider current | 0.455 mA |
| Calculated \(V_{th}\) | 1.5 V |
| Calculated \(R_{th}\) | 1.65 kΩ |

### Table 2: Measured Values

| Quantity | Measured value |
|---|---:|
| Actual supply voltage |  |
| Open-circuit output voltage \(V_{oc}\) |  |
| Load resistor \(R_L\) |  |
| Loaded output voltage \(V_L\) |  |
| Experimental \(R_{th}\) |  |

### Table 3: Comparison

| Quantity | Calculated | Measured | Percent difference |
|---|---:|---:|---:|
| Thévenin voltage | 1.5 V |  |  |
| Thévenin resistance | 1.65 kΩ |  |  |

## Post-Lab Questions

1. Did the measured open-circuit voltage match the calculated 1.5 V? If not, what factors may explain the difference?
2. Did the measured Thévenin resistance match the calculated parallel combination of the two divider resistors?
3. Why does the loaded output voltage become smaller than the open-circuit output voltage?
4. What would happen to \(R_{th}\) if larger resistor values were used while keeping \(R_1 = R_2\)?
5. What advantage is gained by replacing a resistor network with its Thévenin equivalent?

## Deliverables

Each student group should submit:

- A neat circuit sketch or breadboard photo.
- Completed data tables.
- One set of sample calculations showing the divider current, \(V_{th}\), and \(R_{th}\).
- The measured load voltage and experimental Thévenin resistance.
- A short statement on whether the measured and calculated Thévenin equivalents match within reasonable experimental error.

## Assessment Rubric

| Item | Marks |
|---|---:|
| Correct divider design and current-limit check | 20 |
| Correct circuit construction and safe use of ADALM2000 | 20 |
| Correct Thévenin calculations | 25 |
| Measurement quality and comparison with theory | 25 |
| Discussion and conclusions | 10 |

## Common Issues

- Output not near 1.5 V: check that the two divider resistors are equal and wired in series.
- Divider current too high: verify that the total divider resistance is at least 3 kilo-ohm.
- Loaded voltage much lower than expected: check the actual value of the load resistor.
- Measured Thévenin resistance mismatch: confirm the algebra used to extract \(R_{th}\) from the loaded-voltage measurement.
- Unstable or incorrect measurement: verify all ground/reference connections in Scopy [2].

## Sources

[1] Analog Devices, "ADALM2000 Evaluation Board." Available at: <https://www.analog.com/en/resources/evaluation-hardware-and-software/evaluation-boards-kits/adalm2000.html>

[2] Analog Devices, "ADALM2000 — Scopy documentation." Available at: <https://analogdevicesinc.github.io/scopy/plugins/m2k/index.html>
