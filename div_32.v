// Zuhair Shaikh and Brant Lan Li
// DIV Operation (DIV)
// ELEC374 - Digital Systems Engineering
// Department of Electrical and Computer Engineering
// Queen's University

module div_32(
	input wire [31:0] M, Q,
	output reg [63:0] QR
	);
	
	reg [32:0] mT;
	reg [31:0] qT;
	reg [32:0] aT;
	reg nFlag;
	integer i;
	
	always @(*) begin
		aT = 0;
		
		if (M[31]==0) begin
			mT = {1'b0, M};
		end else begin
			mT = {1'b0, -M};
		end
		
		if (Q[31]==0) begin
			qT = Q;
		end else begin
			qT = -Q;
		end
		
		if (M[31]^Q[31]==1) begin
			nFlag = 1'b1;
		end else begin
			nFlag = 1'b0;
		end
		
		for (i=0; i<32; i=i+1) begin
			aT = aT << 1'b1;
			aT[0] = qT[31];
			qT = qT << 1'b1;
			
			if (aT[32]==1) begin
				aT = aT + mT;
				qT[0] = 1'b0;
			end else begin
				aT = aT - mT;
				qT[0] = 1'b1;
			end
		end
		
		if (aT[32]==1) begin
			aT = aT + mT;
		end
		
		if (nFlag == 1) begin
			qT = -qT;
		end
		
		QR[63:32] = aT[31:0];
		QR[31:0] = qT[31:0];
	end
endmodule