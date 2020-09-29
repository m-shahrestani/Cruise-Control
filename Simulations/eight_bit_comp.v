`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:21:32 08/30/2020 
// Design Name: 
// Module Name:    eight_bit_comp 
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
module eight_bit_comp(
    input [7:0] a,
    input [7:0] b,
    output gt,
    output eq,
    output lt
    );
	 wire [6:0] g;
	 wire [6:0] e;
	 wire [6:0] l;
	 reg xg = 1'b0;
	 reg xe = 1'b1;
	 reg xl = 1'b0;
    one_bit_comp c1(a[0],b[0],xg,xe,xl,g[0],e[0],l[0]),
					  c2(a[1],b[1],g[0],e[0],l[0],g[1],e[1],l[1]),
					  c3(a[2],b[2],g[1],e[1],l[1],g[2],e[2],l[2]),
					  c4(a[3],b[3],g[2],e[2],l[2],g[3],e[3],l[3]),
					  c5(a[4],b[4],g[3],e[3],l[3],g[4],e[4],l[4]),
					  c6(a[5],b[5],g[4],e[4],l[4],g[5],e[5],l[5]),
					  c7(a[6],b[6],g[5],e[5],l[5],g[6],e[6],l[6]),
					  c8(a[7],b[7],g[6],e[6],l[6],gt,eq,lt);

endmodule
