module Processor(MClock, PClock, Resetn, BusWires, Done);
	input MClock;
	input PClock;
	input Resetn;
	wire [4:0] address;
	wire [15:0] data;
	output Done;
	output [15:0] BusWires;
	
	Counter count(MClock, Resetn, address);
	Memory Mem (address, PClock, 16'b0, 1'b0, data);//16'b0 e o data de input e 1'b0 e o write enable
	ControlUnit Control (data, Resetn, PClock, MClock, Done, BusWires);

endmodule