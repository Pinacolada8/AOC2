onerror {resume}
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/read[8], /Pratica1_Part3/read[7], /Pratica1_Part3/read[6] }} ValLRUDirty
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/read[5], /Pratica1_Part3/read[4], /Pratica1_Part3/read[3] }} Tag
quietly virtual function -install sim:/Pratica1_Part3 -env sim:/Pratica1_Part3 { &{/Pratica1_Part3/read[2], /Pratica1_Part3/read[1], /Pratica1_Part3/read[0] }} Data
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /Pratica1_Part3/clock
add wave -noupdate -color Blue -radix binary /Pratica1_Part3/address
add wave -noupdate -color Red /Pratica1_Part3/wren
add wave -noupdate -color Orange -radix decimal /Pratica1_Part3/write
add wave -noupdate -color Gray70 /Pratica1_Part3/ValLRUDirty
add wave -noupdate -color {Lime Green} /Pratica1_Part3/Tag
add wave -noupdate -color {Blue Violet} -radix decimal /Pratica1_Part3/Data
add wave -noupdate -color Magenta -label Subconjunto1 {/Pratica1_Part3/MemWays[0]}
add wave -noupdate -color Magenta -label Subconjunto2 {/Pratica1_Part3/MemWays[1]}
add wave -noupdate -color Magenta -label Subconjunto3 {/Pratica1_Part3/MemWays[2]}
add wave -noupdate -color Magenta -label Subconjunto4 {/Pratica1_Part3/MemWays[3]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 245
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
WaveRestoreZoom {0 ps} {856 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/wren 
wave create -driver freeze -pattern constant -value 0 -range 2 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/write 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -range 4 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/address 
WaveExpandAll -1
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 50ps -endtime 1000ps Edit:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern constant -value 01011 -range 4 0 -starttime 0ps -endtime 100ps Edit:/Pratica1_Part3/address 
WaveCollapseAll -1
wave clipboard restore
