/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    Random transaction item                                                             //
// Module Name:    tx_driver.sv                                                                        //
// Project Name:   Random sequence item example                                                        //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_driver is a specialized class that carries tx_item.                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_driver extends uvm_driver #(tx_item); //Specialized class with tx_item
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
			seq_item_port.get_next_item(tx); //driver gets the tx_item through the blocking TLM port
			transfer(tx); //Call transfer function
			seq_item_port.item_done();	
		end
	endtask
	virtual task transfer(tx_item tr);
		`uvm_info("TRANSFER",$sformatf("tr.data=%3d",tr.data),UVM_LOW);
	endtask
endclass
