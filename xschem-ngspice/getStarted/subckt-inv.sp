************** Subckt for an inverter **************
.subckt inv vin vout
m2 vout vin vdd vdd scmosp w='0.6u' l='0.4u' m='2' 
m1 vout vin gnd gnd scmosn w='0.6u' l='0.4u' m='2' 
.ends inv



