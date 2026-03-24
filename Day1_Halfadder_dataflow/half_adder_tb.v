`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:58:44 03/24/2026
// Design Name:   half_adder
// Module Name:   /home/rohithtj/Verilog_100/Half_adder_dataflow/half_adder_tb.v
// Project Name:  Half_adder_dataflow
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_tb;

	// Inputs
	reg a_in;
	reg b_in;

	// Outputs
	wire sum;
	wire carry;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a_in(a_in), 
		.b_in(b_in), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a_in = 0;
		b_in = 0;

	end
	
	initial begin
	for(i=0;i<4;i=i+1)begin
	{a_in,b_in} = i;
	#10;
	end
	end
	
	initial $monitor("Input A=%b B=%b Output Sum=%b Carry=%b",a_in,b_in,sum,carry);
	initial 
	#40 $finish;
      
endmodule

