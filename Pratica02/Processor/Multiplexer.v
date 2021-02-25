module Multiplexer(R, G, DIN, controle, S);
  input [15:0] R[7:0];
  input [15:0] G;
  input [15:0] DIN;
  input controle [9:0]; //Controle com DINout, Gout, R0-R7out concatenados
  output reg[15:0] S;
  
  always@(controle)
    begin
      case(controle)
        10'b0000000001: S <= R[0];
		  10'b0000000010: S <= R[1];
        10'b0000000100: S <= R[2];
		  10'b0000001000: S <= R[3];
		  10'b0000010000: S <= R[4];
		  10'b0000100000: S <= R[5];
		  10'b0001000000: S <= R[6];
		  10'b0010000000: S <= R[7];
		  10'b0100000000: S <= G;
		  10'b1000000000: S <= DIN;
      endcase
    end
  
endmodule
