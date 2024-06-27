transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/tiaozhi.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/switch.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/rom2.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/rom1.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/jietiao.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/fangwen.v}
vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao/rtl {C:/Users/zgd/Desktop/jietiao/rtl/DDS.v}

vlog -vlog01compat -work work +incdir+C:/Users/zgd/Desktop/jietiao {C:/Users/zgd/Desktop/jietiao/jietiao_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  jietiao_tb

add wave *
view structure
view signals
run -all
