v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Ctrl-Click to execute launcher} 190 -790 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 190 -670 0 0 0.3 0.3 {layer=11}
N 1012 -893 1012 -873 {lab=Vmoins}
N 601 -843 601 -823 {lab=vd}
N 1012 -813 1012 -803 {lab=#net1}
N 1012 -743 1012 -733 {lab=GND}
N 1052 -753 1052 -733 {lab=GND}
N 1012 -733 1052 -733 {lab=GND}
N 1052 -793 1082 -793 {lab=vd}
N 844 -892 844 -872 {lab=Vplus}
N 844 -812 844 -802 {lab=#net2}
N 844 -742 844 -732 {lab=GND}
N 884 -752 884 -732 {lab=GND}
N 844 -732 884 -732 {lab=GND}
N 884 -792 914 -792 {lab=vd}
N 1188 -845 1230 -845 {lab=Vmoins}
N 1189 -795 1230 -795 {lab=Vplus}
N 1530 -820 1562 -820 {lab=Vout}
C {devices/code_shown.sym} 150 -940 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.include /home/boudi/PSESI/TOP.spice
XTOP Vmoins Vplus GNG VDD Vout_layout TOP
"}
C {devices/vsource.sym} 1012 -843 0 0 {name=Vindc value="0.6 AC 0 0"}
C {lab_pin.sym} 1012 -893 0 0 {name=p2 sig_type=std_logic lab=Vmoins
}
C {devices/vsource.sym} 601 -793 0 0 {name=Vd value="0 AC 1 0"}
C {devices/gnd.sym} 601 -763 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 601 -843 0 0 {name=p8 sig_type=std_logic lab=vd
}
C {vcvs.sym} 1012 -773 0 1 {name=E1 value=0.5}
C {devices/gnd.sym} 1012 -733 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1082 -793 0 1 {name=p7 sig_type=std_logic lab=vd
}
C {devices/vsource.sym} 844 -842 0 0 {name=Vindc1 value="0.6 AC 0 0"}
C {vcvs.sym} 844 -772 0 1 {name=E2 value=-0.5}
C {devices/gnd.sym} 844 -732 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 914 -792 0 1 {name=p10 sig_type=std_logic lab=vd
}
C {devices/vsource.sym} 711 -783 0 0 {name=VDD value=1.2}
C {devices/gnd.sym} 711 -753 0 0 {name=l9 lab=GND}
C {vdd.sym} 711 -813 0 0 {name=l10 lab=VDD}
C {devices/launcher.sym} 250 -720 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 250 -690 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 250 -750 0 0 {name=h3
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
C {devices/code_shown.sym} 1676 -910 0 0 {name=NGSPICE only_toplevel=true 
value="
.include tb_layout.save
.param temp=27
.control
options methode=trap maxord=6
save all 
op
write tb_layout.raw
set appendwrite
*dc V 0 1.2 0.001
*dc vd -0.6 0.6 0.001 
ac dec 100 1 10G
write tb_layout.raw
.endc
"}
C {lab_pin.sym} 1188 -845 0 0 {name=p3 sig_type=std_logic lab=Vmoins
}
C {lab_pin.sym} 844 -892 0 0 {name=p4 sig_type=std_logic lab=Vplus
}
C {lab_pin.sym} 1189 -795 0 0 {name=p12 sig_type=std_logic lab=Vplus
}
C {devices/gnd.sym} 1341 -761 0 0 {name=l1 lab=GND}
C {vdd.sym} 1341 -879 0 0 {name=l5 lab=VDD}
C {lab_pin.sym} 1562 -820 0 1 {name=p5 sig_type=std_logic lab=Vout}
C {OTA.sym} 1380 -820 0 0 {name=x1}
