`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:39 09/09/2020 
// Design Name: 
// Module Name:    control 
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
module control(
    input [7:0] speed,
    input [7:0] vfeli,
    input [2:0] hooshyari,
    input [1:0] change,
	 input clock,
    output reg tormoz,
    output reg [2:0] pashesh,
	 output  gt,
	 output  eq,
	 output  lt,
	 output reg [1:0] changewire,
	 output  gt1,
	 output  eq1,
	 output  lt1,
	 output [7:0] vout,
	 output [7:0] vout1,
	 output reg [7:0] vfelinew
    );
	 reg [1:0] moodavalie = 2'b01;
	 reg [2:0] prstate; 
	 reg [2:0] nxtstate;
	 parameter s0 = 3'b000,s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4 = 3'b100,s5 = 3'b101,s6 = 3'b110,s7 = 3'b111;
	 mohasebe_mantegh m1(moodavalie,speed,vfeli,clock,gt,eq,lt,vout);
	 always @ (hooshyari or change) begin
		if(hooshyari == 3'b010 || hooshyari == 3'b011 && change == 2'b10) changewire = 2'b00;
		else changewire = change; end
		mohasebe_mantegh m2(changewire,speed,vfeli,clock,gt1,eq1,lt1,vout1);
	 always @ (posedge clock) 
		prstate = nxtstate; 
	 always @ (prstate or hooshyari or gt or eq or lt)
		if (eq && ~lt && ~gt) begin
		case (prstate)
		s0: 		if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s0;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
		s1:      if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s1;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
		s2:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s2;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;

		s3:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s3;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
		s4:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s4;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;

		s5:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s5;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
		s6:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s6;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;

		s7:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s7;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
		endcase
		end
		
else	if (~eq && lt && ~gt) begin
		case (prstate)
		s0: 	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s0;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s1;
			 
		s1:      if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s1;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s2;
			 
		s2:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s2;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s3;

		s3:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s3;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
			 
		s4:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s4;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s5;

		s5:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s5;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s6;
		s6:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s6;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s7;

		s7:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s7;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s7;
		endcase
		end

else	if (~eq && ~lt && gt) begin
		case (prstate)
		s0: 	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s0;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s0;
			 
		s1:      if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s1;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s0;
			 
		s2:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s2;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s1;

		s3:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s3;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s2;
			 
		s4:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s4;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s3;

		s5:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s5;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s4;
			 
		s6:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s6;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s5;
			 

		s7:	   if (hooshyari == 3'b000) nxtstate = s0;
			 else if (hooshyari == 3'b001) nxtstate = s0;
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011) nxtstate = s6;
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111) nxtstate = s6;
		endcase
		end
	  
	  else nxtstate = s4;
	  
	 always @ (prstate or hooshyari or gt or eq or lt or nxtstate or speed or vfeli or vfelinew)
	 if (eq && ~lt && ~gt)begin
		case (prstate)
		s0: 		if (hooshyari == 3'b000) begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed;
						pashesh = nxtstate;  
						end
		s1:      if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001111;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate;
						end
		s2:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001010;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate; 
						end
		s3:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00000101;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate; 
						end
		s4:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate;  
						end
		s5:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00000101;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed;  
						pashesh = nxtstate;
						end
		s6:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					    vfelinew = vfeli + 8'b00001010;
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed;  
						pashesh = nxtstate;
						end
		s7:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001111;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate; 
						end
		endcase
		end

	 else if (~eq && lt && ~gt)begin
		case (prstate)
		s0: 		if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001111;
						pashesh = nxtstate; 
						end
		s1:      if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001111;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001010; 
						pashesh = nxtstate; 
						end
		s2:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001010;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00000101; 
						pashesh = nxtstate; 
						end
		s3:      if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00000101;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = speed;  
						pashesh = nxtstate;
						end
		s4:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = speed; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00000101;
						pashesh = nxtstate; 
						end
		s5:		if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00000101;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001010;
						pashesh = nxtstate;  
						end
		s6:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;   
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001010;
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001111;
						pashesh = nxtstate;  
						end

		s7: 	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001111; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001111;
						pashesh = nxtstate;  
						end
		endcase
		end

	 else if (~eq && ~lt && gt)begin
		case (prstate)
		s0: 		if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
		s1:      if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001111; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
		s2:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001010;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001111; 
						pashesh = nxtstate; 
						end
		s3:      if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;   
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00000101;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00001010;
						pashesh = nxtstate;  
						end
		s4:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00000101;
						pashesh = nxtstate;  
						end
		s5:		if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00000101; 
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli; 
						pashesh = nxtstate; 
						end
		s6:	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000;  
						pashesh = nxtstate;
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;   
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001010;
						pashesh = nxtstate;   
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00000101;
						pashesh = nxtstate;   
						end
		s7: 	   if (hooshyari == 3'b000)begin
						tormoz = 1'b1;
					   vfelinew =8'b00000000; 
						pashesh = nxtstate; 
						end
			 else if (hooshyari == 3'b001)begin
						tormoz = 1'b0;
					   vfelinew = vfeli - 8'b00010100;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b010 || hooshyari == 3'b011)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001111;
						pashesh = nxtstate;  
						end
			 else if (hooshyari == 3'b100 || hooshyari == 3'b101 || hooshyari == 3'b110 || hooshyari == 3'b111)begin
						tormoz = 1'b0;
					   vfelinew = vfeli + 8'b00001010;
						pashesh = nxtstate;	
						end
		endcase
		end
		
	  else begin		
	  tormoz = 1'b0;
	  vfelinew = vfeli;
	  pashesh = 3'b100;
		end
		
endmodule
