///////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                             //
//                                                                                                   //
// Engineers:      Kinza Qamar Zaman - Verification                                                  //
//                                                                                                   //
// Additional contributions by:                                                                      //
//                                                                                                   //
// Create Date:    14-Mar-2022                                                                       //
// Design Name:    hello_pkg                                                                         //
// Module Name:    hello_pkg.sv                                                                      //
// Project Name:   Basic UVM example of hello world                                                  //
// Language:       SystemVerilog - UVM                                                               //
//                                                                                                   //
// Description:                                                                                      //
//             The hello_test class is extended by uvm_test to print hello world message.            //
// Revision Date:                                                                                    //
//                                                                                                   //
///////////////////////////////////////////////////////////////////////////////////////////////////////

package hello_pkg;
	`include "uvm_macros.svh" //Includes uvm macros utility
	import uvm_pkg::*; //import uvm base classes

	class hello_world extends uvm_test;
		//Register component in factory 
		`uvm_component_utils(hello_world)
		//constructor
		function new (string name, uvm_component parent);
			super.new(name,parent);
		endfunction
		/*In this example there is no other component exist, hence we only hello_test class only have to 
		override run_phase */
		virtual task run_phase(uvm_phase phase);    
			`uvm_info("ID","Hello world",UVM_LOW);
		endtask
		//Print topology report
		//This step is optional and not required as this example has only one component in the hierarchy
		function void end_of_elaboration_phase(uvm_phase phase);
			uvm_top.print_topology();
		endfunction : end_of_elaboration_phase
	endclass
endpackage