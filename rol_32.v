// Zuhair Shaikh and Brant Lan Li
// ROL Operation (ROL)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module rol_32(
	input wire [31:0] rIn, rotB,
	output wire [31:0] rOut
	);
	
	assign rOut = (rIn >> (32-(rotB%32)))|(rIn << (rotB%32));
endmodule