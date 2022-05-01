/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    Analysis port example                                                               //
// Module Name:    tx_item.sv                                                                          //
// Project Name:   Agent-Monitor TLM connection              		                          		         //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         The tx_item class extends from uvm_sequence_item is used to generate 31-bit random a and    //
//		     b items.                                                                             		   //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_item extends uvm_sequence_item;
	//Factory Registration
	`uvm_object_utils(tx_item) 	/* Sequencer or transactions are object classes so use object utility 
								  							 macros to register it into the factory. */
	
	//Constructor
	function new (string name="tx_item");
		super.new(name);
	endfunction

	rand bit [31:0] a;
	rand bit [31:0] b;
	
endclass

