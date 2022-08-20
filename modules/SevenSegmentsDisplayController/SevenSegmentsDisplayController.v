module SevenSegmentsDisplayController(dataInput, controlOutput, reset);
	
	input [3:0] dataInput; // AA23, AA22, Y24, Y23
	input reset;
	output reg [6:0] controlOutput;
	

	always @ (dataInput, reset) begin
		if(reset) begin
			case (dataInput)
				4'h0: controlOutput = 7'B1000000; 
				4'h1: controlOutput = 7'B1111001; 
				4'h2: controlOutput = 7'B0100100; 
				4'h3: controlOutput = 7'B0110000; 
				4'h4: controlOutput = 7'B0011001; 
				4'h5: controlOutput = 7'B0010010;  
				4'h6: controlOutput = 7'B0000010; 
				4'h7: controlOutput = 7'B1111000; 
				4'h8: controlOutput = 7'B0000000; 
				4'h9: controlOutput = 7'B0010000; 
				4'hA: controlOutput = 7'B0001000; 				
				4'hB: controlOutput = 7'B0000011; 
				4'hC: controlOutput = 7'B1000110; 				
				4'hD: controlOutput = 7'B0100001;
				4'hE: controlOutput = 7'B0000110; 
				4'hF: controlOutput = 7'B0001110; 
				default: controlOutput = 7'B0111111; //blank, "-"
			endcase
		end
		else begin
			controlOutput = 7'B0111111;	
		end
	end
	
endmodule