
`timescale 1ps / 1ps
module verilogTestBench  ; 
 
  wire  [8:0]  read   ; 
  reg    clock   ; 
  reg    wren   ; 
  reg  [4:0]  address   ; 
  reg  [2:0]  write   ; 
  Pratica1_Part3  
   DUT  ( 
       .read (read ) ,
      .clock (clock ) ,
      .wren (wren ) ,
      .address (address ) ,
      .write (write ) ); 



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ps, End Time = 1 ns, Period = 100 ps
  initial
  begin
	  clock  = 1'b0  ;
	 # 50 ;
// 50 ps, single loop till start period.
   repeat(9)
   begin
	   clock  = 1'b1  ;
	  #50  clock  = 1'b0  ;
	  #50 ;
// 950 ps, repeat pattern in loop.
   end
	  clock  = 1'b1  ;
	 # 50 ;
// dumped values till 1 ns
  end


// "Constant Pattern"
// Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  address  = 5'b01101  ;
	 # 100	  address  = 5'b00000  ;
	 # 900 ;
// dumped values till 1 ns
  end


// "Constant Pattern"
// Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  wren  = 1'b0  ;
	 # 1000 ;
// dumped values till 1 ns
  end


// "Constant Pattern"
// Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  write  = 3'b000  ;
	 # 1000 ;
// dumped values till 1 ns
  end

  initial
	#2000 $stop;
endmodule
