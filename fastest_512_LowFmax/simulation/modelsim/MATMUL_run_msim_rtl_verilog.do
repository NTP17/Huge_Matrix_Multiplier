transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/romA_128x128.v}
vlog -vlog01compat -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/romB_128x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/romC_128x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/multiplier_8816.v}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/DFFF.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/edge_enforcer.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/counter_for_A.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/counter_for_B.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/counter_for_C.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/romC_128x1_T.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/switch16.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/adder16.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/adder17.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/adder18.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/adder32.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/reg16.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/reg17.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/reg18.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/reg19.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/reg32.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/MUL_BLOCK.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/acc32.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/binto7seg.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/segsel.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/segssel.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/LABTWO.sv}
vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/MATMUL.sv}

vlog -sv -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/TB.sv}
vlog -vlog01compat -work work +incdir+C:/Users/ngtph/OneDrive/university\ courses/Logic\ Synthesis\ (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/../../simlib {C:/Users/ngtph/OneDrive/university courses/Logic Synthesis (EE4449_TT01)/Labs/DONE/SUBMITTED/Lab2/MiNE/fastest_512_LowFmax/../../simlib/altera_mf.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TB

add wave *
view structure
view signals
run -all
