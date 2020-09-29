`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:13:48 08/30/2020 
// Design Name: 
// Module Name:    one_bit_comp 
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
module one_bit_comp(
    input a,
    input b,
    input g,
    input e,
    input l,
    output gt,
    output eq,
    output lt
    );
	 wire an,bn,axnb,abn,anb,geq,leq;
	 not  n1(an,a),
	      n2(bn,b);
	 xnor xn1(axnb,a,b);
	 and  a1(abn,a,bn),
	      a2(anb,an,b),
			a3(geq,g,axnb),
			a4(leq,l,axnb),
			a5(eq,e,axnb);
	 or   o1(gt,abn,geq),
	      o2(lt,anb,leq);
endmodule
