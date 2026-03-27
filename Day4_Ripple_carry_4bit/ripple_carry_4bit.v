`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:56 03/27/2026 
// Design Name: 
// Module Name:    ripple_carry_4bit 
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
module ripple_carry_4bit(a_in,b_in,c_in,sum,carry
    );
	 
	 input [3:0] a_in,b_in;
	 input c_in;
	 output [3:0] sum;
	 output carry;
	 wire [2:0] c_out;
	 
	 full_adder fa0(.a_in(a_in[0]),.b_in(b_in[0]),.c_in(c_in),.sum(sum[0]),.carry(c_out[0]));
	 full_adder fa1(.a_in(a_in[1]),.b_in(b_in[1]),.c_in(c_out[0]),.sum(sum[1]),.carry(c_out[1]));
	 full_adder fa2(.a_in(a_in[2]),.b_in(b_in[2]),.c_in(c_out[1]),.sum(sum[2]),.carry(c_out[2]));
	 full_adder fa3(.a_in(a_in[3]),.b_in(b_in[3]),.c_in(c_out[2]),.sum(sum[3]),.carry(carry));
	 


endmodule
