// Zuhair Shaikh and Brant Lan Li
// SUB Operation (SUB)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module sub_32(
	input wire [31:0] rA, rB, S,
	input wire cIn,
	output wire cOut
	);
	
	wire [31:0] cTemp;
	
	neg_32 neg_operation(.rA(rB), .rZ(cTemp));
	add_32 add_operation(.rA(rA), .rB(cTemp), .cIn(cIn), .S(S),.cOut(cOut));
endmodule