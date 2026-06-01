v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -160 20 -130 {lab=vin}
N 20 -160 90 -160 {lab=vin}
N 150 -160 210 -160 {lab=vin1}
N 270 -160 330 -160 {lab=vin2}
N 420 -160 450 -160 {lab=viom}
N 20 -70 20 -40 {lab=GND}
N 20 -400 20 -350 {lab=Vbat}
N 20 -400 110 -400 {lab=Vbat}
N 110 -400 110 -390 {lab=Vbat}
N 110 -240 110 -230 {lab=GND}
N 20 -290 20 -240 {lab=GND}
N 20 -240 110 -240 {lab=GND}
N 110 -250 110 -240 {lab=GND}
N 110 -240 160 -240 {lab=GND}
N 160 -250 160 -240 {lab=GND}
N 110 -320 110 -310 {lab=vref}
N 160 -320 160 -310 {lab=vref}
N 110 -320 160 -320 {lab=vref}
N 110 -330 110 -320 {lab=vref}
N 490 -130 490 -100 {lab=GND}
N 420 -280 420 -160 {lab=viom}
N 380 -160 420 -160 {lab=viom}
N 420 -340 450 -340 {lab=viom}
N 420 -280 450 -280 {lab=viom}
N 420 -340 420 -280 {lab=viom}
N 510 -340 540 -340 {lab=vout}
N 490 -230 490 -210 {lab=#net1}
N 510 -280 540 -280 {lab=vout}
N 540 -340 540 -280 {lab=vout}
N 870 -130 870 -80 {lab=GND}
N 160 -320 200 -320 {lab=vref}
N 200 -320 200 -200 {lab=vref}
N 200 -200 450 -200 {lab=vref}
N 490 -230 550 -230 {lab=#net1}
N 610 -230 640 -230 {lab=volpf}
N 640 -210 640 -200 {lab=volpf}
N 640 -210 720 -210 {lab=volpf}
N 640 -230 640 -210 {lab=volpf}
N 700 -130 760 -130 {lab=GND}
N 490 -150 490 -130 {lab=GND}
N 760 -160 760 -130 {lab=GND}
N 640 -140 640 -130 {lab=GND}
N 490 -130 640 -130 {lab=GND}
N 700 -170 720 -170 {lab=GND}
N 700 -170 700 -130 {lab=GND}
N 640 -130 700 -130 {lab=GND}
N 540 -280 760 -280 {lab=vout}
N 760 -230 760 -220 {lab=vout}
N 870 -230 870 -190 {lab=vout}
N 760 -230 870 -230 {lab=vout}
N 760 -280 760 -230 {lab=vout}
C {vsource.sym} 20 -100 0 0 {name=Vmic value="0.6 AC 1 SIN(0 VAMP FREQ)" savecurrent=false}
C {res.sym} 120 -160 1 0 {name=Rmic
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 240 -160 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 360 -160 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 490 -180 0 0 {name=E1 value=10e6}
C {vsource.sym} 20 -320 0 0 {name=V2 value=2.5 savecurrent=false}
C {res.sym} 480 -280 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 480 -340 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 110 -360 2 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 110 -280 2 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 160 -280 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 20 -40 0 0 {name=l1 lab=GND}
C {gnd.sym} 490 -100 0 0 {name=l2 lab=GND}
C {gnd.sym} 110 -230 0 0 {name=l3 lab=GND}
C {capa.sym} 870 -160 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 870 -80 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 60 -160 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 190 -160 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 310 -160 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} 410 -200 0 0 {name=p4 sig_type=std_logic lab=vref}
C {lab_wire.sym} 60 -400 0 0 {name=p5 sig_type=std_logic lab=Vbat}
C {lab_wire.sym} 440 -160 0 0 {name=p7 sig_type=std_logic lab=viom}
C {title.sym} 160 60 0 0 {name=l5 author="SI-2026 Analog IC: Mic modeling"}
C {devices/code_shown.sym} 960 -650 0 0 {name=NGSPICE only_toplevel=true 
value="
.PARAM temp=27
**

.PARAM FREQ=1k
.PARAM VAMP=1m

.CONTROL

SAVE ALL
OP
AC dec 100 1 100meg 
LET voutdb = vdb(vout)
LET voutabs = abs(vout)

MEAS AC vout_1k find voutabs at=1k
MEAS AC voutdb_1k find voutdb at=1k

LET voutm3db = voutdb_1k - 3.0
MEAS AC fp3db WHEN voutdb=voutm3db fall=last
MEAS AC fz3db WHEN voutdb=voutm3db rise=1

plot vdb(vout)

WRITE

TRAN 1u 5m

* plot v(vin) v(vout)
MEAS TRAN vout_avg AVG v(vout) FROM=3m TO=5m
MEAS TRAN vout_pk2pk PP v(vout) FROM=3m TO=5m
MEAS TRAN vin_pk2pk PP v(vin) FROM=3m TO=5m
LET gain_tran = vout_pk2pk/vin_pk2pk
PRINT gain_tran

.endc
"}
C {res.sym} 580 -230 1 0 {name=R1
value=160k
footprint=1206
device=resistor
m=1}
C {capa.sym} 640 -170 0 0 {name=C5
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 760 -190 0 0 {name=E2 value=1}
C {lab_wire.sym} 700 -210 0 0 {name=p6 sig_type=std_logic lab=volpf}
C {lab_wire.sym} 840 -230 0 0 {name=p8 sig_type=std_logic lab=vout}
