v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -300 -40 -270 {name=IN1
lab=VDD}
N -40 -210 -40 -180 {lab=GND}
N -40 -210 -40 -180 {lab=GND}
C {code_shown.sym} -10 0 0 0 {name=SPICE only_toplevel=false 
value=
".include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/designs/globalfoundries-pdk-libs-gf180mcu_osu_sc/gf180mcu_osu_sc_gp9t3v3/cells/nand2/gf180mcu_osu_sc_gp9t3v3__nand2_1_v2.spice
X1 A B Y VDD GND gf180mcu_osu_sc_gp9t3v3__nand2_1
*D G S B

C1 Y GND 0.001pF


"}
C {code_shown.sym} 30 360 0 0 {name=MEASURE only_toplevel=false value=
"
Vin1 A 0 PULSE(0 3.3 1n 100p 100p 10n 20n)
Vin2 B 0 DC 3.3
*Vin2 B 0 PULSE(0 3.3 2n 100p 100p 10n 20n)
Vin3 C 0 DC 3.3
*Vin3 C 0 PULSE(0 3.3 3n 100p 100p 10n 20n)
Vin4 D 0 DC 3.3
*Vin4 D 0 PULSE(0 3.3 4n 100p 100p 10n 20n)
*.tran 1p 50n
.save all


.control
tran 1p 50n
meas tran rise_result TRIG v(Y) VAL=0.33 RISE=1 TARG v(Y) VAL=2.97 RISE=1
meas tran tfall_result TRIG v(Y) VAL=2.97 FALL=1 TARG v(Y) VAL=0.33 FALL=1
meas tran tplh_A TRIG v(A) VAL=1.65 RISE=1 TARG v(Y) VAL=1.65 FALL=1 
meas tran tphl_A TRIG v(A) VAL=1.65 FALL=1 TARG v(Y) VAL=1.65 RISE=1 
echo 'The tplh value for A NAND2_1 is: $&tplh_A' > /foss/designs/NAND4/schematic/NAND2_1_propagation.txt
echo 'The tphl value for A NAND2_1 is: $&tphl_A' >> /foss/designs/NAND4/schematic/NAND2_1_propagation.txt
.endc

"}
C {vsource.sym} -40 -240 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -40 -185 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} -40 -285 0 0 {name=p9 sig_type=std_logic lab=VDD}
