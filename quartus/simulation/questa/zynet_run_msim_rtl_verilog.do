transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/relu.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/maxFinder.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/Layer_4.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/Layer_3.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/Layer_2.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/Layer_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/include.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/axi_lite_wrapper.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/zynet.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/Weight_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Downloads/vipin/quartus/src {C:/Users/sxc210186/Downloads/vipin/quartus/src/neuron.v}

