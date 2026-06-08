v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Ctrl-Click to execute launcher} 1330 -170 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 1330 -50 0 0 0.3 0.3 {layer=11}
N 590 -180 590 -140 {
lab=GND}
N 590 -320 590 -260 {
lab=#net1}
N 410 -420 410 -320 {lab=#net1}
N 410 -320 590 -320 {lab=#net1}
N 810 -420 810 -320 {lab=#net1}
N 590 -450 810 -450 {lab=GND}
N 590 -450 590 -420 {lab=GND}
N 410 -450 590 -450 {lab=GND}
N 410 -510 410 -480 {lab=#net2}
N 570 -580 770 -580 {lab=#net2}
N 810 -520 810 -480 {lab=#net3}
N 410 -510 570 -510 {lab=#net2}
N 410 -550 410 -510 {lab=#net2}
N 570 -580 570 -510 {lab=#net2}
N 450 -580 570 -580 {lab=#net2}
N 410 -640 410 -610 {lab=VDD}
N 410 -680 810 -680 {lab=VDD}
N 810 -630 810 -610 {lab=VDD}
N 810 -580 880 -580 {lab=VDD}
N 880 -630 880 -580 {lab=VDD}
N 810 -630 880 -630 {lab=VDD}
N 810 -680 810 -630 {lab=VDD}
N 340 -580 410 -580 {lab=VDD}
N 340 -640 340 -580 {lab=VDD}
N 340 -640 410 -640 {lab=VDD}
N 410 -680 410 -640 {lab=VDD}
N 340 -450 370 -450 {lab=Vmoins}
N 850 -450 890 -450 {lab=Vplus}
N 810 -550 810 -520 {lab=#net3}
N 590 -230 680 -230 {lab=GND}
N 680 -230 680 -180 {lab=GND}
N 590 -180 680 -180 {lab=GND}
N 590 -200 590 -180 {
lab=GND}
N 590 -320 810 -320 {lab=#net1}
N 510 -230 550 -230 {lab=GND}
N 1150 -220 1150 -140 {
lab=GND}
N 1150 -270 1240 -270 {lab=GND}
N 1240 -270 1240 -220 {lab=GND}
N 1150 -220 1240 -220 {lab=GND}
N 1150 -240 1150 -220 {
lab=GND}
N 1150 -430 1150 -300 {lab=Vout}
N 1150 -630 1150 -600 {lab=VDD}
N 1150 -570 1240 -570 {lab=VDD}
N 1240 -630 1240 -570 {lab=VDD}
N 1150 -630 1240 -630 {lab=VDD}
N 1150 -680 1150 -630 {lab=VDD}
N 1150 -540 1150 -430 {lab=Vout}
N 1050 -570 1050 -490 {lab=#net3}
N 810 -680 1150 -680 {lab=VDD}
N 980 -570 980 -520 {lab=#net3}
N 590 -140 1150 -140 {lab=GND}
N 510 -270 1110 -270 {lab=GND}
N 510 -270 510 -230 {lab=GND}
N 160 -180 160 -140 {lab=GND}
N 70 -230 70 -180 {lab=GND}
N 70 -180 160 -180 {lab=GND}
N 160 -200 160 -180 {lab=GND}
N 160 -280 160 -260 {lab=GND}
N 160 -620 160 -610 {lab=VDD}
N 160 -280 230 -280 {lab=GND}
N 230 -280 230 -230 {lab=GND}
N 200 -580 240 -580 {lab=GND}
N 110 -580 160 -580 {lab=VDD}
N 110 -620 110 -580 {lab=VDD}
N 110 -620 160 -620 {lab=VDD}
N 160 -140 590 -140 {lab=GND}
N 230 -230 510 -230 {lab=GND}
N 160 -520 160 -280 {lab=GND}
N 160 -680 160 -620 {lab=VDD}
N 240 -580 240 -520 {lab=GND}
N 160 -520 240 -520 {lab=GND}
N 160 -550 160 -520 {lab=GND}
N 70 -230 230 -230 {lab=GND}
N 810 -520 980 -520 {lab=#net3}
N 1050 -570 1110 -570 {lab=#net3}
N 980 -570 1050 -570 {lab=#net3}
N 1050 -430 1150 -430 {lab=Vout}
N 160 -680 410 -680 {lab=VDD}
N 1150 -430 1250 -430 {lab=Vout}
N 1550 -370 1550 -350 {lab=Vmoins}
N 1720 -290 1720 -270 {lab=vd}
N 1550 -290 1550 -280 {lab=#net4}
N 1550 -220 1550 -210 {lab=GND}
N 1590 -230 1590 -210 {lab=GND}
N 1550 -210 1590 -210 {lab=GND}
N 1590 -270 1620 -270 {lab=vd}
N 1370 -370 1370 -350 {lab=Vplus}
N 1370 -290 1370 -280 {lab=#net5}
N 1370 -220 1370 -210 {lab=GND}
N 1410 -230 1410 -210 {lab=GND}
N 1370 -210 1410 -210 {lab=GND}
N 1410 -270 1440 -270 {lab=vd}
C {devices/code_shown.sym} 1310 -710 0 0 {name=NGSPICE only_toplevel=true 
value="
.include OTA.save
.param temp=27
.control
save all 
op
write OTA.raw
set appendwrite
*dc vd -0.6 0.6 0.001 
ac dec 100 1 1G
write OTA.raw
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} 1390 -100 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 1390 -70 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 1390 -130 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
file mkdir $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -230 0 0 {name=M3
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 390 -450 0 0 {name=M2.1
l=0.5u
w=2.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 830 -450 0 1 {name=M2.2
l=0.5u
w=2.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 590 -420 0 0 {name=l6 lab=GND}
C {sg13_lv_pmos.sym} 430 -580 0 1 {name=M1.1
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 790 -580 0 0 {name=M1.2
l=0.5u
w=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1130 -270 0 0 {name=M4
l=1.6u
w=3.0u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1130 -570 0 0 {name=M5
l=0.5u
w=4.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1050 -460 0 0 {name=C2
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=1
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -230 0 1 {name=M1
l=0.5u
w=8.0u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 180 -580 0 1 {name=M2
l=0.5u
w=1.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1250 -430 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 890 -450 0 1 {name=p1 sig_type=std_logic lab=Vplus}
C {lab_pin.sym} 340 -450 0 0 {name=p2 sig_type=std_logic lab=Vmoins}
C {devices/code_shown.sym} 30 -790 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
"}
C {devices/vsource.sym} 1550 -320 0 0 {name=Vindc value="0.6 AC 0 0"}
C {lab_pin.sym} 1550 -370 0 0 {name=p3 sig_type=std_logic lab=Vmoins
}
C {devices/vsource.sym} 1720 -240 0 0 {name=Vd value="0 AC 1 0"}
C {devices/gnd.sym} 1720 -210 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1720 -290 0 0 {name=p8 sig_type=std_logic lab=vd
}
C {vcvs.sym} 1550 -250 0 1 {name=E1 value=0.5}
C {devices/gnd.sym} 1550 -210 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1620 -270 0 1 {name=p7 sig_type=std_logic lab=vd
}
C {devices/vsource.sym} 1370 -320 0 0 {name=Vindc1 value="0.6 AC 0 0"}
C {lab_pin.sym} 1370 -370 0 0 {name=p9 sig_type=std_logic lab=Vplus
}
C {vcvs.sym} 1370 -250 0 1 {name=E2 value=-0.5}
C {devices/gnd.sym} 1370 -210 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1440 -270 0 1 {name=p10 sig_type=std_logic lab=vd
}
C {devices/vsource.sym} 1720 -370 0 0 {name=VDD value=1.2}
C {devices/gnd.sym} 1720 -340 0 0 {name=l9 lab=GND}
C {vdd.sym} 1720 -400 0 0 {name=l10 lab=VDD}
C {vdd.sym} 640 -680 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 660 -140 0 0 {name=l2 lab=GND}
