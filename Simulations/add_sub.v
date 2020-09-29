`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:54 08/22/2020 
// Design Name: 
// Module Name:    part2 
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

module add_sub(
    input [7:0] a,
    input sel,
    output [7:0] s,
    output co
    );
	 reg [7:0] b = 8'b0000101;
	 wire selxorb0,selxorb1,selxorb2,selxorb3,selxorb4,selxorb5,selxorb6,selxorb7,c1,c2,c3,c4,c5,c6,c7;
	 xor 		   x0(selxorb0,b[0],sel),
				   x1(selxorb1,b[1],sel),
		         x2(selxorb2,b[2],sel),
		         x3(selxorb3,b[3],sel),
					x4(selxorb4,b[4],sel),
					x5(selxorb5,b[5],sel),
					x6(selxorb6,b[6],sel),
					x7(selxorb7,b[7],sel);
	 full_adder FA1(a[0],selxorb0,sel,s[0],c1),
					FA2(a[1],selxorb1,c1,s[1],c2),
					FA3(a[2],selxorb2,c2,s[2],c3),
					FA4(a[3],selxorb3,c3,s[3],c4),
					FA5(a[4],selxorb4,c4,s[4],c5),
					FA6(a[5],selxorb5,c5,s[5],c6),
					FA7(a[6],selxorb6,c6,s[6],c7),
					FA8(a[7],selxorb7,c7,s[7],co);
endmodule
