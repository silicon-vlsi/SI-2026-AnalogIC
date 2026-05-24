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
- Explain why loading changes the output voltage of a resistor divider.
- Recommend the limit of the load for output voltage to be within 90\% of open-circuit voltage. 

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
- Resistors: Find the standard resistor values to meet the requirements. 


