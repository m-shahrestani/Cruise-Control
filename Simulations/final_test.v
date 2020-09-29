`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:59 09/18/2020
// Design Name:   control
// Module Name:   D:/amin/project_final/final_test.v
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

module final_test;

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
				repeat(50)
				#20 clock = ~clock;
    end 
	 
	initial begin
		// Initialize Inputs
		speed = 8'b11001000;
		vfeli = 8'b11001000;
		hooshyari = 3'b111;
		change = 2'b00;
		#20;
		hooshyari = 3'b111;
		vfeli = 8'b11001000;
		change = 2'b00;
      #40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		change = 2'b00;
		#40;
		hooshyari = 3'b011;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b10;
		#40;
		hooshyari = 3'b010;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b10;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b010;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b10;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		change = 2'b00;
		speed = vout1;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b10;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b11;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b000;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
		hooshyari = 3'b111;
		vfeli = vfelinew;
		speed = vout1;
		change = 2'b00;
		#40;
	end
      
endmodule


