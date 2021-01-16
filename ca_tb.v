module ca_tb();
	
	wire[0:3] out;
	reg clk = 0,rst;
	
	ca dut(out,clk,rst);
	
	always #5 clk = ~clk;
		
	initial
		begin 
			//Rule-05
			rst = 1;
			#3 rst = 0;
			
			#400 $finish;

		end
endmodule
