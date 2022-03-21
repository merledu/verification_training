/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 03.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how constructor method can hold any value of properties	       //
//       .....                                                                                         //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  //class declaration
    //property 
    int age;
    string name;

    //constructor method
    function new(); //we can add any value in constructor according to data type
      age = 1;
      name = "Dog";
    endfunction

    //another method
    function void print();
    $display("Animal : '%s' age = %a0d", name, age);
    endfunction
    
  endclass : Animal

Animal a_h; //handle to Animal Object

initial begin 
	a_h = new();
	a_h.print();	//will print "Animal: 'Dog' age = 1 "
end
endmodule
