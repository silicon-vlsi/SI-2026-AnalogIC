# Lab: Modeling of MEMs Microphone and Analog Front-Edn (AFE)

- From the [Microphone datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) derive the Thevenin equivalent ($v_{th}$ and $R_{th}$) of the MEMS microphone for input of 60 dB-SPL at 1 kHz.
- From the [OPA344 datasheet](https://www.ti.com/lit/ds/symlink/opa345.pdf), model the amplifier as a voltage-controlled voltage-source (vcvs) with the gain set to that of the DC gain of the OpAmp.
- Using the [breakout board schematic](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf) model the entire analog front-end using xschem. 
- Using the microphone as AC voltage source (AC=1), from the AC simulation do the following:
  - Plot $v{out}$ in decibels and phase of the transfer function, and using `.MEASURE` or (`MEASURE` in control) measure the following:
    - The magnitude and decibel of $v_{out}$ at 1 kHz
    - -3 dB frequency of the high-pass filter
    - -3 dB frequency of the low-pass filter
- Now use the voltage source as an AC source (make sure input AC is zero) and measure the power supply gain (in dB).
- Now apply a sine wave of 1 kHz in the input with the amplitude derived in your thevenin model and do a transient simulation and using measure statement measure the following: 
  - measure the peak voltage of the output
  - measure the peak voltage of the input
  - calculate the gain  
  - Do the above three measurement for 1 Hz as 200 kHz input and check it if matches the transient simulation.
- Finally, model the OpAmp as a single-pole amplfier (find the pole from the datasheet) and rerun all the above measurement. 

