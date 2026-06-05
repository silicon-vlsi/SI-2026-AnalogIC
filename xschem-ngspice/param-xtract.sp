Title: Id-vs-Vgs for and NMOS in Saturation region
* Comparing the Level-1 and Level-49 SPICE model
* From sqrt(1*Id) vs Vgs, Vt, Kp and gamma can be extracted

* Level-1 Model 
.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

* Set the device temperature
.TEMP 27

* Netlist:
* diode connected (Drain/Gate shorted nmos 
M2	D2	D2	0	B 	nmos1    W=5u L=1u
Vds	D	0	DC	5
Vid2	D	D2	DC	0
Vsb	0	B	DC	0

* DC Sweep Analyses
*.DC 	Vsrc	start	stop	step	Vsrc2	start stop step
*.DC	Vds	0	5	0.001  Vsb  0 1 0.5
.DC	Vds	0	5	0.001  

* ngspice Script with control statements.
.CONTROL
RUN
** Plot sqrt(2*Id) for M1 amd M2
**PLOT Vid2#branch vs V(D)
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

.END
