Title: Simple resistor voltage divider with a pulse input

* This is netlist/cicuit of a simple voltage divider 
*R1	n1	n2	Res-in-ohms
R1      vin     vout    1k
R2      vout    0       1k

*This is a pulse stimulus with lowoltage(v1=0V) high(v2=5V)
*delay(td=0.5us) rise-time(tr=10n) fall-time(tf=10n) 
*pulse-width(pw=0.5us) period(per=1us)
*Vpulse n1	n2	PULSE v1 v2 td tr tf pw per
Vpulse	vin     0       PULSE 0 5 0.5u 10n 10n 0.5u 1u

* Transient analysis
*.TRAN step-size total-sim-time
.TRAN 0.1u 1.5u

* Control script
.control
RUN
PLOT v(vout)
.endc

.end
