/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 05.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how configurable constructor can have same local variables      //
//       as property                                                                                   //
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
    function new(string name, int age); //configurable constructor with same local variables as property
      this.age = age;
      this.name = name;
    endfunction

    //another method
    function void print();
    $display("Animal : '%s' age = %a0d", name, age);
    endfunction
    
  endclass : Animal

Animal a_h;

initial begin
  a_h = new(.name("Puppy"), .age(5));
	a_h.print();	//will print "Animal: 'Puppy' age = 5 "
end
endmodule
