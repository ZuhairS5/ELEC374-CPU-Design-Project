// Zuhair Shaikh and Brant Lan Li
// SHL Operation (SHL)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module shl_32(
	input wire [31:0] rA, rB,
	output wire [31:0] rZ
	);
	
	assign rZ = rA << rB;
endmodule