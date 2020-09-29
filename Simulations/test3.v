`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:07:10 09/12/2020
// Design Name:   control
// Module Name:   D:/university/term4/amini/lab/codes/project_final/test3.v
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

module test3;

	// Inputs
	reg [2:0] hooshyari;
	reg clock;
	reg gt;
	reg eq;
	reg lt;

	// Outputs
	wire tormoz;
	wire [2:0] pashesh;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.hooshyari(hooshyari), 
		.clock(clock), 
		.gt(gt), 
		.eq(eq), 
		.lt(lt), 
		.tormoz(tormoz), 
		.pashesh(pashesh)
	);
	
  initial
		begin
				clock = 0;
				repeat(20)
				#80 clock = ~clock;
    end 
	 
	initial begin
		// Initialize Inputs
		hooshyari = 3'b000;
		gt = 1;
		eq = 0;
		lt = 0;

		// Wait 100 ns for global reset to finish
		#80;
        
		// Add stimulus here

	end
      
endmodule

