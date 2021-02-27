onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Clock
add wave -noupdate -color Yellow -radix binary /Processor/PClock
add wave -noupdate -color Khaki -radix binary /Processor/MClock
add wave -noupdate -color Gray60 -radix binary /Processor/Resetn
add wave -noupdate -divider Controle
add wave -noupdate -color {Medium Slate Blue} -radix binary /Processor/Done
add wave -noupdate -color Blue -radix unsigned /Processor/address
add wave -noupdate -color White /Processor/Control/IR
add wave -noupdate -color Violet /Processor/Control/IRin
add wave -noupdate -color Red -subitemconfig {{/Processor/Control/Control[12]} {-color Red} {/Processor/Control/Control[11]} {-color Red} {/Processor/Control/Control[10]} {-color Red} {/Processor/Control/Control[9]} {-color Red} {/Processor/Control/Control[8]} {-color Red} {/Processor/Control/Control[7]} {-color Red} {/Processor/Control/Control[6]} {-color Red} {/Processor/Control/Control[5]} {-color Red} {/Processor/Control/Control[4]} {-color Red} {/Processor/Control/Control[3]} {-color Red} {/Processor/Control/Control[2]} {-color Red} {/Processor/Control/Control[1]} {-color Red} {/Processor/Control/Control[0]} {-color Red}} /Processor/Control/Control
add wave -noupdate -color Tan /Processor/Control/Tstep_Q
add wave -noupdate /Processor/Control/Stall
add wave -noupdate -divider Data
add wave -noupdate -color {Dark Green} -radix binary -subitemconfig {{/Processor/Control/DIN[15]} {-color {Dark Green}} {/Processor/Control/DIN[14]} {-color {Dark Green}} {/Processor/Control/DIN[13]} {-color {Dark Green}} {/Processor/Control/DIN[12]} {-color {Dark Green}} {/Processor/Control/DIN[11]} {-color {Dark Green}} {/Processor/Control/DIN[10]} {-color {Dark Green}} {/Processor/Control/DIN[9]} {-color {Dark Green}} {/Processor/Control/DIN[8]} {-color {Dark Green}} {/Processor/Control/DIN[7]} {-color {Dark Green}} {/Processor/Control/DIN[6]} {-color {Dark Green}} {/Processor/Control/DIN[5]} {-color {Dark Green}} {/Processor/Control/DIN[4]} {-color {Dark Green}} {/Processor/Control/DIN[3]} {-color {Dark Green}} {/Processor/Control/DIN[2]} {-color {Dark Green}} {/Processor/Control/DIN[1]} {-color {Dark Green}} {/Processor/Control/DIN[0]} {-color {Dark Green}}} /Processor/Control/DIN
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[7]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[6]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[5]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[4]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[3]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[2]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[1]}
add wave -noupdate -expand -group Registradores -color Cyan -radix decimal {/Processor/Control/R[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8375 ps} 0} {{Cursor 2} {7975 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 208
configure wave -valuecolwidth 113
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
WaveRestoreZoom {7805 ps} {8799 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 25 -starttime 0ps -endtime 9000ps sim:/Processor/MClock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 9000ps sim:/Processor/PClock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 9000ps sim:/Processor/Resetn 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 10ps Edit:/Processor/Resetn 
WaveCollapseAll -1
wave clipboard restore
