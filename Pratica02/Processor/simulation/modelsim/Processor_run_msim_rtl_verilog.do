transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Processor.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/upcount.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/dec3to8.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/regn.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Addsub.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Multiplexer.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Orunit.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Shiftlog.v}
vlog -vlog01compat -work work +incdir+C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor {C:/Users/eduar/Desktop/Git/AOC2/Pratica02/Processor/Setlessthan.v}

