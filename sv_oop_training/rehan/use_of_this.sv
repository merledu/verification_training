`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Micro Electronics Research Lab
// Engineer: Rehan Ejaz
// Create Date: 18.03.2022 
// Design Name: OOP Animal Class Systemverilog
// Module Name: top
// Description: OOP based CLASS to understand basic Classes of system verilog and their properties
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////
module top();
	class Animal;
			// Properties (Variables)
		int age    ;
		string name;
		// Constructor Method
		function new(int    age,
                 string name);
      this.age = age;          // this.age shows that the age is from the class property
      this.name  name;
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%s' age=%0d",name, age);        
		endfunction

	endclass           //Animal

  task make_dog();
    Animal dog_h;
    dog_h = new(.age(7), .name("Pup"));
  endtask

	Animal a_h;

	initial begin
		make_dog();    
	end

endmodule