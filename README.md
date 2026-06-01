# SI-2026 Analog IC Design

**SUMMER INTERNSHIP COURSE 2026**

##  Course Venue & Timings

- 📆 **DURATION**: May 25th till June 13th (3 weeks, Mon-Fri)
- ⏲️ **TIMINGS**:
  - Session-1: 🕙 **10:00am - 1:00pm**
  - Session-2: 🕝 **2:00pm - 5:00pm**
- 🏛️ **VENUE**: VLSI Lab 
- 👨‍🏫 **RESOURCE PERSONS**:
  - [Dr. Saroj Rout](https://sroutk.github.io) and [Prof. Prasant Swain](https://silicon.ac.in/wp-content/uploads/2022/04/Prasant-Kumar-Swain.pdf), *ECE*, *Silicon University*
  - [Dr. Santunu Sarangi](https://www.linkedin.com/in/santunu-sarangi-b731305b/), *Technical Lead & Site Head, Sevya Multimedia, Bhubaneswar*

**COURSE INFORMATION**

- 🔗 [**Course Detail**](content/course-detail.md)
- 🔗 [**Day-Wise Course Plan**](content/Day-Wise-Plan.md)
- **CAD and IT Setup** (These need to be setup before 2nd June)
  - 🔗 [Follow this guide](content/cad-install-setup-wsl-ubuntu.md) to install **Ubuntu 24.04** on **Windows Subsytem for Linux (WSL)**
    - ▶️ [YouTube video](https://youtu.be/-qRGRr0xy_c): quick walk through the installation and setup of WSL, Ubuntu and EDA tools.
  - 🔗 [Follow this quick start guide](https://www.makeuseof.com/tag/a-quick-guide-to-get-started-with-the-linux-command-line/) to get familiar with **Linux Command Line**
  - **nano** is a good text editor for begineers. 

# LAB EXERCISES

## EDA Exercises

- Lab0: Linux, nano/vim, git
  - [[Getting Started with Linux](content/lab0-getStarted-linux-cli.md)] [[Link to source page](https://www.makeuseof.com/tag/a-quick-guide-to-get-started-with-the-linux-command-line/)]
  - [Getting started with GitHub](content/lab0-getStarted-github.md)
- [Lab: Modeling of the MEMS microphone and analog front-end (AFE)](content/lab-eda-mic-amp.md)

## ADALM Exercises
- [Lab1: Introduction to ADALM 2000](content/lab1-adalm2k-intro.md)
- [Lab2: Voltage divider, Thevenin equivalance](content/lab2-adalm2k-thevenin.md)
- [Lab3: RC transient response](https://wiki.analog.com/university/courses/electronics/rc_transient_response) (From ADALM univ course page)
- [Lab4: Low-Pass Filter Bode Plot](https://wiki.analog.com/university/courses/electronics/lp_hp_filters)

# PROBLEMS/ASSIGNMENTS

- [Electric Circuit Problems](content/assignment-Electrical-Circuits.pdf)
- [RC Circuits](content/assignment-RC-Circuit.pdf)


# DAILY LOG

**WEEK-1**:

- **Day-1 (May 25, Mon)**:
  - :arrow_forward: [Course introduction](https://zoom.us/rec/share/OOBTsOISkuCPmlhbLhCYLFFPqYNNfJSXYKO9VQ62x1v5FaKe4dWXrz6dCp2GrkzF.0aFgevXVkF9kcaGj?startTime=1779686377000)
  - [USB Mic System Description](content/lec-usb-mic-system.md)
  - Getting started with Linux, git.
  - Basic circuit assesment quiz.
- **Day-2 (May 26, Tue)**:
  - Linear Circuits: Superposition, KCL, KVL, Node, Mesh, Thevnin, Norton and Max power transfer.
  - Ngspice-xschem Lab: voltage divider, Id-Vgs Level-1 MOS characteristic.
- **Day-3 (May 27, Wed)**:
  - RC Circuit transient analysis and problems.
  - Active OpAmp circuits.
  - ngspice Lab simulating RC circuits
    - Step response of RC and CR circuits and response for a pulse train when *RC >> tau*
- **Day-4 (May 28, Thu)**:
  - [Slides: RC and Active Circuit](content/lec-circuit-review.pdf)
  - Frequency resposne of linear circuits (high-pass/low-pass)
  - Lab: Getting started with ADALM 2000
- **Day-5 (May 29, Fri)**:
  - Thevenin equivalent of the MEMS microphone.
  - Modeling of the Analog Front-End (AFE) of the amplifier.
  - Lab: Getting started with ADALM 2000 (contd.)

**WEEK-2**:

- **Day-6 (June 1, Mon)**
  - [Lab: Modeling of MEMs Microphone and Analog Front-Edn (AFE)](content/lab-eda-mic-amp.md)
  - [Lab: Introduction to ADALM 2000](content/lab1-adalm2k-intro.md(contd.))
  - [Lab: Voltage divider, Thevenin equivalance](content/lab2-adalm2k-thevenin.md)
- **Day-7 (June 2, Tue)**
  - Introduction to IC Design flow.
  - Introdcution to Passive Devices
  - Lab: Microphone and AFE test and characterization.

# Resources

## TEXTS/REFERENCES

- **TEXTS**
  - [[JohnsMartin][JohnsMartin]] T. C. Carusone, D. A. Johns, and K. A. Martin, Analog Integrated Circuit Design, 2nd ed. Wiley, 2012. 
  - [[Uyemura][Uyemura]], John P. "*CMOS Logic Circuit Design*". Springer, 2007
  - [**Rout**], Saroj. 2025. IC Engineering I. [[eBook](https://mixignal-press.github.io/ebook-ice1/)]
    - Most of the notes covered during this PS will shared on this eBook.
- **REFERENCES**
  - [[Thomas][Thomas]] R. E., A. J. Rosa, and G. J. Toussaint, The Analysis and Design of Linear Circuits. John Wiley & Sons, 2016
  - [[Hodges][Hodges]] D.A., et.al., "_Analysis and Design of Digital Integrated Circuits_", Tata-McGraw Hill, 3rd Ed
  - [[Weste][Weste]]  Neil, and David Harris. "*CMOS VLSI Design: A Circuits and Systems Perspective*". Pearson Education, 2011 
  - [[Baker][Baker]], R. Jacob. "*CMOS: Circuit Design, Layout, and Simulation*". John Wiley & Sons, 2008
  - [[Gray][Gray]], Paul E., and Campbell L. Searle. "*Electronic Principles: Physics, Models and Circuits*". Wiley, 1969.
    - [15.2 Open-Circuit Time Constants as Design Aid](content/Gray-Searle-OpenCktTimeConstant.pdf)
    - Lecture notes on Open-Circuit Time Constant [ [Lec-26](https://www.eecs.tufts.edu/~saroj/docs/ee12-2008/pdfs/lecture26.pdf) | [Lec-27](https://www.eecs.tufts.edu/~saroj/docs/ee12-2008/pdfs/lecture27.pdf) ]


# COMPUTING RESOURCES

## EDA Resources

  - The following two videos are quick start guide to **xschem, ngspice**, and **Magic** (Note: it's based on GF180 PDK but shouldn't matter a lot)
    - :arrow_forward: [Video Tutorial Part-1][VideoXschemNgspice]: Design and Simulation using Xschem and ngspice
    - :arrow_forward: [Video Tutorial Part-2][VideoMagic]: Layout using Magic 
  - [This companion page](https://github.com/sscs-ose/sscs-chipathon-2026/tree/main/resources/Analog/eda) has some of the steps written down to help with the video tutorials.

  - **IIC-OSIC-TOOLS**
    - [OSIC-TOOLS GitHub Page](https://github.com/iic-jku/iic-osic-tools) The docker container with all the EDA tools preloaded. 

## End-to-End Design Flow

  - **End-to-End Design-to-Layout Flow**
    - [Open Source VLSI](https://github.com/stineje/gf180mcu-open-source-vlsi): A great detail set of deep tutorials from [James Stine](https://github.com/stineje) and team at OSU.

    - [Analog design flow with opensource tools](https://unic-cass.github.io/training/analog-flow.html): Great set of schematic-to-layout tutorials from [IEEE UNIC-CASS](https://unic-cass.github.io/) using the IHP-SG13G2 PDK. 
    - [Drawing an inverter](https://docs.google.com/document/d/1hSLKsz9xcEJgAMmYYer5cDwvPqas9_JGRUAgEORx1Yw/edit#heading=h.j6gtadx04fb6): A google doc by Ryan Ridley, Teo Ene, and James E. Stine. Detail step-by-step guide for SKY-130nm process.
    - :arrow_forward: [Video: Xschem-to-Magic Flow](https://www.youtube.com/watch?v=ZZ5fIBwLZ0k&t=2s): Tiny Tapeout Analog Submission Guide | IEEE Open Silicon IC Design Bootcamp (Philippines) A good 19min succint guide.
    - [Analog Circuit Design Flow](https://analogicus.com/rply_ex0_sky130nm/tutorial) by Carsten Wulff
    - [Open-Source Analog Design Flowing using EFabless and SKY130nm (PDF)](docs/Thater-OpenSource-AnalogDesgnFlow-Efabless-SKY130.pdf): Detail end-to-end design flow by by Joshua Thater.


## Xschem-ngspice

  - **xschem-ngspice**:
    - [Xschem Official Site][XSchem]
    - [ngspice Official Site][NGSpice]
    - [ngspice Manual][NGSpiceMan] [[PDF](https://ngspice.sourceforge.io/docs/ngspice-manual.pdf)]
      - [11.4 Measurement using .MEAS](https://ngspice.sourceforge.io/docs/ngspice-html-manual/manual.xhtml#subsec__MEAS)
    - [Analog (Integrated) Circuit Design](https://iic-jku.github.io/analog-circuit-design/aicd.html): An excellent analog course from Dr. Harald Pretl from Johannes Kepler University. The course uses xschem, ngspice and IHPSG13G2 for all exercises. 
    - [Tutorial: Run a simulation with xschem](https://xschem.sourceforge.io/stefan/xschem_man/tutorial_run_simulation.html): a quick step-by-step html guide from the creator Stefan Schippers.
    - [xschem displaying simulation waveform](https://www.youtube.com/watch?v=bP9w3zm1qv4): a 10min video on embedded graphs by Stephan Schippers.  
    - [Viewing Simulation Data with xschem](http://repo.hu/projects/xschem/xschem_man/graphs.html): html guide on the official site.
    - :arrow_forward: Three part *tutorial videos* using xschem and ngspice with GF180MCU
      - [Part-1](https://youtu.be/MdywD87-DVg) | [Part-2](https://youtu.be/DLvZSsLAbho) | [Part-3](https://youtu.be/nBnR8Nm_B_I)

## Magic

  - **Magic**

    - [Magic][Magic]: The official site of Magic at opencircuitdesign.com maintained by Tim Edwards. This site has everything you need: source-code/manuals/tutorials/etc
    - [Magic User Guide from OpenCircuitDesign](http://www.opencircuitdesign.com/magic/userguide.html)
    - [Magic cheaetsheet](https://github.com/iic-jku/osic-multitool/blob/main/magic-cheatsheet/magic_cheatsheet.pdf) by Harald Pretl.
    - :arrow_forward: **Videos**
      - :arrow_forward: [10min speedrun of a inverter layout by Matt Venn](https://www.youtube.com/watch?v=IQ_DcWT_cbc)
      - :arrow_forward: [Tutorial: Analog Layout of an OpAmp](https://youtu.be/XvBpqKwzrFY?si=AyL0Wr3V4gb954yx) by Tim Edwards. (~1hr 30min)
      - :arrow_forward: Magic Tutorials by Carsten Wulff [ [Tutorial-1](https://www.youtube.com/watch?v=ORw5OaY33A4&t=9s)|[Tutorial-2](https://www.youtube.com/watch?v=NUahmUtY814)|[Tutorial-3](https://www.youtube.com/watch?v=OKWM1D0_fPI) ]

# LAB Resources

- **LAB RESOURCES**
  - [ADALM 2000 Wiki](https://wiki.analog.com/m2k)
    - [ADALM User guide](https://wiki.analog.com/university/tools/m2k/users)
      - [ADALM 2000 Qucik Start: Install Drivers](https://wiki.analog.com/university/tools/m2k/users/quick_start)
    - [Install the GUI interface Scopy](https://wiki.analog.com/university/tools/m2k/scopy)
    - :arrow_forward: [ADLAM 2000 Video Series](https://www.youtube.com/watch?v=LCf-_iREESQ&list=PLE6soOeVPOJ0Pj5sMui4KPDiTa7HY50y3)
    - [Hardware Portal](https://wiki.analog.com/university/tools/m2k/devs/hardware): All **schematics, gerber, BOM**.
  - [Analog Devices Engineering Ubiversity Program](https://wiki.analog.com/university): Lots of great material including Labs, exercised and material related to ADALM M2K
  - 
 
# Useful Links, Quickrefs, etc

- **USEFUL DOCS**
  - [Skywater PDK and DRC Manual](docs/skywater-pdk-readthedocs-io-en-main.pdf)
  - [Datasheet: MEMS Microphone](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
  - [Datasheet: OPA344](https://www.ti.com/lit/ds/symlink/opa345.pdf?ts=1748277734116&ref_url=https%253A%252F%252Fwww.google.com%252F)
  - [Schematic: Sparkfun breakout board](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf)
- **QUICKREFS**
  - [Quick Start Guide for Linux Command Line](https://www.makeuseof.com/tag/a-quick-guide-to-get-started-with-the-linux-command-line/)
  - [Cheatsheet Linux](content/cheatsheet_linux.md)
  - [Cheatsheet ngspice](content/cheatsheet_ngspice.md)
  - [Cheatsheet Xschem](content/cheatsheet_xschem.md)
  - [Cheatsheet Magic](content/magic_cheatsheet.pdf) : by Prof. Harald Pretl


- **ONLINE RESOURCES**
  - [SparkFun Analog MEMS Microphone Breakout - SPH8878LR5H-1](https://www.sparkfun.com/sparkfun-analog-mems-microphone-breakout-sph8878lr5h-1.html)
  - [Using Perplexity Spaces](https://www.perplexity.ai/hub/blog/a-student-s-guide-to-using-perplexity-spaces)

- **GITHUB PAGE EXAMPLES**
  - [Digital Temp Monitor](https://github.com/silicon-efabless/tt06-silicon-tinytapeout-lm07)
  - [Bandgap Reference](https://github.com/silicon-vlsi/BGR_DESIGN_SKY130nm)
  - [CubeSat Summer Internship Student Report](https://github.com/DonaldB2003/SI-2024-CubeSat-SU)


---
&copy; 2026 Silicon University, Odisha  


***

[JohnsMartin]:  https://www.box.com/scl/fi/7jp5q4e3kvalnlbui7p5m/JohnsMartinCarusone-AnalogICDesign-2ndEd-Wiley-2012.pdf?rlkey=exl7b2bmfgoiqyku6f0qeyk7a&dl=0 
[Uyemura]:  https://www.box.com/scl/fi/rblfckfj6b2bds655ljw7/Uyemura-CMOS-LogicCircuitDesign-1999-Springer.pdf?rlkey=n18cw2raqi95rsoxb3gr478oj&dl=0 
[Thomas]:   https://www.box.com/scl/fi/83ygnyynx2sfex1h7tdhg/Thomas-AnalysisDesignOfLinearCkts-Wiley-2023.pdf?rlkey=4xzk0an1z7r3fcj936o0enjg4&dl=0 
[Hodges]:   https://www.box.com/scl/fi/43orxdtdm6u4u5mq68mc2/HodgesJackson-DesignAndAnalysisOfDigitalIC-3Ed-McGraw-2005.pdf?rlkey=1awl7pw48611qd8cnru6az7x5&dl=0 
[Weste]:    https://www.box.com/scl/fi/8i5pftaeux4x2kzj51cpr/Weste-Harris-CMOS-VLSI-design-Pearson-4thEd-2011.pdf?rlkey=g1efbminflmhqze5o2pc9rnl8&dl=0 
[Baker]:    https://www.box.com/scl/fi/h3nlnwc1wxho6e6naspiz/Baker-CMOScircuitDesignLayoutSimulation-3rdEd-2010.pdf?rlkey=85voahejqfzixpi317s08lkf4&dl=0 
[Gray]:     https://www.box.com/scl/fi/7l25x1ya6hfdz6c7anhza/Gray-Searle-ElectronicPrinciples-PhysicsModelsCircuits-Wiley-1969.pdf?rlkey=31fylmvffmchuteat87haymoj&dl=0 
   
[NGSpice]:              http://ngspice.sourceforge.net
[NGSpiceMan]:           http://ngspice.sourceforge.net/docs/ngspice-html-manual/manual.xhtml
[Magic]:                http://opencircuitdesign.com/magic/
[Netgen]:               http://opencircuitdesign.com/netgen/
[VideoXschemNgspice]:   https://drive.google.com/file/d/1QuJyBosXAcAIhj2Gz0zoxz_EHe3IlhK6/view?usp=sharing
[VideoMagic]:           https://drive.google.com/file/d/1ffgQrh8-0LQ_lEhNJCcJhuNUZTaG0cDd/view?usp=drive_link
[XSchem]:               https://xschem.sourceforge.io/stefan/index.html
