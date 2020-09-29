`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:00 09/05/2020 
// Design Name: 
// Module Name:    mohasebe_mantegh 
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
module mohasebe_mantegh(
    input [1:0] s,
    input [7:0] vmatloob,
    input [7:0] vfeli,
	 input clock,
    output reg gt,
    output reg eq,
    output reg lt,
    output reg [7:0] vout
    );
	 reg mosbat = 1'b0;
	 reg manfi = 1'b1;
	 wire co1,co2,g,e,l;
	 wire [7:0] vout1;
	 wire [7:0] vout2;
				 eight_bit_comp e1(vfeli,vmatloob,g,e,l);
				 add_sub a1(vmatloob,mosbat,vout1,co1),
							 a2(vmatloob,manfi,vout2,co2);
	 always @ (posedge clock )
		       if      (s == 2'b00) vout = vmatloob;
				 else if (s == 2'b01)begin 
				  gt = g;
				  eq = e;
				  lt = l;
				  vout = vmatloob;
				  end
				 else if (s == 2'b10)begin 
				 vout = vout1;
				  gt = 1'b0;
				  eq = 1'b0;
				  lt = 1'b0;
				  end
				 else if (s == 2'b11)begin
				 vout = vout2;
				  gt = 1'b0;
				  eq = 1'b0;
				  lt = 1'b0;
				  end
endmodule