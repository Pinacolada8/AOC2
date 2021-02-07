onerror {resume}
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/outWord[8], /Pratica1_Part3/outWord[7], /Pratica1_Part3/outWord[6] }} ValLRUDirty
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/outWord[5], /Pratica1_Part3/outWord[4], /Pratica1_Part3/outWord[3] }} Tag
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/outWord[2], /Pratica1_Part3/outWord[1], /Pratica1_Part3/outWord[0] }} Data
quietly virtual signal -install sim:/Pratica1_Part3 {sim:/Pratica1_Part3/MemWays[3]  } Conjunto3
quietly virtual signal -install sim:/Pratica1_Part3 {sim:/Pratica1_Part3/MemWays[2]  } Conjunto2
quietly virtual signal -install sim:/Pratica1_Part3 {sim:/Pratica1_Part3/MemWays[1]  } Conjunto1
quietly virtual signal -install sim:/Pratica1_Part3 {sim:/Pratica1_Part3/MemWays[0]  } Conjunto0
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /Pratica1_Part3/clock
add wave -noupdate -color Blue /Pratica1_Part3/address
add wave -noupdate -color Red /Pratica1_Part3/wren
add wave -noupdate -color Salmon /Pratica1_Part3/write
add wave -noupdate -expand -group Sinalizadores -color White /Pratica1_Part3/hit
add wave -noupdate -expand -group Sinalizadores -color Gray60 /Pratica1_Part3/writeBack
add wave -noupdate -expand -group outWord -color Magenta /Pratica1_Part3/ValLRUDirty
add wave -noupdate -expand -group outWord -color {Medium Sea Green} /Pratica1_Part3/Tag
add wave -noupdate -expand -group outWord -color {Blue Violet} /Pratica1_Part3/Data
add wave -noupdate -expand -group Cache -color {Medium Aquamarine} -subitemconfig {{/Pratica1_Part3/MemWays[0][0]} {-color {Medium Aquamarine} -height 15} {/Pratica1_Part3/MemWays[0][1]} {-color {Medium Aquamarine} -height 15} {/Pratica1_Part3/MemWays[0][2]} {-color {Medium Aquamarine} -height 15} {/Pratica1_Part3/MemWays[0][3]} {-color {Medium Aquamarine} -height 15}} /Pratica1_Part3/Conjunto0
add wave -noupdate -expand -group Cache -color Aquamarine /Pratica1_Part3/Conjunto1
add wave -noupdate -expand -group Cache -color Turquoise /Pratica1_Part3/Conjunto2
add wave -noupdate -expand -group Cache -color Cyan /Pratica1_Part3/Conjunto3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {80 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 210
configure wave -valuecolwidth 98
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
WaveRestoreZoom {0 ps} {864 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -range 4 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/address 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/wren 
wave create -driver freeze -pattern constant -value 0 -range 2 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/write 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01101 -range 4 0 -starttime 0ps -endtime 100ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 10011 -range 4 0 -starttime 100ps -endtime 200ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 00001 -range 4 0 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/wren 
wave modify -driver freeze -pattern constant -value 111 -range 2 0 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/write 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern constant -value 10001 -range 4 0 -starttime 300ps -endtime 400ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 00101 -range 4 0 -starttime 400ps -endtime 500ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 00011 -range 4 0 -starttime 500ps -endtime 600ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 600ps -endtime 700ps Edit:/Pratica1_Part3/address 
WaveCollapseAll -1
wave clipboard restore
