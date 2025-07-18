v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -830 -80 -790 {lab=VDD}
N -80 -730 -80 -690 {lab=GND}
C {devices/code_shown.sym} 0 -870 0 0 {name=NGSPICE only_toplevel=true
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
*X3 A1 A2 A3 ZN VDD VDD 0 0 gf180mcu_fd_sc_mcu9t5v0__nand3_1

X0 Y A VDD VDD pfet_03v3 W=0.650000U L=0.300000U
X1 Y B VDD VDD pfet_03v3 W=0.650000U L=0.300000U
X2 Y C VDD VDD pfet_03v3 W=0.650000U L=0.300000U
X3 Y A net1 GND nfet_03v3 W=0.850000U L=0.300000U
X4 net1 B net2 GND nfet_03v3 W=0.850000U L=0.300000U
X5 net2 C GND GND nfet_03v3 W=0.850000U L=0.300000U
CL Y GND 0.001pF

Vin1 A 0 PULSE(0 3.3 1n 10p 10p 10n 20n)
*Vin2 A 0 DC 3.3
*Vin3 B 0 PULSE(0 3.3 2n 10p 10p 10n 20n)
Vin4 B 0 DC 3.3
*Vin5 C 0 PULSE(0 3.3 3n 10p 10p 10n 20n)
Vin6 C 0 DC 3.3
.save all

.control
tran 1p 50n
meas tran rise_out trig v(Y) val=0.33 rise=1 targ v(Y) val=2.97 rise=1
meas tran fall_out trig v(Y) val=2.97 fall=1 targ v(Y) val=0.33 fall=1
meas tran delay_tphl trig v(A) val=1.65 rise=1 targ v(Y) val=1.65 fall=1
meas tran delay_tplh trig v(A) val=1.65 fall=1 targ v(Y) val=1.65 rise=1
print 0.5*(delay_tphl + delay_tplh)
plot v(Y) v(C)+5 v(A)+10 v(B)+15
.endc
"}
C {vsource.sym} -80 -760 0 0 {name=V1 value=3.3 savecurrent=false}
C {vdd.sym} -80 -820 0 0 {name=l2 lab=VDD}
C {gnd.sym} -80 -690 0 0 {name=l4 lab=GND}
