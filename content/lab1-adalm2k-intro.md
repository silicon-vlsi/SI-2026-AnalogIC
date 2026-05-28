# Lab: Introduction to the Analog Devices ADALM2000

## Overview

This 2-hour laboratory introduces undergraduate electrical engineering students to the Analog Devices ADALM2000 (M2K), a USB-powered software-defined instrument that works with the Scopy application on a computer [1][2]. The platform combines several lab tools in one device, including a two-channel oscilloscope, a two-channel arbitrary waveform generator, a voltmeter, and programmable power supplies, making it suitable for introductory circuits and measurements work [1][2].

In this lab, students learn how to connect the ADALM2000, identify the main Scopy instrument windows, and perform basic measurements using the voltage source, voltmeter, waveform generator, and oscilloscope [1][2]. The activities emphasize safe wiring, simple signal generation, and interpretation of measured voltage, resistance, frequency, and waveform shape [1][2].

## Learning Outcomes

By the end of this lab, students should be able to:

- Identify the ADALM2000 as a portable lab instrument controlled from a host computer through Scopy [1][2].
- Locate and use the basic Scopy tools needed for this session: power supplies, voltmeter, waveform generator, and oscilloscope [1][2].
- Generate a low-frequency sine and square wave using the waveform generator [1][2].
- Measure DC voltage in simple circuits using the voltmeter [1][2].
- Check resistor values using an appropriate resistance-measurement method available in the lab [3].
- Observe time-domain signals on the oscilloscope and estimate amplitude, offset, period, and frequency [1][2].
- Follow safe operating limits and good grounding practice while using a USB-powered instrument [1][2].

## Lab Duration

Total duration: 2 hours.

| Segment | Topic | Suggested Time |
|---|---|---:|
| 1 | Introduction, hardware tour, safety | 15 min |
| 2 | Connecting the ADALM2000 and opening Scopy | 15 min |
| 3 | Activity 1: Voltage source and DC measurement | 25 min |
| 4 | Activity 2: Voltmeter and resistance check | 20 min |
| 5 | Activity 3: Waveform generator | 20 min |
| 6 | Activity 4: Oscilloscope observation | 20 min |
| 7 | Wrap-up and submission | 5 min |

## Equipment

Each student group should have:

- 1 Analog Devices ADALM2000 unit [1][2].
- 1 computer with Scopy installed [1][2].
- 1 USB cable for the ADALM2000 connection [1].
- 1 solderless breadboard.
- Jumper wires.
- Resistors: 220 ohm, 1 kilo-ohm, and 10 kilo-ohm.
- Optional: BNC adapter board or grabber leads if available [2].

## Background

The ADALM2000 is designed as a compact learning platform for electronics education and can emulate several common bench instruments through software [1][2]. The official ADALM2000 and Scopy documentation describe features that include a two-channel oscilloscope with differential inputs, a two-channel arbitrary waveform generator, and meter functions for voltage measurement [1][2].

In this lab, four functions are highlighted:

1. **Voltage source**: the programmable supplies provide positive and negative rails for simple circuits [1][2].
2. **Voltmeter**: used to measure DC or AC voltage in basic circuits [1][2].
3. **Waveform generator**: produces sine, square, triangle, and other signals for testing circuits [1][2].
4. **Oscilloscope**: displays voltage versus time so students can measure amplitude, period, frequency, and DC offset [1][2].

## Safety and Good Practice

- Keep all signal and supply voltages within the ADALM2000 limits stated in the software and official documentation [1][2].
- Do not short the power supplies directly together or to ground.
- Turn supply outputs off before rewiring a circuit.
- Start with low waveform amplitudes, such as 1 V peak-to-peak or less, before increasing signal levels.
- Verify that ground/reference connections are correct before enabling outputs.
- Follow ESD precautions because the ADALM2000 contains ESD-sensitive devices [1].

## Pre-Lab Setup

Before class, ensure that the ADALM2000 drivers and Scopy are installed and that the device can be detected by the host computer [1][3]. After connecting the unit over USB, open Scopy and confirm that the ADALM2000 appears on the home screen before beginning the measurements [2][3].

## Hardware Orientation

