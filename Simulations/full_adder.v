`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:23 08/22/2020 
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
module full_adder(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
	 wire co1,co2,s1;
	 half_adder HA1(a,b,s1,co1),
					HA2(s1,ci,s,co2);
	 or o1(co,co2,co1);
endmodule
