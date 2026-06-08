v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 960 -270 960 -230 {
lab=GND}
N 960 -410 960 -350 {
lab=#net1}
N 780 -510 780 -410 {lab=#net1}
N 780 -410 960 -410 {lab=#net1}
N 1110 -510 1110 -410 {lab=#net1}
N 960 -540 960 -510 {lab=GND}
N 780 -540 960 -540 {lab=GND}
N 780 -600 780 -570 {lab=#net2}
N 780 -600 940 -600 {lab=#net2}
N 780 -640 780 -600 {lab=#net2}
N 940 -670 940 -600 {lab=#net2}
N 820 -670 940 -670 {lab=#net2}
N 780 -730 780 -700 {lab=VDD}
N 1110 -770 1450 -770 {lab=VDD}
N 1110 -720 1110 -700 {lab=VDD}
N 1180 -720 1180 -670 {lab=VDD}
N 1110 -720 1180 -720 {lab=VDD}
N 1110 -770 1110 -720 {lab=VDD}
N 710 -670 780 -670 {lab=VDD}
N 710 -730 710 -670 {lab=VDD}
N 710 -730 780 -730 {lab=VDD}
N 780 -770 780 -730 {lab=VDD}
N 710 -540 740 -540 {lab=Vmoins}
N 1110 -610 1110 -570 {lab=#net3}
N 960 -320 1050 -320 {lab=GND}
N 1050 -320 1050 -270 {lab=GND}
N 960 -270 1050 -270 {lab=GND}
N 960 -290 960 -270 {
lab=GND}
N 880 -320 920 -320 {lab=#net4}
N 1450 -310 1450 -230 {
lab=GND}
N 1540 -360 1540 -310 {lab=GND}
N 1450 -310 1540 -310 {lab=GND}
N 1450 -330 1450 -310 {
lab=GND}
N 1450 -520 1450 -390 {lab=Vout}
N 1450 -720 1450 -690 {lab=VDD}
N 1450 -660 1540 -660 {lab=VDD}
N 1540 -720 1540 -660 {lab=VDD}
N 1450 -720 1540 -720 {lab=VDD}
N 1450 -770 1450 -720 {lab=VDD}
N 1450 -630 1450 -520 {lab=Vout}
N 880 -360 880 -320 {lab=#net4}
N 530 -270 530 -230 {lab=GND}
N 440 -320 440 -270 {lab=GND}
N 440 -270 530 -270 {lab=GND}
N 530 -290 530 -270 {lab=GND}
N 530 -370 530 -350 {lab=#net4}
N 530 -710 530 -700 {lab=VDD}
N 530 -370 600 -370 {lab=#net4}
N 600 -370 600 -320 {lab=#net4}
N 570 -670 610 -670 {lab=#net4}
N 480 -670 530 -670 {lab=VDD}
N 480 -710 480 -670 {lab=VDD}
N 480 -710 530 -710 {lab=VDD}
N 530 -230 960 -230 {lab=GND}
N 600 -320 880 -320 {lab=#net4}
N 530 -610 530 -370 {lab=#net4}
N 530 -770 780 -770 {lab=VDD}
N 530 -770 530 -710 {lab=VDD}
N 610 -670 610 -610 {lab=#net4}
N 530 -610 610 -610 {lab=#net4}
N 530 -640 530 -610 {lab=#net4}
N 1355 -520 1450 -520 {lab=Vout}
N 1355 -610 1355 -580 {lab=#net3}
N 1355 -660 1410 -660 {lab=#net3}
N 1110 -610 1355 -610 {lab=#net3}
N 1110 -640 1110 -610 {lab=#net3}
N 1355 -660 1355 -610 {lab=#net3}
N 1450 -520 1590 -520 {lab=Vout}
N 570 -320 600 -320 {lab=#net4}
N 440 -320 530 -320 {lab=GND}
N 960 -410 1110 -410 {lab=#net1}
N 780 -770 1110 -770 {lab=VDD}
N 960 -230 1450 -230 {lab=GND}
N 1150 -540 1190 -540 {lab=Vplus}
N 960 -540 1110 -540 {lab=GND}
N 1110 -670 1180 -670 {lab=VDD}
N 940 -670 1070 -670 {lab=#net2}
N 1450 -360 1540 -360 {lab=GND}
N 880 -360 1410 -360 {lab=#net4}
C {sg13g2_pr/sg13_lv_nmos.sym} 940 -320 0 0 {name=M3
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 760 -540 0 0 {name=M2.1
l=0.5u
w=2.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 1130 -540 0 1 {name=M2.2
l=0.5u
w=2.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 960 -510 0 0 {name=l6 lab=GND}
C {sg13_lv_pmos.sym} 800 -670 0 1 {name=M1.1
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1090 -670 0 0 {name=M1.2
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 710 -540 0 0 {name=p1 lab=Vmoins}
C {ipin.sym} 1190 -540 0 1 {name=p3 lab=Vplus}
C {ipin.sym} 530 -770 0 0 {name=p5 lab=VDD}
C {ipin.sym} 530 -230 0 0 {name=p6 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1430 -360 0 0 {name=M4
l=1.6u
w=3.0u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1430 -660 0 0 {name=M5
l=0.5u
w=4.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1355 -550 0 0 {name=C2
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=1
spiceprefix=X}
C {opin.sym} 1590 -520 0 0 {name=p4 lab=Vout}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -320 0 1 {name=M1
l=0.5u
w=8.0u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 550 -670 0 1 {name=M2
l=0.5u
w=1.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
