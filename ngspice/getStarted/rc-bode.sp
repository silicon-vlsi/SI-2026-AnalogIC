Title: RC Step response 

* This is netlist/cicuit of a simple voltage divider 
*R1	n1	n2	Res-in-ohms
R1      vin     vout    1e3
C1      vout    0       1p

*This is a pulse stimulus with lowoltage(v1=0V) high(v2=5V)
Vpulse	vin     0       AC=1 PULSE 0 5 2n 10p 10p 10n 20n

*.MEASURE TRAN tr1090 TRIG v(vout) VAL=0.5 RISE=1 TARG v(vout) VAL=4.5 RISE=1
* Transient analysis
*.TRAN step-size total-sim-time
*.TRAN 1p 30n
*.AC DEC 100 10 10e9
*.MEAS AC vdbmax MAX vdb(vout)
*.MEAS AC f3db WHEN vdb(vout)=v3db fall=last

* Control script
.control
save all
AC DEC 100 10 10e9
MEAS AC vdbmax MAX vdb(vout)
LET v3db = vdbmax - 3.0
MEAS AC f3db WHEN vdb(vout)=v3db fall=last
write rc-step.raw
.endc

.end
