onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Processor/Clock
add wave -noupdate /Processor/DIN
add wave -noupdate /Processor/Done
add wave -noupdate /Processor/IR
add wave -noupdate /Processor/IRin
add wave -noupdate /Processor/Rin
add wave -noupdate -childformat {{{/Processor/R[7]} -radix decimal} {{/Processor/R[6]} -radix decimal} {{/Processor/R[5]} -radix decimal} {{/Processor/R[4]} -radix decimal} {{/Processor/R[3]} -radix decimal} {{/Processor/R[2]} -radix decimal} {{/Processor/R[1]} -radix decimal -childformat {{{/Processor/R[1][15]} -radix decimal} {{/Processor/R[1][14]} -radix decimal} {{/Processor/R[1][13]} -radix decimal} {{/Processor/R[1][12]} -radix decimal} {{/Processor/R[1][11]} -radix decimal} {{/Processor/R[1][10]} -radix decimal} {{/Processor/R[1][9]} -radix decimal} {{/Processor/R[1][8]} -radix decimal} {{/Processor/R[1][7]} -radix decimal} {{/Processor/R[1][6]} -radix decimal} {{/Processor/R[1][5]} -radix decimal} {{/Processor/R[1][4]} -radix decimal} {{/Processor/R[1][3]} -radix decimal} {{/Processor/R[1][2]} -radix decimal} {{/Processor/R[1][1]} -radix decimal} {{/Processor/R[1][0]} -radix decimal}}} {{/Processor/R[0]} -radix decimal}} -expand -subitemconfig {{/Processor/R[7]} {-height 15 -radix decimal} {/Processor/R[6]} {-height 15 -radix decimal} {/Processor/R[5]} {-height 15 -radix decimal} {/Processor/R[4]} {-height 15 -radix decimal} {/Processor/R[3]} {-height 15 -radix decimal} {/Processor/R[2]} {-height 15 -radix decimal} {/Processor/R[1]} {-height 15 -radix decimal -childformat {{{/Processor/R[1][15]} -radix decimal} {{/Processor/R[1][14]} -radix decimal} {{/Processor/R[1][13]} -radix decimal} {{/Processor/R[1][12]} -radix decimal} {{/Processor/R[1][11]} -radix decimal} {{/Processor/R[1][10]} -radix decimal} {{/Processor/R[1][9]} -radix decimal} {{/Processor/R[1][8]} -radix decimal} {{/Processor/R[1][7]} -radix decimal} {{/Processor/R[1][6]} -radix decimal} {{/Processor/R[1][5]} -radix decimal} {{/Processor/R[1][4]} -radix decimal} {{/Processor/R[1][3]} -radix decimal} {{/Processor/R[1][2]} -radix decimal} {{/Processor/R[1][1]} -radix decimal} {{/Processor/R[1][0]} -radix decimal}}} {/Processor/R[1][15]} {-height 15 -radix decimal} {/Processor/R[1][14]} {-height 15 -radix decimal} {/Processor/R[1][13]} {-height 15 -radix decimal} {/Processor/R[1][12]} {-height 15 -radix decimal} {/Processor/R[1][11]} {-height 15 -radix decimal} {/Processor/R[1][10]} {-height 15 -radix decimal} {/Processor/R[1][9]} {-height 15 -radix decimal} {/Processor/R[1][8]} {-height 15 -radix decimal} {/Processor/R[1][7]} {-height 15 -radix decimal} {/Processor/R[1][6]} {-height 15 -radix decimal} {/Processor/R[1][5]} {-height 15 -radix decimal} {/Processor/R[1][4]} {-height 15 -radix decimal} {/Processor/R[1][3]} {-height 15 -radix decimal} {/Processor/R[1][2]} {-height 15 -radix decimal} {/Processor/R[1][1]} {-height 15 -radix decimal} {/Processor/R[1][0]} {-height 15 -radix decimal} {/Processor/R[0]} {-height 15 -radix decimal}} /Processor/R
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {68 ps} 0}
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
wave create -driver freeze -pattern constant -value 0000000001000000 -range 15 0 -starttime 0ps -endtime 8000ps sim:/Processor/DIN 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps sim:/Processor/Clock 
wave modify -driver freeze -pattern constant -value 0000000000000010 -range 15 0 -starttime 100ps -endtime 400ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000001001000 -range 15 0 -starttime 400ps -endtime 800ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000000000011 -range 15 0 -starttime 500ps -endtime 800ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000010001000 -range 15 0 -starttime 800ps -endtime 1200ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000001010000 -range 15 0 -starttime 1200ps -endtime 1600ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000000000110 -range 15 0 -starttime 1300ps -endtime 1600ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000011010001 -range 15 0 -starttime 1600ps -endtime 2000ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000000011010 -range 15 0 -starttime 2000ps -endtime 2400ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000010000011 -range 15 0 -starttime 2400ps -endtime 2800ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000100001000 -range 15 0 -starttime 2800ps -endtime 3200ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000011001000 -range 15 0 -starttime 3200ps -endtime 3600ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000010001011 -range 15 0 -starttime 3600ps -endtime 4000ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000110001011 -range 15 0 -starttime 4000ps -endtime 4400ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000111001011 -range 15 0 -starttime 4400ps -endtime 4800ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000001000000 -range 15 0 -starttime 4800ps -endtime 5200ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 5200ps -endtime 5600ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 4900ps -endtime 5200ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000101000001 -range 15 0 -starttime 5200ps -endtime 5600ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000101001001 -range 15 0 -starttime 5600ps -endtime 6000ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000010000011 -range 15 0 -starttime 6000ps -endtime 6400ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern constant -value 0000000010001010 -range 15 0 -starttime 6400ps -endtime 6800ps Edit:/Processor/DIN 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 8000ps Edit:/Processor/Clock 
WaveCollapseAll -1
wave clipboard restore
