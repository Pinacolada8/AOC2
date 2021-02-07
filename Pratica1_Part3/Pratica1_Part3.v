module Pratica1_Part3(address, write, wren, clock, outWord, hit, writeBack);
	input [4:0]	address;
	input [2:0] write;
	input wren, clock;

	output reg [8:0] outWord;
	
	reg [1:0] index;
	output reg hit;
	output reg writeBack;
	reg checkForLRUData;
	reg [2:0] tag;

	// Matriz que representa todos os conjuntos e vias da cache
	reg [8:0] MemWays[3:0][0:3]; 
	
	integer changeLRU = 0;
	integer currentWay = 0;
	integer ii = 0;

	initial
	begin
	// MemWays[index][via] = [dados];
		MemWays[0][0] = 9'b110001001;
		MemWays[0][1] = 9'b000000000;
		MemWays[0][2] = 9'b000000000;
		MemWays[0][3] = 9'b000000000;

		MemWays[1][0] = 9'b110000010;
		MemWays[1][1] = 9'b110010110;
		MemWays[1][2] = 9'b110001011;
		MemWays[1][3] = 9'b000011000;

		MemWays[2][0] = 9'b110000101;
		MemWays[2][1] = 9'b000000000;
		MemWays[2][2] = 9'b000000000;
		MemWays[2][3] = 9'b000000000;

		MemWays[3][0] = 9'b000100000;
		MemWays[3][1] = 9'b000000000;
		MemWays[3][2] = 9'b000000000;
		MemWays[3][3] = 9'b000000000;
		
		hit = 1'b0;
		writeBack = 1'b0;
	end

	always@(posedge clock)
   	begin
			index = address%4;	// Subconjunto
			tag = address[4:2]; 	// Tag
			hit = 1'b0;
			writeBack = 1'b0;
			changeLRU = 0;

			// Hit ------------->
			for(currentWay=0; currentWay < 4; currentWay=currentWay+1)
				if ((MemWays[index][currentWay][8] == 1'b1) && (hit == 1'b0))	// Checa a validade da via		
					begin						
						if(tag == MemWays[index][currentWay][5:3]) 					// compara a tag com a tag salva na cache							
							begin																	// hit na via
								if(wren == 1'b1) 												// Escrita
									begin
										if(MemWays[index][currentWay][6] == 1'b1)		// Checa se o valor é dirty
											writeBack = 1'b1;
										MemWays[index][currentWay] = {3'b111,tag,write};
									end	
									
								MemWays[index][currentWay][7] = 1'b1;					// Coloca em "1"	o LRU da via acessada
								
								// Conta os LRUs em 1
								changeLRU = 0;
								for(ii=0; ii< 4; ii=ii+1)
									if (MemWays[index][ii][7] == 1'b1)
										changeLRU = changeLRU + 1;
									
								// Coloca todos os LRUs em "0" caso todos os LRUs forem ficar em 1
								if(changeLRU > 3)											
									for(ii=0; ii< 4; ii=ii+1)
										MemWays[index][ii][7] = 1'b0; 					// LRU das vias
								
								hit = 1'b1;	
								outWord = MemWays[index][currentWay];					// outWord recebe o valor salvo em cache													
								MemWays[index][currentWay][7] = 1'b1;					// Coloca em "1"	o LRU da via acessada	
							end
					end
		
		// <------------- Hit
					

		// Miss ------------->
		checkForLRUData = 1'b1;
		if(hit == 1'b0) // Miss, utilizando dados invalidos
				begin 				
					for(currentWay= 0; currentWay < 4; currentWay= currentWay+1)
						if ((MemWays[index][currentWay][8] == 1'b0) && (checkForLRUData == 1'b1))	// Checa a validade da via		
							begin								
								if(wren == 1'b1) 																		// Escrita
									begin																	
										MemWays[index][currentWay] = {3'b111,tag,write};					// Escreve o valor desejado
									end
								else
									begin								
										MemWays[index][currentWay] = {3'b110,tag,tag};						// Escreve o valor da tag como dado, em caso de Miss na leitura
									end
									
								// Conta os LRUs em 1
								changeLRU = 0;
								for(ii=0; ii< 4; ii=ii+1)
									if (MemWays[index][ii][7] == 1'b1)
										changeLRU = changeLRU + 1;
									
								// Coloca todos os LRUs em "0" caso todos os LRUs forem ficar em 1
								if(changeLRU > 3)											
									for(ii=0; ii< 4; ii=ii+1)
										MemWays[index][ii][7] = 1'b0; 											// LRU das vias
										
								MemWays[index][currentWay][7] = 1'b1;					// Coloca em "1"	o LRU da via acessada										
								checkForLRUData = 1'b0;
								outWord = MemWays[index][currentWay];								
							end
				end			
					
		if((checkForLRUData == 1'b1) && (hit == 1'b0)) // Miss, utilizando LRU
			begin 				
					for(currentWay= 0; currentWay < 4; currentWay= currentWay+1)
						if ((MemWays[index][currentWay][7] == 1'b0) && (checkForLRUData == 1'b1))	// Checa o LRU da via	
							begin
							
								if((MemWays[index][currentWay][8] == 1'b1) && (MemWays[index][currentWay][6] == 1'b1))	// Checa se o valor é valido e dirty
									writeBack = 1'b1;
			
								if(wren == 1'b1) 																		// Escrita
									begin												
										MemWays[index][currentWay] = {3'b111,tag,write};					// Escreve o valor desejado
									end
								else
									begin													
										MemWays[index][currentWay] = {3'b110,tag,tag};						// Escreve o valor da tag como dado, em caso de Miss na leitura
									end
									
								// Conta os LRUs em 1
								changeLRU = 0;
								for(ii=0; ii< 4; ii=ii+1)
									if (MemWays[index][ii][7] == 1'b1)
										changeLRU = changeLRU + 1;
									
								// Coloca todos os LRUs em "0" caso todos os LRUs forem ficar em 1
								if(changeLRU > 3)											
									for(ii=0; ii< 4; ii=ii+1)
										MemWays[index][ii][7] = 1'b0; 											// LRU das vias
									
								MemWays[index][currentWay][7] = 1'b1;											// Coloca em "1"	o LRU da via acessada	
								checkForLRUData = 1'b0;
								outWord = MemWays[index][currentWay];								
							end
				end
				
		// <------------- Miss
		
	end
endmodule

