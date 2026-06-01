Testbench for inverter sub-circuit
.GLOBAL vdd gnd
.PARAM vsupply=5.0
**Library model file
.LIB scn4m_cnrs_bsim3v1.lib nom

**Include the Inverter netlist
.INCLUDE subckt-inv.sp

**Instatiate inverter
*Xname <port-1> <port-n> subckt-name
Xinv1 in out inv
 
**Sources
Vsup	vdd	0	DC vsupply
Vin	in	0	PULSE(0 vsupply 5n 10p 10p 10n 20)
Cload	out	0	50f

**Analyses
.TRAN 10p 20n 

.MEASURE TRAN TPLH TRIG v(in) val='0.5*vsupply' FALL=1 TARG v(out) VAL='0.5*vsupply' RISE=1
.MEASURE TRAN TPHL TRIG v(in) val='0.5*vsupply' RISE=1 TARG v(out) VAL='0.5*vsupply' FALL=1

.CONTROL
RUN
PLOT v(in) v(out)
.ENDC

.END
