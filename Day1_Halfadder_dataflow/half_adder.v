`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:51 03/24/2026 
// Design Name: 
// Module Name:    half_adder 
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
module half_adder( a_in,b_in,sum,carry
    );
	 input a_in,b_in;
	 output sum,carry;
	 
	 assign sum = a_in ^ b_in;
	 assign carry = a_in & b_in;


endmodule