[HARDWARE ORIENTATION](https://wiki.analog.com/university/tools/m2k/devs/intro) : See the **Block Diagram** and **PINOUT** from this intro page.

Ask students to identify the following before starting:

- USB connection to the computer.
- Oscilloscope input channels, typically 1+ / 1- and 2+ / 2- [2].
- Waveform generator outputs W1 and W2 [2].
- Power supply outputs, usually labeled for positive and negative rails [1][2].
- Ground/reference points used for measurement return.

Instructor note: explain that the ADALM2000 is software-defined, so the same hardware supports different virtual instruments depending on the Scopy tool selected [1][2].

## Procedure

### Activity 1: Voltage Source and DC Measurement

In this activity, students use the ADALM2000 power supply as a simple DC voltage source and verify the output with the voltmeter [1][2].

#### Connections

Build the following simple circuit on a breadboard:

- Connect the positive supply to one side of a 1 kilo-ohm resistor.
- Connect the other side of the resistor to ground.
- Leave the circuit powered off until checked by the instructor.

#### Steps

1. Open the power supply tool in Scopy [2].
2. Set the positive supply to +3.0 V and leave the negative supply disabled [1][2].
3. Enable the positive supply.
4. Open the voltmeter tool [2].
5. Measure the supply voltage across the resistor.
6. Record the measured value.
7. Change the supply to +1.0 V and then +4.0 V, measuring each time.

#### Observations

Students should observe that the measured DC voltage is close to the supply setting, with small deviations possible because of tolerance and measurement uncertainty. This demonstrates that the ADALM2000 can provide a controlled DC excitation and simultaneously verify the result using another instrument window in Scopy [1][2].

#### Table to Complete

| Supply setting (V) | Measured voltage (V) | Difference (V) |
|---|---:|---:|
| 1.0 |  |  |
| 3.0 |  |  |
| 4.0 |  |  |

#### Questions

1. Why is the measured voltage not always exactly equal to the set value?
2. What is the role of the ground/reference connection in this circuit?
3. Why should the supply be turned off before changing wiring?

### Activity 2: Voltmeter and Resistance Check

This activity introduces the voltmeter as a basic measurement tool and uses it in a simple resistor-identification exercise. The ADALM2000 documentation highlights the meter capability, while a starter lab from the University of Maryland provides a useful model for introductory ADALM2000 orientation and setup [2][3].

#### Part A: Measure DC Voltage at a Divider Node

Build a resistor divider using two 1 kilo-ohm resistors in series:

- Connect +4.0 V supply to the top of the first resistor.
- Connect the second resistor from the midpoint to ground.
- Measure the midpoint voltage with the voltmeter.

##### Steps

1. Keep the supply set to +4.0 V.
2. Build two equal resistors in series from supply to ground.
3. Measure the voltage at the midpoint relative to ground.
4. Record the reading and compare it with the expected value.

##### Expected result

For two equal resistors in series, the midpoint should be approximately half the supply voltage, so students should measure close to 2.0 V.

#### Part B: Resistance Check with Power Off

Use a handheld DMM for direct resistance measurement if available, or ask students to infer resistor value from labeled components or voltage-divider behavior if the lab setup does not use a dedicated ADALM2000 resistance mode [2][3]. This part reinforces the idea that resistance should be checked only on an unpowered circuit.

##### Steps

1. Turn off all power outputs.
2. Remove one resistor from the active circuit if needed.
3. Identify its nominal value from the color bands.
4. Verify the value using the available resistance-measurement method in your lab setup.
5. Record whether the measured value is within tolerance.

#### Table to Complete

| Component | Nominal value | Measured/verified value | Within tolerance? |
|---|---|---|---|
| Resistor 1 | 1 kilo-ohm |  |  |
| Resistor 2 | 1 kilo-ohm |  |  |
| Resistor 3 | 10 kilo-ohm |  |  |

#### Questions

1. Why must resistance be measured only when the circuit is unpowered?
2. In the divider circuit, why is the midpoint near half the supply voltage?
3. How would the midpoint voltage change if one resistor were much larger than the other?

### Activity 3: Waveform Generator

This activity introduces the arbitrary waveform generator, one of the core ADALM2000 tools available through Scopy [1][2].

#### Connections

- Connect waveform generator output W1 to oscilloscope channel 1 positive input.
- Connect the waveform generator ground/reference to oscilloscope channel 1 negative input or common reference as used in your setup.

#### Steps

1. Open the waveform generator in Scopy [2].
2. Select channel W1.
3. Configure a sine wave with frequency 1 kHz, amplitude 1 V peak-to-peak, and 0 V offset.
4. Enable the output.
5. Observe the signal first on the oscilloscope preview if available, then in the oscilloscope tool.
6. Change the waveform to a square wave, keeping frequency at 1 kHz.
7. Change the frequency to 5 kHz.
8. Change the DC offset to +0.5 V and note the effect.

#### Observations

Students should see that waveform shape, frequency, amplitude, and offset can be adjusted independently in software. They should also note that a DC offset shifts the entire waveform upward or downward without changing the basic shape [1][2].

#### Table to Complete

| Waveform | Set frequency | Measured frequency | Set amplitude | Observed comments |
|---|---|---|---|---|
| Sine | 1 kHz |  | 1 Vpp |  |
| Square | 1 kHz |  | 1 Vpp |  |
| Square | 5 kHz |  | 1 Vpp |  |

#### Questions

1. What visual difference do you observe between sine and square waves?
2. What happens to the waveform when a DC offset is applied?
3. Why is the waveform generator useful in circuit testing?

### Activity 4: Oscilloscope

This activity focuses on basic oscilloscope operation using the waveform produced in Activity 3. The ADALM2000 provides a two-channel oscilloscope with differential inputs, allowing students to examine time-varying voltages directly in Scopy [1][2].

#### Steps

1. Open the oscilloscope tool in Scopy [2].
2. Display channel 1.
3. Adjust volts/div and time/div until the waveform is clearly visible.
4. Use the measurement or cursor tools to estimate peak-to-peak voltage.
5. Measure the period of the 1 kHz waveform.
6. Compute the frequency from the measured period.
7. Increase the time base to compare 1 kHz and 5 kHz signals.
8. Capture a screenshot of one stable waveform display for submission.

#### Calculations

Use the relationship:

\[
f = \frac{1}{T}
\]

where \(f\) is frequency and \(T\) is the measured period.

Example: if \(T = 1\,\text{ms}\), then the frequency is 1 kHz.

#### Table to Complete

| Signal | Measured period | Calculated frequency | Measured Vpp | Measured offset |
|---|---|---|---|---|
| Sine wave |  |  |  |  |
| Square wave |  |  |  |  |

#### Questions

1. How does changing the time/div setting affect the displayed waveform?
2. How does changing the volts/div setting affect the displayed waveform?
3. Why is triggering important for a stable display?
4. Compare the measured frequency with the generator setting. Are they close?

## Suggested Instructor Demonstration

A short live demonstration at the start helps students move faster through the lab. Demonstrate how to connect the ADALM2000, open Scopy, enable a low-voltage waveform, and route W1 directly into oscilloscope channel 1 before students begin independent work [2][4].

## Deliverables

Each student group should submit:

- Completed observation tables.
- Answers to the activity questions.
- One oscilloscope screenshot showing a stable waveform display.
- A short note stating which Scopy tools they used.

## Assessment Rubric

| Item | Marks |
|---|---:|
| Correct setup and safe wiring | 20 |
| Voltage source and voltmeter measurements | 20 |
| Resistance/divider interpretation | 20 |
| Waveform generator operation | 20 |
| Oscilloscope measurements and screenshot | 20 |

## Common Issues

- Device not detected: reconnect USB, confirm drivers, and restart Scopy [2][3].
- No waveform visible: check that the generator output is enabled and the oscilloscope wiring is correct.
- Unstable display: adjust trigger level and time base.
- Incorrect DC measurement: confirm that the reference/ground node is connected properly.
- Unexpected resistor reading: power off the circuit before checking resistance.

## Post-Lab Reflection

Students should be able to explain how one compact USB instrument can replace several separate bench tools for introductory experiments [1][2]. They should also recognize that the waveform generator and oscilloscope are most powerful when used together, because one creates a known excitation while the other verifies the real signal present in the circuit [1][2].

## Extension Ideas

For a follow-up lab, consider adding one of the following:

- Verification of Ohm's law using measured voltage and current.
- RC charging and discharging observed on the oscilloscope.
- Frequency response of a simple RC low-pass filter.
- Comparison of sine, square, and triangle wave spectra.

## Sources

[1] Analog Devices, "ADALM2000 Evaluation Board." Available at: <https://www.analog.com/en/resources/evaluation-hardware-and-software/evaluation-boards-kits/adalm2000.html>

[2] Analog Devices, "ADALM2000 — Scopy documentation." Available at: <https://analogdevicesinc.github.io/scopy/plugins/m2k/index.html>

[3] University of Maryland, "Lab 0 - Getting Started with the ADALM2000." Available at: <https://user.eng.umd.edu/~lawson/Lab%200%20-%20Getting%20Started%20with%20the%20ADALM2000.pdf>

[4] University of Illinois Urbana-Champaign, "ADALM2000 (M2k) Tutorial." Available at: <https://courses.grainger.illinois.edu/ece110/content/labs/Experiments/Tool_M2k_tutorial.pdf>
