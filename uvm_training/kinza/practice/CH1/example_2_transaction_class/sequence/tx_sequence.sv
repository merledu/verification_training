/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    Random transaction item                                                             //
// Module Name:    tx_sequence.sv                                                                      //
// Project Name:   Random sequence item example                                                        //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_sequence randomizes the sequence item five times and sends them to driver.              //
// Revision Date:                                                                                      //
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
		repeat(5) begin
			tx = tx_item::type_id::create("tx"); //Body task creates transaction using factory creation
			start_item(tx);		                //Wait for driver to be ready
			if (!tx.randomize())		       // Randomize transaction
				`uvm_fatal("Fatal","Randomization Failed")
			finish_item(tx);		          /* Sends transaction and waits for response from driver to know when it is
			                                     ready again to generate and send transactions again */
		end
	endtask
	
endclass
