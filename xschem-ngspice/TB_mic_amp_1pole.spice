** sch_path: /foss/designs/SI-2026-AnalogIC/xschem/TB_mic_amp_1pole.sch
**.subckt TB_mic_amp_1pole
Vmic vin GND 0.6 AC 1 SIN(0 VAMP FREQ)
Rmic vin1 vin 380 m=1
C1 vin2 vin1 4.7u m=1
R2 viom vin2 4.7k m=1
E1 net1 GND vref viom 10e6
V2 Vbat GND 2.5
R3 vout viom 300k m=1
C2 vout viom 27p m=1
R4 vref Vbat 10k m=1
R5 GND vref 10k m=1
C3 vref GND 1u m=1
C4 vout GND 1p m=1
R1 volpf net1 160k m=1
C5 volpf GND 1u m=1
E2 vout GND volpf GND 1
**** begin user architecture code


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


**** end user architecture code
**.ends
.GLOBAL GND
.end
