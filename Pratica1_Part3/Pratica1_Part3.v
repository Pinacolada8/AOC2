module Pratica1_Part3(address, write, wren, clock, read);
	input [4:0]	address;
	input [2:0] write;
	input wren, clock;

	output reg [8:0] read;
	//output wire [2:0] readData = read[8:6];
	//output wire [2:0] readTag = read[5:3];
	//output wire [2:0] readValLRUDirty = read[2:0];
	
	reg [1:0] index;
	reg hit;
	reg noInvalid;
	reg [2:0] tag;

	// Matriz que representa todos os conjuntos e vias da cache
	reg [8:0] MemWays[3:0][3:0]; 
	
	integer currentWay = 0;
	integer ii = 0;

	initial
	begin
	// MemWays[index][via] = [dados];
		MemWays[0][0] = 9'b0;
		MemWays[0][1] = 9'b0;
		MemWays[0][2] = 9'b0;
		MemWays[0][3] = 9'b0;

		MemWays[1][0] = 9'b0;
		MemWays[1][1] = 9'b0;
		MemWays[1][2] = 9'b0;
		MemWays[1][3] = 9'b0;

		MemWays[2][0] = 9'b0;
		MemWays[2][1] = 9'b0;
		MemWays[2][2] = 9'b0;
		MemWays[2][3] = 9'b0;

		MemWays[3][0] = 9'b0;
		MemWays[3][1] = 9'b0;
		MemWays[3][2] = 9'b0;
		MemWays[3][3] = 9'b0;
		
		hit = 1'b0;
	end

	always@(posedge clock)
   	begin
			index = address%4; // Subconjunto
			tag = address[2:0]; // Tag
			hit = 1'b0;

			// Hit ------------->
			for(currentWay=0; currentWay<3; currentWay=currentWay+1)
				if ((MemWays[index][currentWay][8] == 1'b1) && (hit == 1'b0))	// Checa a validade da via		
					begin
						if(tag == MemWays[index][currentWay][5:3]) 					// compara a tag com a tag salva na cache
							begin																	// hit na via
								if(wren == 1'b1) 												// Escrita
									begin
										MemWays[index][currentWay] = {3'b111,tag,write};
									end
								else
									begin
										// Coloca todos os LRUs em "0" caso a operação seja de leitura
										for(ii=0; ii<3; ii=ii+1)
											MemWays[index][ii][7] = 1'b0; 				// LRU das vias
									end
							
								read = MemWays[index][currentWay];						// read recebe o valor salvo em cache
								hit = 1'b1;						
								MemWays[index][currentWay][7] = 1'b1;					// Coloca em "1"	o LRU da via acessada	
							end
					end
		
		// <------------- Hit
					

		// Miss ------------->
		noInvalid = 1'b1;
		if(hit == 1'b0) // Miss
				begin 				
					for(currentWay=0; currentWay<3; currentWay=currentWay+1)
						if ((MemWays[index][currentWay][8] == 1'b0))							// Checa a validade da via		
							begin
								if(wren == 1'b1) 														// Escrita
									begin																	
										MemWays[index][currentWay] = {3'b111,tag,write};	// Escreve o valor desejado
									end
								else
									begin
										MemWays[index][currentWay] = {3'b110,tag,tag};		// Escreve o valor da tag como dado, em caso de Miss na leitura
									end
								read = MemWays[index][currentWay];
								noInvalid = 1'b0;
							end
				end			
					
		if(noInvalid == 1'b1)
			begin 				
					for(currentWay=0; currentWay<3; currentWay=currentWay+1)
						if ((MemWays[index][currentWay][7] == 1'b0))							// Checa o LRU da via	
							begin
								if(wren == 1'b1) 														// Escrita
									begin																	
										MemWays[index][currentWay] = {3'b111,tag,write};	// Escreve o valor desejado
									end
								else
									begin
										MemWays[index][currentWay] = {3'b110,tag,tag};		// Escreve o valor da tag como dado, em caso de Miss na leitura
									end
									read = MemWays[index][currentWay];									
							end
				end
				
		// <------------- Miss
		
	end
endmodule

