module ca(output reg[0:3] out, input clk, rst);
	
	wire x1, x2, x3,x4;
	assign x1=0^out[0]^out[1];
	assign x2=out[0]^out[2];
	assign x3=out[1]^out[2]^out[3];
	assign x4=0^out[2];
	//assign feedback_1 = out[0] ^ out[2];
	//assign feedback_2 = out[1] ^ out[2] ^ out[3];
	//assign feedback_3 = out[2] ^ out[3] ^ out[4];
	
	always @ (posedge clk, posedge rst)
		begin
			if(rst) out = 4'b0001;
			else
				out <= {x1,x2,x3,x4};
	     end

endmodule

