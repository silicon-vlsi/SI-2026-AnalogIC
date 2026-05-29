v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -140 20 -110 {lab=vin}
N 20 -140 90 -140 {lab=vin}
N 150 -140 210 -140 {lab=vin1}
N 270 -140 330 -140 {lab=vin2}
N 420 -140 450 -140 {lab=viom}
N 20 -50 20 -20 {lab=GND}
N 20 -380 20 -330 {lab=Vbat}
N 20 -380 110 -380 {lab=Vbat}
N 110 -380 110 -370 {lab=Vbat}
N 110 -220 110 -210 {lab=GND}
N 20 -270 20 -220 {lab=GND}
N 20 -220 110 -220 {lab=GND}
N 110 -230 110 -220 {lab=GND}
N 110 -220 160 -220 {lab=GND}
N 160 -230 160 -220 {lab=GND}
N 110 -300 110 -290 {lab=vref}
N 160 -300 160 -290 {lab=vref}
N 110 -300 160 -300 {lab=vref}
N 110 -310 110 -300 {lab=vref}
N 490 -130 490 -80 {lab=GND}
N 420 -260 420 -140 {lab=viom}
N 380 -140 420 -140 {lab=viom}
N 420 -320 450 -320 {lab=viom}
N 420 -260 450 -260 {lab=viom}
N 420 -320 420 -260 {lab=viom}
N 510 -320 540 -320 {lab=vout}
N 540 -260 540 -210 {lab=vout}
N 490 -210 540 -210 {lab=vout}
N 490 -210 490 -190 {lab=vout}
N 510 -260 540 -260 {lab=vout}
N 540 -320 540 -260 {lab=vout}
N 540 -210 620 -210 {lab=vout}
N 620 -210 620 -190 {lab=vout}
N 620 -130 620 -80 {lab=GND}
N 160 -300 200 -300 {lab=vref}
N 200 -300 200 -180 {lab=vref}
N 200 -180 450 -180 {lab=vref}
C {vsource.sym} 20 -80 0 0 {name=Vmic value="0.6 AC=1" savecurrent=false}
C {res.sym} 120 -140 1 0 {name=Rmic
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 240 -140 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 360 -140 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 490 -160 0 0 {name=E1 value=10e5}
C {vsource.sym} 20 -300 0 0 {name=V2 value=2.5 savecurrent=false}
C {res.sym} 480 -260 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 480 -320 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 110 -340 2 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 110 -260 2 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 160 -260 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 20 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} 490 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 110 -210 0 0 {name=l3 lab=GND}
C {capa.sym} 620 -160 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 620 -80 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 60 -140 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 190 -140 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 310 -140 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} 410 -180 0 0 {name=p4 sig_type=std_logic lab=vref}
C {lab_wire.sym} 60 -380 0 0 {name=p5 sig_type=std_logic lab=Vbat}
C {lab_wire.sym} 590 -210 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 440 -140 0 0 {name=p7 sig_type=std_logic lab=viom}
C {title.sym} 10 50 0 0 {name=l5 author="SI-2026 Analog IC: Mic modeling"}
C {devices/code_shown.sym} 650 -480 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
op 
ac dec 100 1 100meg 
let voutdb = vdb(vout)
let voutabs = abs(vout)

meas ac vout_1k find voutabs at=1k
meas ac voutdb_1k find voutdb at=1k

let voutm3db = voutdb_1k - 3.0
meas ac fp3db WHEN voutdb=voutm3db fall=last
meas ac fz3db WHEN voutdb=voutm3db rise=1

write

.endc
"}
