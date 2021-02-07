
`timescale 1ps / 1ps
module \tests_testbench.tcl   ; 
 
  wire  reg  writeBack   ; 
  wire  [8:0]  outWord   ; 
  reg    clock   ; 
  reg    wren   ; 
  wire  reg  hit   ; 
  reg  [4:0]  address   ; 
  reg  [2:0]  write   ; 
  Pratica1_Part3  
   DUT  ( 
       .writeBack (writeBack ) ,
      .outWord (outWord ) ,
      .clock (clock ) ,
      .wren (wren ) ,
      .hit (hit ) ,
      .address (address ) ,
      .write (write ) ); 



// "Constant Pattern"
// Start Time = 600 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  address  = 5'b01101  ;
	 # 100	  address  = 5'b10011  ;
	 # 100	  address  = 5'b00001  ;
	 # 100	  address  = 5'b10001  ;
	 # 100	  address  = 5'b00101  ;
	 # 100	  address  = 5'b00011  ;
	 # 100	  address  = 5'b10101  ;
	 # 100	  address  = 5'b00000  ;
	 # 300 ;
// dumped values till 1 ns
  end


// "Clock Pattern" : dutyCycle = 10
// Start Time = 50 ps, End Time = 1 ns, Period = 100 ps
  initial
  begin
	  clock  = 1'b0  ;
	 # 50 ;
   repeat(9)
   begin
	   clock  = 1'b1  ;
	  #10  clock  = 1'b0  ;
	  #90 ;
// 950 ps, repeat pattern in loop.
   end
	  clock  = 1'b1  ;
	 # 10	  clock  = 1'b0  ;
	 # 40 ;
// dumped values till 1 ns
  end


// "Constant Pattern"
// Start Time = 200 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  wren  = 1'b0  ;
	 # 200	  wren  = 1'b1  ;
	 # 100	  wren  = 1'b0  ;
	 # 700 ;
// dumped values till 1 ns
  end


// "Constant Pattern"
// Start Time = 200 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  write  = 3'b000  ;
	 # 200	  write  = 3'b111  ;
	 # 100	  write  = 3'b000  ;
	 # 700 ;
// dumped values till 1 ns
  end

  initial
	#2000 $stop;
endmodule
