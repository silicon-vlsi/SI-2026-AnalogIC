# Cheatsheet: ngspice 

Here is an unsorted list of useful ngspice settings and command:
## Reference Netlist and Commands

``` spice
* Level-1 Model 
.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

* Junction Temperature
.TEMP 27

*Vpulse n1	n2	PULSE v1 v2 td tr tf pw per
Vpulse	vin     0   DC=0 AC=1 PULSE 0 5 2n 10p 10p 10n 20n

* Sim commands
.DC	Vds	0	5	0.001  Vsb  0 1 0.5
.TRAN 1p 30n

.MEASURE TRAN tr1090 TRIG v(vout) VAL=0.5 RISE=1 TARG v(vout) VAL=4.5 RISE=1
.CONTROL
  RUN
  SAVE all
  AC DEC 100 10 10e9
  MEAS AC vdbmax MAX vdb(vout)
  LET v3db = vdbmax - 3.0
  MEAS AC f3db WHEN vdb(vout)=v3db fall=last
  write rc-step.raw
  PLOT Vid2#branch vs V(D)
  PLOT (2*Vid2#branch)^0.5  vs V(D) 
** Calculating uCox from rt-Id-Vgs slope
  LET rt_id=Vid2#branch^0.5 
  LET d_rt_id=deriv(rt_id)
  MEAS DC d_at_1v FIND d_rt_id AT=2.0
  LET ucox=(2.0/5.0)*d_at_1v^2.0
  print ucox
** Calculating Vt by calculating the intercept
  MEAS DC rt_id_at_1  FIND rt_id AT=2.0
  LET Vt=2.0-(d_at_1v^-1 * rt_id_at_1)
  print Vt
.ENDC

```

## Commands

- `.MODEL <name> <type> ()` eg. Level-1 model:
  - `.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)`
- `ac dec|lin points fstart fstop` performs a small-signal ac analysis with either linear or decade sweep
- `dc sourcename vstart vstop vincr [src2 start2 stop2 incr2]` runs a dc-sweep, optionally across two variables
  - `.DC	Vds	0	5	0.001  Vsb  0 1 0.5`
- `display` shows the available data vectors in the current plot
- `echo` can be used to display text, `$variable` or `$&vector`, can be useful for debugging
- `let name = expr` to create a new vector; `unlet vector` deletes a specified vector; access vector data with `$&vec`
- `linearize vec` linearizes a vector on an equidistant time scale, do this before an FFT; with `set specwindow=windowtype` a proper windowing function can be set
- `Vx n1 n1 DC 0 AC 1 SIN(0 1 1MEG)` : Independent voltage source with DC=0V AC=1V and 1 MHz sine wave with 1V amplitude.
  - `SIN(Voffset Vamplitude FREQ Tdelay THETA PHASE)`
- `meas` can be used for various evaluations of measurement results (see [11.4 ngspice manual](https://ngspice.sourceforge.io/docs/ngspice-html-manual/manual.xhtml#subsec__MEAS) for details)
  - Rise time: `.MEASURE TRAN tr1090 TRIG v(vout) VAL='0.1*PAR_VDD' RISE=1 TARG v(vout) VAL='0.9*PAR_VDD' RISE=1`
  - Fall delay: `.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD' FALL=1`
  - Avg current: `.MEASURE TRAN iavg AVG vsup#branch FROM=PAR_DEL TO='PAR_DEL+PAR_PER'`
- `noise v(output <ref>) src (dec|lin) pts fstart fstop` runs a small-signal noise analysis
- `op` calculates the operating point, useful for checking bias points and device parameters
- `plot expr vs scale` to plot something
- `print expr` to print it, use `print all` to print everything
- `remzerovec` can be useful to remove vectors with zero length, which otherwise cause issues when saving or plotting data
- `rusage` plot information about resource usage like memory
- `save all` or `save signal` specifies which data is saved during simulation; this lowers RAM usage during simulation and size of RAW file; do save before the actual simulation statement
- `setplot` show a list of available plots
- `set var = value` to set the value of a variable; use variable with `$var`; `unset var` removes a variable
- `set enable_noisy_r` to enable noise of behavioral resistors; usually, this is a good idea
- `shell cmd` to run a shell command
- `show : param`, like `show : gm` shows the $\gm$ of all devices after running an operating point with `op`
- `spec` plots a spectrum (i.e. frequency domain plot)
- `status` shows the saved parameters and nodes
- `tf` runs a transfer function analysis, returning transfer function, input and output resistance
- `tran tstep tstop <tstart <tmax>>` runs a transient analysis until `tstop`, reporting results with `tstep` step size, starting to plot at `tstart` and performs time steps not larger then `tmax`
- `wrdata` writes data into a file in a tabular ASCII format; easy to further process
- `write` writes simulation data (the saved nodes) into a RAW file; default is binary, can be changed to ASCII with `set filetype=ascii`; with `set appendwrite` data is added to an existing file

## Options

Use `option option=val option=val` to set various options; important ones are:

- `abstol` sets the absolute current error tolerance (default is 1pA)
- `gmin` is the conductance applied at every node for convergence improvement (default is 1e-12); this can be critical for very high impedance circuits
- `klu` sets the KLU matrix solver
- `list` print the summary listing of the input data
- `maxord` sets the numerical order of the integration method (default is 2 for Gear)
- `method` set the numerical integration method to `gear` or `trap` (default is `trap`)
- `node` prints the node table
- `opts` prints the option values
- `temp` sets the simulation temperature
- `reltol` set the relative error tolerance (default is 0.001 = 0.1%)
- `savecurrents` saves the terminal currents of all devices
- `sparse` sets the sparse matrix solver, which can run noise analysis, but is slower than `klu`
- `vntol` sets the absolute voltage error tolerance (default is 1µV)
- `warn` enables the printing of the SOA warning messages

## Convergence Helper

- `option gmin` can be used to increase the conductance applied at every node
- `option method=gear` can lead to improved convergence
- `.nodeset` can be used to specify initial node voltage guesses
- `.ic` can be used to set initial conditions
