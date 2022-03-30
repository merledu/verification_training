/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    Random sequence class                                                               //
// Module Name:    tx_driver.sv                                                                        //
// Project Name:   Randomize sequence class.                                                           //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_driver is a specialized class that carries tx items.                                    //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_driver extends uvm_driver #(tx_item);

	//Factory Registration
	`uvm_component_utils(tx_driver)
    /*constructor has 2 arguments: 
	  1) name of the object
      2) handle to the parent */
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction
	virtual task run_phase(uvm_phase phase);
		tx_item tx;
		forever begin
			seq_item_port.get_next_item(tx);//driver gets the tx_item through the blocking TLM port
			transfer(tx); //Call transfer function
			seq_item_port.item_done();	
		end
	endtask
	virtual task transfer(tx_item tr);
		`uvm_info("TRANSFER",$sformatf("tr.dst=%3d",tr.dst),UVM_LOW);
		`uvm_info("TRANSFER",$sformatf("tr.src=%3d",tr.src),UVM_LOW);
	endtask
endclass
