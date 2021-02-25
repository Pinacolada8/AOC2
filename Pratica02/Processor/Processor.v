module Processor (DIN, Resetn, Clock, Run, Done, BusWires);
	input [15:0] DIN;
	input Resetn, Clock, Run;
	output Done;
	output [15:0] BusWires;

	... declare variables
	reg Rin[7:0]; //Sinal de Escrita dos registradores R0-R7
	reg IRin; //Sinal de Escrita do registrador IR
	reg Ain; //Sinal de Escrita do registrador A
	reg Gin; //Sinal de Escrita do registrador G
	
	

	wire Clear = ... //Clear do contador de passo de tempo
	upcount Tstep (Clear, Clock, Tstep_Q); //Contador de passo de tempo
	assign I = IR[1:3]; //Instruçao a ser executada
	dec3to8 decX (IR[4:6], 1’b1, Xreg); //O valor retornado por Xreg
	dec3to8 decY (IR[7:9], 1’b1, Yreg); //Registrador 2

	
	always @(Tstep_Q or I or Xreg or Yreg)
	begin
		... specify initial values
		case (Tstep_Q)
			2’b00: // store DIN in IR in time step 0
			begin
				IR = DIN[8:0];
				IRin = 1’b1; //Habilita a escrita no registrador IR
			end
			2’b01: //define signals in time step 1
			case (I)
				...
			endcase
			2’b10: //define signals in time step 2
			case (I)
				...
			endcase
			2’b11: //define signals in time step 3
			case (I)
				...
			endcase
		endcase
	end
	
	multiplexer mux ({R7, R6, R5, R4, R3, R2, R1, R0}, G, DIN, controle, BusWires)
	
	regn reg_0 (BusWires, Rin[0], Clock, R0);

	... instantiate other registers and the adder/subtracter unit
	... define the bus

endmodule