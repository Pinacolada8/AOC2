onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Processor/MClock
add wave -noupdate /Processor/PClock
add wave -noupdate /Processor/Control/Resetn
add wave -noupdate /Processor/address
add wave -noupdate /Processor/data
add wave -noupdate /Processor/Control/IR
add wave -noupdate /Processor/Control/Tstep_Q
add wave -noupdate /Processor/Control/R
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 400ps -dutycycle 50 -starttime 0ps -endtime 8000ps sim:/Processor/MClock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps sim:/Processor/PClock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 8000ps Edit:/Processor/MClock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 8000ps sim:/Processor/Control/Resetn 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 10ps Edit:/Processor/Control/Resetn 
WaveCollapseAll -1
wave clipboard restore
