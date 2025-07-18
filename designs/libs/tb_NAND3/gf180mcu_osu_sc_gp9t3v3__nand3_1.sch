v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 670 -640 670 -610 {lab=#net1}
N 670 -550 670 -520 {lab=#net2}
N 670 -760 670 -700 {lab=Y}
N 330 -760 330 -730 {lab=Y}
N 330 -730 670 -730 {lab=Y}
N 500 -760 500 -730 {lab=Y}
N 330 -830 330 -820 {lab=VDD}
N 330 -830 670 -830 {lab=VDD}
N 670 -830 670 -820 {lab=VDD}
N 500 -830 500 -820 {lab=VDD}
N 330 -790 350 -790 {lab=VDD}
N 350 -830 350 -790 {lab=VDD}
N 500 -790 520 -790 {lab=VDD}
N 520 -830 520 -790 {lab=VDD}
N 670 -790 690 -790 {lab=VDD}
N 690 -820 690 -790 {lab=VDD}
N 670 -820 690 -820 {lab=VDD}
N 670 -490 700 -490 {lab=#net3}
N 700 -490 700 -460 {lab=#net3}
N 670 -460 700 -460 {lab=#net3}
N 670 -670 700 -670 {lab=#net3}
N 700 -670 700 -490 {lab=#net3}
N 670 -580 700 -580 {lab=#net3}
N 670 -460 670 -430 {lab=#net3}
N 500 -860 500 -830 {lab=VDD}
N 600 -790 630 -790 {lab=A}
N 600 -790 600 -670 {lab=A}
N 600 -670 630 -670 {lab=A}
N 430 -790 460 -790 {lab=B}
N 430 -790 430 -580 {lab=B}
N 430 -580 630 -580 {lab=B}
N 270 -790 290 -790 {lab=C}
N 270 -790 270 -490 {lab=C}
N 270 -490 630 -490 {lab=C}
N 220 -670 600 -670 {lab=A}
N 220 -580 430 -580 {lab=B}
N 220 -490 270 -490 {lab=C}
N 670 -730 730 -730 {lab=Y}
C {title.sym} 160 -40 0 0 {name=l1 author="Kowshik"}
C {symbols/pfet_03v3.sym} 650 -790 0 0 {name=M1
L=0.3u
W=1.7u
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
C {symbols/pfet_03v3.sym} 480 -790 0 0 {name=M2
L=0.3u
W=1.7u
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
C {symbols/pfet_03v3.sym} 310 -790 0 0 {name=M3
L=0.3u
W=1.7u
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
C {symbols/nfet_03v3.sym} 650 -670 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 650 -580 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 650 -490 0 0 {name=M6
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
C {ipin.sym} 220 -670 0 0 {name=p3 lab=A}
C {ipin.sym} 220 -580 0 0 {name=p4 lab=B}
C {ipin.sym} 220 -490 0 0 {name=p5 lab=C}
C {opin.sym} 730 -730 0 0 {name=p6 lab=Y}
C {iopin.sym} 500 -860 3 0 {name=p1 lab=VDD}
C {iopin.sym} 670 -430 1 0 {name=p2 lab=VSS}
