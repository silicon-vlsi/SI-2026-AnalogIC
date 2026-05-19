# Day-Wise Plan

## Week-1

- **Day 1** (02 June 2025)
  - A talk by our external expert Mr. Mrinal Das
  - Introduction to the Course.
  - System Description of the USB Microphone.
  - Assignment: Derive system specifications from the provided datasheet.
- **Day 2** (03 June)
  - Derive system specification for the USB microphone Analog Front-End (AFE)
  - Introduction to basic linux commands and editor vi or nano.
  - Introduction to _Xschem_ schematic editor and _ngspice_ simulator.
- **Day-3-4** (04-05 June)
  - Model and implement the AFE on Xschem and simulate on ngspice.
    - Modeling the microphone as a Thevenin's equivalent.
    - Modeling the OpAmp as a single-pole system.
- **Day 5** (06 June)
  - Derivation of passive resistors and capacitors.
  - Introduction to MOS device:
    - Basic pn junctions.
    - MOS as a capacitor.
   
## Week-2

- **Day 6** (09 June)
  - Introduction to MOS device (contd.):
    - Threshold voltage
    - IV Chracteristics
    - Parasitic Capacitor
  - Device Modeling
  - Parameter extraction using _ngspice_
- **Day 7-10** (10-13 June)
  - Basic analog building blocks:
    - Current mirror design: simple, cascode and wide-swing mirrors
    - Small-signal modeling
    - Basic understanding of differential amplifiers.
    - Frequency response of linear circuits.
    - Design of a folded cascode amplifier using CMOS 130nm.

## Week-3

- **Day 11-15** (16-20 June)
  - Implementation of the design
    - All the designs will be done using Skywater 130nm CMOS technology.
    - Schematic capture using open-source _xschem_.
    - Simulation will be done using _ngspice_.
    - Layout and final verification will be done using _magic_ and _netgen_.
  - Design, test and characterization of a USB-MIDI microphone. (As time permits)
    - System design and simulation using  with ngspice (or. LTSpice).
    - PCB design with Eagle.
    - Reference schematic & PCB will be provided to expedite it.
    - Test & characterization using Python libraries numpy, scipy and matplotlib.

  
