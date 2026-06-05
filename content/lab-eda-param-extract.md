# MOS Parameter Extraction using ngspice

This lab exercise is to extract "Level-1" parameters mainly:
 
- `Vth` (V) : Threshold voltage
- `Kappa` (uA/V^2) : `uCox` mobility times the gate capacitance.
- `Gamma` (sqrt(V) : Body-effect Parameter.
- `Lambda` : Channel length modulation.

You can use the this [netlist](xschem-ngspice/param-extract.sp) as a reference.

# Parameter Extraction of Level-1 Model

Use the following Level-1 nMOS model:

``` spice
* Level-1 Model 
.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VT0=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)
```

- Create a schemtic with a "diode-connected transistor". Example netlist:

``` spice
MN	D	D	0	B 	nmos1    W=5u L=1u
Vds	D	0	DC	5
Vsb	0	B	DC	0
```
  
- Do a DC sweep of Vds and measure the drain current Id
- From the sqrt(Id)-vs-Vgs relation, extract the following parameters:
  - `Vth` (V) : Threshold voltage
  - `Kappa` (uA/V^2) : `uCox` mobility times the gate capacitance.
  - `Gamma` (sqrt(V) : Body-effect Parameter.
- Here is an example `Spice` script to extract `Vth` and `Kappa (uCox)`:

``` spice
LET rt_id=Vid2#branch^0.5 
LET d_rt_id=deriv(rt_id)
MEAS DC d_at_1v FIND d_rt_id AT=2.0
LET ucox=(2.0/5.0)*d_at_1v^2.0
print ucox
** Calculating Vt by calculating the intercept
MEAS DC rt_id_at_1  FIND rt_id AT=2.0
LET Vt=2.0-(d_at_1v^-1 * rt_id_at_1)
print Vt
```

- For `Gamma`, extract Vth for two Vsb voltage (0V and 1V) and calculate it.

# Extract Parameters for Level-49 BSIM Model

- Extract the parameters for the following [Level-49 Model](xschem-ngspice/getStarted/scn4m_cnrs_bsim3v1.lib)
- Extract the parameters for the SKY130 models
