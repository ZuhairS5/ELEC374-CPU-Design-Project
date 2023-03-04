// Zuhair Shaikh and Brant Lan Li
// SHRA Operation (SHRA)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module shra_32(
	input wire [31:0] rA, rB,
	output reg [31:0] rZ
	);
	
	always @(*)
		begin
			assign rZ = rA >>> rB;
		end
endmodule