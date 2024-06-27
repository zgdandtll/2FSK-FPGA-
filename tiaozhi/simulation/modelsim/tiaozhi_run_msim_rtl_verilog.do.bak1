transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/switch.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/tiaozhi.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/rom2.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/rom1.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/fangwen.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/rtl {C:/Users/zgd/Desktop/tiaozhi/rtl/DDS.v}

vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/tiaozhi/simulation/modelsim {C:/Users/zgd/Desktop/tiaozhi/simulation/modelsim/tb_tiaozhi.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  tb_tiaozhi

add wave *
view structure
view signals
run -all
