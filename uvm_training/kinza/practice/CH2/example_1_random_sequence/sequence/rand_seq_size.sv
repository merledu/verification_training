/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    Random sequence class                                                               //
// Module Name:    rand_seq_size.sv                                                                    //
// Project Name:   Randomize sequence class.                                                           //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          rand_size_seq randomizes the sequence.                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class rand_size_seq extends uvm_sequence #(tx_item);

	`uvm_object_utils(rand_size_seq)

	function new(string name="rand_size_seq");
		super.new(name);
		if (!(this.randomize))
		`uvm_fatal("Failed","Randomization Failed");
	endfunction 

	rand bit [31:0] block_size;
	constraint size {soft block_size inside {32,255};}

	virtual task body();
		tx_item tx;
		repeat(block_size) begin //generate transactions for block size times
		tx = tx_item::type_id::create("tx"); //Body task creates transaction using factory creation
		start_item(tx);		       //Wait for driver to be ready
		if (!tx.randomize())		       // Randomize transaction
			`uvm_fatal("Fatal","Randomization Failed")
		finish_item(tx);		      //Sends transaction and waits for response from driver to know when it is ready again to generate 							and send transactions again
		end
	endtask
endclass
