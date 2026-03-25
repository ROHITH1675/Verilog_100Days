`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:29 03/25/2026 
// Design Name: 
// Module Name:    full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder( a_in,b_in,c_in,sum,c_out
    );
	 input a_in,b_in,c_in;
	 output sum,c_out;
	 
	 assign sum = a_in ^ b_in ^ c_in;
	 assign c_out = (a_in & b_in) | (b_in & c_in) | (a_in & c_in);


endmodule
