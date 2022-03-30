/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    extended transaction item                                                           //
// Module Name:    tx_driver.sv                                                                        //
// Project Name:   tx_dst_fixed is extended from tx_item generate transaction for fixed dst            //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_driver is a specialized class that carries tx_dsT_fixed items.                          //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_driver extends uvm_driver #(tx_dst_fixed);

	//Factory Registration
	`uvm_component_utils(tx_driver)
  /*constructor has 2 arguments: 
	  1) name of the object
    2) handle to the parent */
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction
	virtual task run_phase(uvm_phase phase);
		tx_dst_fixed tx;
		forever begin
			seq_item_port.get_next_item(tx);//driver gets the tx_item through the blocking TLM port
			transfer(tx); //Call transfer function
			seq_item_port.item_done();	
		end
	endtask
	virtual task transfer(tx_dst_fixed tr);
		`uvm_info("TRANSFER",$sformatf("tr.fixed_dst=%3d",tr.fixed_dst),UVM_LOW);
		`uvm_info("TRANSFER",$sformatf("tr.dst=%3d",tr.dst),UVM_LOW);
		`uvm_info("TRANSFER",$sformatf("tr.src=%3d",tr.src),UVM_LOW);
	endtask
endclass
