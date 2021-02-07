view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -range 4 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/address 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/wren 
wave create -driver freeze -pattern constant -value 0 -range 2 0 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/write 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01101 -range 4 0 -starttime 0ps -endtime 100ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 10011 -range 4 0 -starttime 100ps -endtime 200ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/Pratica1_Part3/wren 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 200ps Edit:/Pratica1_Part3/wren 
wave modify -driver freeze -pattern constant -value 00001 -range 4 0 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/wren 
wave modify -driver freeze -pattern constant -value 111 -range 2 0 -starttime 200ps -endtime 300ps Edit:/Pratica1_Part3/write 
{wave export -file E:/School/AOC2/Pratica1_Part3/simulation/modelsim/tests_forcefile -starttime 0 -endtime 1000 -format force -designunit Pratica1_Part3} 
{wave export -file E:/School/AOC2/Pratica1_Part3/simulation/modelsim/tests_testbench -starttime 0 -endtime 1000 -format vlog -designunit Pratica1_Part3} 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 90 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/clock 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 10 -starttime 0ps -endtime 1000ps sim:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 10 -starttime 0ps -endtime 1000ps Edit:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 10 -starttime 50ps -endtime 1000ps Edit:/Pratica1_Part3/clock 
wave modify -driver freeze -pattern constant -value 10001 -range 4 0 -starttime 300ps -endtime 400ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 00101 -range 4 0 -starttime 400ps -endtime 500ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 00011 -range 4 0 -starttime 500ps -endtime 600ps Edit:/Pratica1_Part3/address 
wave modify -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 600ps -endtime 700ps Edit:/Pratica1_Part3/address 
WaveCollapseAll -1
wave clipboard restore
