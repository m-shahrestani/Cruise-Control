`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:57 09/09/2020
// Design Name:   control
// Module Name:   D:/university/term4/amini/lab/codes/project_final/test1.v
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

module test1;

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
	wire [7:0] vout;

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
		.vout(vout)
	);  
  initial
		begin
				clock = 0;
				repeat(20)
				#80 clock = ~clock;
    end 
  
	initial begin
	
		speed = 8'b10001000;
		vfeli = 8'b10001000;
		hooshyari = 3'b011;
		change = 2'b11;
		// Wait 100 ns for global reset to finish
		#80;
		hooshyari = 3'b110;
      #100;
		change = 2'b10;
		hooshyari = 3'b010;
		// Add stimulus here

	end
      
endmodule

