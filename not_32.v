// Zuhair Shaikh and Brant Lan Li
// NOT Operation (NOT)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module not_32(
	input wire [31:0] rA,
	output wire [31:0] rZ
	);
	
	genvar i;
	generate
		for (i=0; i<32; i=i+1) begin : gen_not
			assign rZ[i] = !rA[i];
		end
	endgenerate
endmodule