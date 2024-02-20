transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/sign_extend.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/shifter.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/registers.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/pc.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/mux.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/memory.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/instruction_memory.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/control.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/alu_control.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/alu.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/adder.vhd}
vcom -2008 -work work {C:/Users/Luiz/Documents/trabalho final isaias/projeto_final/main.vhd}

