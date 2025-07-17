v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -280 -20 -250 {name=IN1
lab=VDD}
N -20 -190 -20 -160 {lab=GND}
N -20 -190 -20 -160 {lab=GND}
C {vsource.sym} -20 -220 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -20 -165 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} -20 -265 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {code_shown.sym} -90 150 0 0 {name=SPICE only_toplevel=false 
value=
".include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
*X1 IN1 IN2 IN3 IN4 OUTZ VDD VDD GND GND gf180mcu_fd_sc_mcu9t5v0__nand4_1
*D G S B
X0 Y A VDD VDD pfet_03v3 W=1.320000U L=0.300000U
X1 Y B VDD VDD pfet_03v3 W=1.320000U L=0.300000U
X2 Y C VDD VDD pfet_03v3 W=1.320000U L=0.300000U
X3 Y D VDD VDD pfet_03v3 W=1.320000U L=0.300000U
X4 Y A net1 VSS nfet_03v3 W=1.320000U L=0.300000U
X5 net1 B net2 VSS nfet_03v3 W=1.320000U L=0.300000U
X6 net2 C net3 VSS nfet_03v3 W=1.320000U L=0.300000U
X7 net3 D net2 VSS nfet_03v3 W=1.320000U L=0.300000U

Vin1 A 0 PULSE(0 3.3 1n 100p 100p 10n 20n)
Vin2 B 0 PULSE(0 3.3 2n 100p 100p 10n 20n)
Vin3 C 0 PULSE(0 3.3 3n 100p 100p 10n 20n)
Vin4 D 0 PULSE(0 3.3 4n 100p 100p 10n 20n)
.tran 1n 50n
.save all"}
