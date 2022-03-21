/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 01.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how classes are made and utilized in systemverilog ....	       //
//       .....                                                                                         //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  //class declaration

    	//property => contains information about objet
    		int age;
    		string name;

    	//constructor method
    	function new();
      	age = 0;
      	name = "";
    	endfunction

    	//more methods 
    	function void print();
    		$display("Animal : '%s' age = %a0d", name, age);
    	endfunction
    
    	task growold (int how_long);
      		repeat (how_long);
      		#1s age++;
   	 	endtask
		endclass : Animal

Animal a_h; //handle to Animal Object

initial begin 
	a_h = new();
	a_h.name = "Dog";
	a_h.growold (4);
	a_h.print();	//will print "Animal: 'Dog' age = 4 "
end
endmodule
