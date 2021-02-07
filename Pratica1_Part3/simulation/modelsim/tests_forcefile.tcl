
set labelCount 8                                             
set uniqueLabel 236077048
#################################################################################


##Editing for Signal sim:/Pratica1_Part3/address
# "Constant Pattern"
# Start Time = 600 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address  01101 0 ps, 10011 100 ps, 00001 200 ps, 10001 300 ps, 00101 400 ps, 00011 500 ps, 10101 600 ps

when -label 236077048_1 {$now = @700 ps} {
        set whenArray(236077048_1) 236077048_1
        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address  00000 0 ps
}

when -label 236077048_2 {$now = @1000 ps} {
        set whenArray(236077048_2) 236077048_2
        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address 00000 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/clock
# "Clock Pattern" : dutyCycle = 10
# Start Time = 50 ps, End Time = 1 ns, Period = 100 ps
#################################################################################

        noforce sim:/Pratica1_Part3/clock
        force -freeze sim:/Pratica1_Part3/clock  St0 0 ps, St1 50 ps

when -label 236077048_3 {$now = @60 ps} {
        set whenArray(236077048_3) 236077048_3
        noforce sim:/Pratica1_Part3/clock
        force -freeze sim:/Pratica1_Part3/clock 0 0 ps,1 90 ps  -repeat 100 ps -cancel @1000 ps
}

when -label 236077048_4 {$now = @1000 ps} {
        set whenArray(236077048_4) 236077048_4
        noforce sim:/Pratica1_Part3/clock
        force -freeze sim:/Pratica1_Part3/clock 0 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/wren
# "Constant Pattern"
# Start Time = 200 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/wren
        force -freeze sim:/Pratica1_Part3/wren  St0 0 ps, St1 200 ps

when -label 236077048_5 {$now = @300 ps} {
        set whenArray(236077048_5) 236077048_5
        noforce sim:/Pratica1_Part3/wren
        force -freeze sim:/Pratica1_Part3/wren  St0 0 ps
}

when -label 236077048_6 {$now = @1000 ps} {
        set whenArray(236077048_6) 236077048_6
        noforce sim:/Pratica1_Part3/wren
        force -freeze sim:/Pratica1_Part3/wren 0 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/write
# "Constant Pattern"
# Start Time = 200 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/write
        force -freeze sim:/Pratica1_Part3/write  000 0 ps, 111 200 ps

when -label 236077048_7 {$now = @300 ps} {
        set whenArray(236077048_7) 236077048_7
        noforce sim:/Pratica1_Part3/write
        force -freeze sim:/Pratica1_Part3/write  000 0 ps
}

when -label 236077048_8 {$now = @1000 ps} {
        set whenArray(236077048_8) 236077048_8
        noforce sim:/Pratica1_Part3/write
        force -freeze sim:/Pratica1_Part3/write 000 0 ps
}
