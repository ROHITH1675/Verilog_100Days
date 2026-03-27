`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:33 03/27/2026 
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
module full_adder(a_in,b_in,c_in,sum,carry
    );
	 input a_in,b_in,c_in;
	 output sum,carry;
	 wire w1,w2,w3;
	 
	 half_adder ha1(.a_in(a_in),.b_in(b_in),.sum(w1),.carry(w2));
	 half_adder ha2(.a_in(w1),.b_in(c_in),.sum(sum),.carry(w3));
	 assign carry = w2 | w3;


endmodule
