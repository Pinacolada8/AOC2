onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Processor/MClock
add wave -noupdate /Processor/PClock
add wave -noupdate /Processor/Control/Resetn
add wave -noupdate /Processor/address
add wave -noupdate /Processor/data
add wave -noupdate /Processor/Control/IR
add wave -noupdate /Processor/Control/Tstep_Q
add wave -noupdate -childformat {{{/Processor/Control/R[7]} -radix decimal} {{/Processor/Control/R[6]} -radix decimal} {{/Processor/Control/R[5]} -radix decimal} {{/Processor/Control/R[4]} -radix decimal} {{/Processor/Control/R[3]} -radix decimal} {{/Processor/Control/R[2]} -radix decimal} {{/Processor/Control/R[1]} -radix decimal} {{/Processor/Control/R[0]} -radix decimal}} -expand -subitemconfig {{/Processor/Control/R[7]} {-height 15 -radix decimal} {/Processor/Control/R[6]} {-height 15 -radix decimal} {/Processor/Control/R[5]} {-height 15 -radix decimal} {/Processor/Control/R[4]} {-height 15 -radix decimal} {/Processor/Control/R[3]} {-height 15 -radix decimal} {/Processor/Control/R[2]} {-height 15 -radix decimal} {/Processor/Control/R[1]} {-height 15 -radix decimal} {/Processor/Control/R[0]} {-height 15 -radix decimal}} /Processor/Control/R
add wave -noupdate /Processor/Control/readImm
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {223 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 259
configure wave -valuecolwidth 81
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {947 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 400ps -dutycycle 50 -starttime 0ps -endtime 8000ps sim:/Processor/MClock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps sim:/Processor/PClock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 8000ps Edit:/Processor/MClock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 8000ps sim:/Processor/Control/Resetn 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 10ps Edit:/Processor/Control/Resetn 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps Edit:/Processor/PClock 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps Edit:/Processor/PClock 
WaveCollapseAll -1
wave clipboard restore
