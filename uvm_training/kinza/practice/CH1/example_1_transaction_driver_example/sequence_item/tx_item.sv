/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    Random transaction item                                                             //
// Module Name:    tx_item.sv                                                                          //
// Project Name:   Random sequence item example                                                        //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         The tx_item class extends from uvm_sequence_item is used to generate 8-bit random data      //
//         items.                                                                                      //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_item extends uvm_sequence_item;

	//Factory Registration
	`uvm_object_utils(tx_item) 
	//Sequences or transactions are object classes so use object utility macros to register it into the factory
	
	//Constructor
	function new (string name="tx_item");
		super.new(name);
	endfunction

	rand bit [7:0] data;

endclass
