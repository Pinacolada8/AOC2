module Multiplexer(R0, R1, R2, R3, R4, R5, R6, R7, G, DIN, control, S);
  input [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
  input [15:0] G;
  input [15:0] DIN;
  input [9:0] control; //control com DINout, Gout, R0-R7out concatenados
  output reg[15:0] S;

  always@(control or R0 or R1 or R2 or R3 or R4 or R5 or R6 or R7 or G or DIN)
    begin
      case(control)			
			10'b0000000001: S <= R0;
         10'b0000000010: S <= R1;
			10'b0000000100: S <= R2;
         10'b0000001000: S <= R3;
         10'b0000010000: S <= R4;
         10'b0000100000: S <= R5;
         10'b0001000000: S <= R6;
         10'b0010000000: S <= R7;
         10'b0100000000: S <= G;
         10'b1000000000: S <= DIN;
			default: S <= 16'b0;
      endcase
    end

endmodule