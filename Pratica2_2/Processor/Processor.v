module Processor(MClock, PClock, Resetn, BusWires, Done);
	input PClock;
	input MClock;
	input Resetn;
	wire [4:0] address;
	wire [15:0] data;
	wire Nextmem;
	output Done;
	output [15:0] BusWires;
	
	Counter count(MClock, Nextmem, Resetn, address);
	Memory Mem (PClock, address, Resetn, data);
	ControlUnit Control (data, Resetn, PClock, MClock, Done, Nextmem, BusWires);

endmodule