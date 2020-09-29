`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:57 09/10/2020
// Design Name:   control
// Module Name:   D:/university/term4/amini/lab/codes/project_final/test2.v
// Project Name:  project_final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg [7:0] speed;
	reg [7:0] vfeli;
	reg [2:0] hooshyari;
	reg [1:0] change;
	reg clock;

	// Outputs
	wire tormoz;
	wire [2:0] pashesh;
	wire gt;
	wire eq;
	wire lt;
	wire [1:0] changewire;
	wire [7:0] vout1;
	wire [7:0] vfelinew;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.speed(speed), 
		.vfeli(vfeli), 
		.hooshyari(hooshyari), 
		.change(change), 
		.clock(clock), 
		.tormoz(tormoz), 
		.pashesh(pashesh), 
		.gt(gt), 
		.eq(eq), 
		.lt(lt), 
		.changewire(changewire), 
		.vout1(vout1),
		.vfelinew(vfelinew)
	);
  initial
		begin
				clock = 0;
				repeat(30)
				#20 clock = ~clock;
    end 
	 
	initial begin
		// Initialize Inputs
		speed = 8'b11001000;
		vfeli = 8'b11001000;
		hooshyari = 3'b111;
		change = 2'b00;
		#20;
		hooshyari = 3'b110;
		vfeli = vfelinew;
      #40;
		change = 2'b00;
		hooshyari = 3'b000;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b111;
		change = 2'b00;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b111;
		change = 2'b00;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b111;
		change = 2'b00;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b111;
		change = 2'b00;
		vfeli = vfelinew;
		#40;
		vfeli = vfelinew;
		hooshyari = 3'b010;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b011;
		vfeli = vfelinew;
		#40;
		hooshyari = 3'b000;
		vfeli = vfelinew;
	end
      
endmodule

