module Processor (DIN, Resetn, Clock, Run, Done, BusWires);
	input [15:0] DIN;
	input Resetn, Clock, Run;
	output reg Done;
	output [15:0] BusWires;
	
	integer i;	
	
	wire [1:0] Tstep_Q;
	wire Clear = Done | &Tstep_Q ; // Clear do contador de passo de tempo
	upcount Tstrp (Clear, Clock, Tstep_Q);
	
	
	wire [8:0] IR; // Saida do Registrador IR
	reg IRin; //Sinal de Escrita do registrador IR	
	regn #(.n(9)) reg_IR (DIN[8:0], IRin, Clock, IR);
	
	reg Ain; //Sinal de Escrita do registrador A
	wire [15:0] A; // Saida do Regustrador A
	regn reg_A (BusWires, Ain, Clock, A);
	
	reg AddSubControl;
	wire [15:0] addSubOut;
	Addsub addSub (AddSubControl, A, BusWires, addSubOut);
	

	reg Gin; //Sinal de Escrita do registrador G	
	wire [15:0] G; // Saida do Registrador G
	regn reg_G (addSubOut, Gin, Clock, G);
	
	reg [7:0] Rin; // Sinal de Escrita dos registradores R0-R7
	wire [15:0] R[7:0]; // Saida dos Registradores R0-R7
	regn reg_0 (BusWires, Rin[0], Clock, R[0]);
	regn reg_1 (BusWires, Rin[1], Clock, R[1]);
	regn reg_2 (BusWires, Rin[2], Clock, R[2]);
	regn reg_3 (BusWires, Rin[3], Clock, R[3]);
	regn reg_4 (BusWires, Rin[4], Clock, R[4]);
	regn reg_5 (BusWires, Rin[5], Clock, R[5]);
	regn reg_6 (BusWires, Rin[6], Clock, R[6]);
	regn reg_7 (BusWires, Rin[7], Clock, R[7]);
		
	reg [9:0] Control; // Sinal de controle do multiplexador
	Multiplexer mux (R[0],R[1],R[2],R[3],R[4],R[5],R[6],R[7], G, DIN, Control, BusWires);	
	
	
	wire [2:0]I = IR[8:6]; //Instruçao a ser executada
	wire [7:0] Xreg, Yreg;	
	dec3to8 decX (IR[5:3], 1'b1, Xreg); //O valor retornado por Xreg
	dec3to8 decY (IR[2:0], 1'b1, Yreg); //Registrador 2	
	
	initial
	begin
		IRin = 1'b0;
		Rin = 8'b0;
		Control = 10'b0;
		Done = 1'b0;
	end
	
	always @(Tstep_Q or I or Xreg or Yreg)
	begin
		IRin = 1'b0; //Desabilita a escrita no registrador IR
		Done = 1'b0;
		Rin = 8'b0;
		Control = 10'b0;
		case (Tstep_Q)
			2'b00: // store DIN in IR in time step 0
				begin
					IRin = 1'b1; //Habilita a escrita no registrador IR
				end
			2'b01: //define signals in time step 1
				case (I)
					3'b000: // (mv)
						begin
							Control = {2'b00, Yreg};
							Rin = Xreg;								
							Done = 1'b1;
						end
					3'b001: // (mvi)
						begin
							Control = 10'b1000000000;
							Rin = Xreg;								
							Done = 1'b1;
						end
					3'b010: // (add)
						begin
						end
					3'b011: // (sub)
						begin
						end
					3'b100: // (or)
						begin
						end
					3'b101: // (slt)
						begin
						end
					3'b110: // (sll)
						begin
						end
					3'b111: // (srl)
						begin
						end
				endcase			
			2'b10: //define signals in time step 2
				case (I)
					3'b000: // (mv)
						begin
						end
					3'b001: // (mvi)
						begin
						end
					3'b010: // (add)
						begin
						end
					3'b011: // (sub)
						begin
						end
					3'b100: // (or)
						begin
						end
					3'b101: // (slt)
						begin
						end
					3'b110: // (sll)
						begin
						end
					3'b111: // (srl)
						begin
						end
				endcase
			2'b11: //define signals in time step 3
				case (I)
					3'b000: // (mv)
						begin
						end
					3'b001: // (mvi)
						begin
						end
					3'b010: // (add)
						begin
						end
					3'b011: // (sub)
						begin
						end
					3'b100: // (or)
						begin
						end
					3'b101: // (slt)
						begin
						end
					3'b110: // (sll)
						begin
						end
					3'b111: // (srl)
						begin
						end
				endcase
		endcase
	end

endmodule