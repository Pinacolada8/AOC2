onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /Processor/Clock
add wave -noupdate -radix binary -childformat {{{/Processor/DIN[15]} -radix binary} {{/Processor/DIN[14]} -radix binary} {{/Processor/DIN[13]} -radix binary} {{/Processor/DIN[12]} -radix binary} {{/Processor/DIN[11]} -radix binary} {{/Processor/DIN[10]} -radix binary} {{/Processor/DIN[9]} -radix binary} {{/Processor/DIN[8]} -radix binary} {{/Processor/DIN[7]} -radix binary} {{/Processor/DIN[6]} -radix binary} {{/Processor/DIN[5]} -radix binary} {{/Processor/DIN[4]} -radix binary} {{/Processor/DIN[3]} -radix binary} {{/Processor/DIN[2]} -radix binary} {{/Processor/DIN[1]} -radix binary} {{/Processor/DIN[0]} -radix binary}} -expand -subitemconfig {{/Processor/DIN[15]} {-height 16 -radix binary} {/Processor/DIN[14]} {-height 16 -radix binary} {/Processor/DIN[13]} {-height 16 -radix binary} {/Processor/DIN[12]} {-height 16 -radix binary} {/Processor/DIN[11]} {-height 16 -radix binary} {/Processor/DIN[10]} {-height 16 -radix binary} {/Processor/DIN[9]} {-height 16 -radix binary} {/Processor/DIN[8]} {-height 16 -radix binary} {/Processor/DIN[7]} {-height 16 -radix binary} {/Processor/DIN[6]} {-height 16 -radix binary} {/Processor/DIN[5]} {-height 16 -radix binary} {/Processor/DIN[4]} {-height 16 -radix binary} {/Processor/DIN[3]} {-height 16 -radix binary} {/Processor/DIN[2]} {-height 16 -radix binary} {/Processor/DIN[1]} {-height 16 -radix binary} {/Processor/DIN[0]} {-height 16 -radix binary}} /Processor/DIN
add wave -noupdate -expand /Processor/IR
add wave -noupdate /Processor/IRin
add wave -noupdate -expand /Processor/Tstrp/Q
add wave -noupdate /Processor/Tstrp/Clear
add wave -noupdate /Processor/Tstrp/Clock
add wave -noupdate /Processor/Clear
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 238
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {924 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/Processor/Clock 
wave create -driver freeze -pattern constant -value 0 -range 15 0 -starttime 0ps -endtime 1000ps sim:/Processor/DIN 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000000001101000 -range 15 0 -starttime 0ps -endtime 100ps Edit:/Processor/DIN 
WaveCollapseAll -1
wave clipboard restore
