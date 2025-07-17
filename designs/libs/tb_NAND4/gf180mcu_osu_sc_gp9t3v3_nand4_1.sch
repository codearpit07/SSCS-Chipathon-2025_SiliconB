v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 180 150 {}
N 180 -100 290 -100 {lab=VDD}
N 290 -100 430 -100 {lab=VDD}
N 430 -100 580 -100 {lab=VDD}
N 430 -40 580 -40 {lab=Y}
N 290 -40 430 -40 {lab=Y}
N 180 -40 290 -40 {lab=Y}
N 390 -40 390 10 {lab=Y}
N 390 70 390 120 {lab=#net1}
N 390 180 390 240 {lab=#net2}
N 390 300 390 350 {lab=#net3}
N 100 -70 140 -70 {lab=A}
N 220 -70 250 -70 {lab=B}
N 350 -70 390 -70 {lab=C}
N 500 -70 540 -70 {lab=D}
N 180 -70 200 -70 {lab=VDD}
N 200 -100 200 -70 {lab=VDD}
N 290 -70 310 -70 {lab=VDD}
N 310 -100 310 -70 {lab=VDD}
N 430 -70 450 -70 {lab=VDD}
N 450 -100 450 -70 {lab=VDD}
N 580 -70 600 -70 {lab=VDD}
N 600 -100 600 -70 {lab=VDD}
N 580 -100 600 -100 {lab=VDD}
N 390 410 390 440 {lab=VSS}
N 390 380 440 380 {lab=#net4}
N 390 270 440 270 {lab=#net5}
N 390 150 450 150 {lab=#net6}
N 390 40 450 40 {lab=VSS}
N 300 40 350 40 {lab=A}
N 300 150 350 150 {lab=B}
N 300 270 350 270 {lab=C}
N 300 380 350 380 {lab=D}
N 100 -70 100 40 {lab=A}
N 100 40 300 40 {lab=A}
N 220 -70 220 150 {lab=B}
N 220 150 300 150 {lab=B}
N 390 -10 660 -10 {lab=Y}
N 370 -130 370 -100 {lab=VDD}
C {symbols/pfet_03v3.sym} 160 -70 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 370 40 0 0 {name=M2
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 270 -70 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 410 -70 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 560 -70 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 370 150 0 0 {name=M6
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 370 270 0 0 {name=M7
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 370 380 0 0 {name=M8
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 100 40 0 0 {name=A lab=A}
C {ipin.sym} 220 150 0 0 {name=B lab=B}
C {ipin.sym} 300 270 0 0 {name=C lab=C}
C {ipin.sym} 300 380 0 0 {name=D lab=D}
C {opin.sym} 660 -10 0 0 {name=Y lab=Y}
C {lab_pin.sym} 350 -70 0 0 {name=C1 sig_type=std_logic lab=C}
C {lab_pin.sym} 500 -70 0 0 {name=D1 sig_type=std_logic lab=D}
C {iopin.sym} 370 -130 0 0 {name=VDD lab=VDD}
C {iopin.sym} 390 440 0 0 {name=VSS lab=VSS}
C {lab_pin.sym} 450 40 2 0 {name=VSS1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 150 2 0 {name=VSS2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 270 2 0 {name=VSS3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 380 2 0 {name=VSS4 sig_type=std_logic lab=VSS}
