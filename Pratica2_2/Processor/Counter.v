module Counter(Clock, Nextmem, Resetn, n);
	input Clock;
	input Nextmem;
	input Resetn;
	output reg [4:0] n;
	
	initial
	begin
		n = 5'b11111;
	end
	
	always@(posedge Clock or posedge Resetn or posedge Nextmem)
	begin
		if(Resetn == 1'b1)
			n <= 5'b0;
		else
			n <= n+1'b1;
	end
	
endmodule