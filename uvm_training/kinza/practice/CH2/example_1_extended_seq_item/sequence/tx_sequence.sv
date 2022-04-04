/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    extended transaction item                                                           //
// Module Name:    tx_sequence.sv                                                                      //
// Project Name:   tx_dst_fixed is extended from tx_item generate transaction for fixed dst            //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_agent builds and connects driver and sequencer.                                         //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_sequence extends uvm_sequence #(tx_dst_fixed);

	//Factory Registration
	`uvm_object_utils(tx_sequence)

	//Constructor
	function new(string name="tx_sequence");
		super.new(name);
	endfunction
	
	virtual task body();
		tx_dst_fixed tx;
		repeat(19) begin
			tx = tx_dst_fixed::type_id::create("tx"); //Body task creates transaction using factory creation
			start_item(tx);		       									//Wait for driver to be ready
			if (!tx.randomize())		       						// Randomize transaction
				`uvm_fatal("Fatal","Randomization Failed")
			finish_item(tx);		      								/*Sends transaction and waits for response from driver to know
																									when it is ready again to generate and send transactions again */
		end
	endtask

endclass
