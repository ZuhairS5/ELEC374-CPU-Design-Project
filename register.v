// Zuhair Shaikh and Brant Li
// Simple Register Design in Verilog
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University 

module register (D, clk, clr, enable, Q); // ports

	input [31:0] D; // port declarations
	input clk;
	input clr;
	input enable;
	output [31:0] Q;
	reg [31:0] Q;
	
	always @ (posedge clr, posedge clk) // port logic 
		if (clr)
			Q <= 0;
		else if (enable)
			Q <= D;

endmodule // end module 