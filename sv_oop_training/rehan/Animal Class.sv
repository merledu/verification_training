`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Micro Electronics Research Lab
// Engineer: Rehan Ejaz
// Create Date: 14.03.2022 11:18:36
// Design Name: OOP Animal Class Systemverilog
// Module Name: top
// Description: OOP based CLASS to understand basic Classes of system verilog and their properties
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module top();
	class Animal;
			// Properties (Variables)
		int age    ;
		string name;
		// Constructor Method
		function new();
			age = 0  ;
			name = "";
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%s' age=%0d",name, age);        
		endfunction

		task growOld(input int how_long);
			repeat(how_long)
				#1s age++;
		endtask

	endclass           //Animal

	Animal a_h,a_h1;   //step #1 for creating object Creating Handler of class Animal

	initial begin
		a_h = new();     // step #2 Now the handle points to the object
		a_h.name = "Fluffy";
		a_h.growOld(3)     ;
		a_h.print()        ;
		a_h1 = new()       ;
		a_h1.print()       ;
	end

endmodule