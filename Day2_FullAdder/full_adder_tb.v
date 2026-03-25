`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:18:42 03/25/2026
// Design Name:   full_adder
// Module Name:   /home/rohithtj/Verilog_100/full_adder/full_adder_tb.v
// Project Name:  full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;

	// Inputs
	reg a_in;
	reg b_in;
	reg c_in;

	// Outputs
	wire sum;
	wire c_out;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a_in(a_in), 
		.b_in(b_in), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a_in = 0;
		b_in = 0;
		c_in = 0;
	end
	
	initial begin 
	for(i=0;i<8;i=i+1)begin
	{c_in,b_in,a_in} =i;
	#10;
	end
	end
	
	initial $monitor("Input C=%b B=%b A=%b Output Sum=%b Carry=%b",c_in,b_in,a_in,sum,c_out);
	initial #100 $finish;
	
	
      
endmodule

