Title: RC Step response 

* This is netlist/cicuit of a simple voltage divider 
*R1	n1	n2	Res-in-ohms
R1      vin     vout    1e3
C1      vout    0       1p

*This is a pulse stimulus with lowoltage(v1=0V) high(v2=5V)
*delay(td=0.5us) rise-time(tr=10n) fall-time(tf=10n) 
*pulse-width(pw=0.5us) period(per=1us)
*Vpulse n1	n2	PULSE v1 v2 td tr tf pw per
Vpulse	vin     0       PULSE 0 5 2n 10p 10p 10n 20n

.MEASURE TRAN tr1090 TRIG v(vout) VAL=0.5 RISE=1 TARG v(vout) VAL=4.5 RISE=1
* Transient analysis
*.TRAN step-size total-sim-time
.TRAN 1p 30n

* Control script
.control
RUN
PLOT v(vout)
.endc

.end
