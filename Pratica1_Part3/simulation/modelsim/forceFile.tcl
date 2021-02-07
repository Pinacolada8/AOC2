
set labelCount 4                                             
set uniqueLabel 209168808
#################################################################################


##Editing for Signal sim:/Pratica1_Part3/clock
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 1 ns, Period = 100 ps
#################################################################################


noforce sim:/Pratica1_Part3/clock
force -freeze sim:/Pratica1_Part3/clock 0 0 ps,1 50 ps  -repeat 100 ps -cancel @1000 ps

when -label 209168808_1 {$now = @1000 ps} {
        set whenArray(209168808_1) 209168808_1
        noforce sim:/Pratica1_Part3/clock
        force -freeze sim:/Pratica1_Part3/clock 1 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/address
# "Constant Pattern"
# Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address 01101 0 ps 

        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address  01101 0 ps, 00000 100 ps

when -label 209168808_2 {$now = @1000 ps} {
        set whenArray(209168808_2) 209168808_2
        noforce sim:/Pratica1_Part3/address
        force -freeze sim:/Pratica1_Part3/address 00000 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/wren
# "Constant Pattern"
# Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/wren
        force -freeze sim:/Pratica1_Part3/wren St0 0 ps 

when -label 209168808_3 {$now = @1000 ps} {
        set whenArray(209168808_3) 209168808_3
        noforce sim:/Pratica1_Part3/wren
        force -freeze sim:/Pratica1_Part3/wren 0 0 ps
}


##Editing for Signal sim:/Pratica1_Part3/write
# "Constant Pattern"
# Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
#################################################################################

        noforce sim:/Pratica1_Part3/write
        force -freeze sim:/Pratica1_Part3/write 000 0 ps 

when -label 209168808_4 {$now = @1000 ps} {
        set whenArray(209168808_4) 209168808_4
        noforce sim:/Pratica1_Part3/write
        force -freeze sim:/Pratica1_Part3/write 000 0 ps
}
