v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1190 -580 -1190 -550 {name=IN1
lab=VDD}
N -1190 -490 -1190 -460 {lab=GND}
N -1190 -490 -1190 -460 {lab=GND}
C {vsource.sym} -1190 -520 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -1190 -465 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} -1190 -565 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {code_shown.sym} -50 -140 0 0 {name=MEASURE only_toplevel=false value=
"
*Vin1 A 0 PULSE(0 3.3 1n 10p 10p 10n 20n)
Vin1 A 0 DC 0
Vin2 B 0 DC 3.3
Vin3 C 0 DC 3.3
Vin4 D 0 DC 3.3

*.tran 10p 50n
.save all



.control
run print i_leak
tran 1p 5n
meas tran leakA avg I(V2) from=0n to=4n
let pleak=leakA*3.3
print pleak
*print I(V2)*V(V2)
*echo 'The tplh value for A NAND2_1 is: $&tplh_A' > /foss/designs/NAND4/schematic/NAND2_1_propagation.txt
*echo 'The tphl value for A NAND2_1 is: $&tphl_A' >> /foss/designs/NAND4/schematic/NAND2_1_propagation.txt
.endc

"}
C {code_shown.sym} -1320 140 0 0 {name=SPICE1 only_toplevel=false 
value=
".include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
*X1 IN1 IN2 IN3 IN4 OUTZ VDD VDD GND GND gf180mcu_fd_sc_mcu9t5v0__nand4_1
*D G S B
X0 Y A VDD VDD pfet_03v3 W=1.70000U L=0.300000U
X1 Y B VDD VDD pfet_03v3 W=1.70000U L=0.300000U
X2 Y C VDD VDD pfet_03v3 W=1.70000U L=0.300000U
X3 Y D VDD VDD pfet_03v3 W=1.70000U L=0.300000U
X4 Y A net1 GND nfet_03v3 W=0.850000U L=0.300000U
X5 net1 B net2 GND nfet_03v3 W=0.850000U L=0.300000U
X6 net2 C net3 GND nfet_03v3 W=0.850000U L=0.300000U
X7 net3 D GND GND nfet_03v3 W=0.850000U L=0.300000U
C1 Y GND 0.001pF


"}
