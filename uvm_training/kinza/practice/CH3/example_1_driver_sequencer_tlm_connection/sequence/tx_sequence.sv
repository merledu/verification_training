/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    TLM connection                                                                      //
// Module Name:    tx_sequence.sv                                                                      //
// Project Name:   Driver-sequencer TLM connection                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_sequence randomizes the sequence.                                                       //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_sequence extends uvm_sequence #(tx_item);
	//Factory Registration
	`uvm_object_utils(tx_sequence)

	//Constructor
	function new(string name="tx_sequence");
		super.new(name);
	endfunction

	virtual task body();
		tx_item tx;
		repeat(19) begin
			tx = tx_item::type_id::create("tx"); //Body task creates transaction using factory creation
			start_item(tx);		                  /*start item. sequence body() blocks waiting for driver to 
			                                      be ready.Driver ask about sending transaction in its run phase.*/
			if (!tx.randomize())		            //Randomize transaction
			  `uvm_fatal("Fatal","Randomization Failed");
			finish_item(tx);		              /*Sends transaction and waits for response from driver to know when it is 
			                                    ready again to generate and send transactions again. Sequence body() 
												                  will be blocked again. */
		end
	endtask

	//After the body() methods returns , it passes the control back to the test.

endclass
