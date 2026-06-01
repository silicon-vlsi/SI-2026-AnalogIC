Title: Id-vs-Vgs for and NMOS in Saturation region
* From sqrt(1*Id) vs Vgs, Vt, Kp and gamma can be extracted

* Level-49 BSIM 3v1 Model Lobrary for 0.5um SCMOS Technology
.LIB scn4m_cnrs_bsim3v1.lib nom

* Level-1 Model 
.MODEL sitn NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

* Set the device temperature
.TEMP 27

* Netlist:
* Two diode connected (Drain/Gate shorted nmos 
* one with Level-1 model (M2) and another
* with Level-49 BSIM 3v1 model (M1) 
M1	D1	D1	0	B 	scmosn  W=5u L=1u
M2	D2	D2	0	B 	sitn    W=5u L=1u
Vds	D	0	DC	5
Vid1	D	D1	DC	0
Vid2	D	D2	DC	0
Vsb	0	B	DC	0

* DC Sweep Analyses
*.DC 	Vsrc	start	stop	step	Vsrc2	start stop step
.DC	Vds	0	5	0.001  Vsb  0 1 0.5

* ngspice Script with control statements.
.CONTROL
RUN
** Plot sqrt(2*Id) for M1 amd M2
PLOT (2*Vid2#branch)^0.5 (2*Vid1#branch)^0.5 vs V(D) 
*PLOT deriv(2*Vid2#branch) deriv(2*Vid1#branch) vs V(D) 
.ENDC

.END
