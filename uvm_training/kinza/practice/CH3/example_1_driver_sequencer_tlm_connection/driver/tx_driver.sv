/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    TLM connection                                                                      //
// Module Name:    tx_driver.sv                                                                        //
// Project Name:   Driver-sequencer TLM connection                                                     //
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

	//virtual tb_ifc vif;
	//agent_config agt_cfg;

	//constructor
	function new(string name,uvm_component parent);
		super.new(name,parent);
		//this.vif = vif;
	endfunction

	/*virtual function void build_phase (uvm_phase phase);
		if(!uvm_config_db #(agent_cfg)::get(this,"","agt_cfg",agt_cfg))
			`uvm_fatal("DRIVER","driver failed to get the virtual interface");
		vif = agt_cfg.vif;
	endfunction*/

	virtual task run_phase(uvm_phase phase);
		tx_item tx;
		forever begin
			seq_item_port.get_next_item(tx); //Driver call get_next_item which blocks the the driver until sequence send transaction handle to the driver by 																					calling finish item. This action unblocks the sequence
			//vif.transfer(tx); 						//transfer the item to the dut via virtual interface
			transfer(tx); 
			seq_item_port.item_done(); 		//When the transaction completes, the driver calls item_done() to tell the seq it is done with the item. This 																					call unblocks the sequence
		end
	endtask

	virtual task transfer(tx_item tr);
		`uvm_info("TRANSFER",$sformatf("tr.a=%d",tr.a),UVM_LOW);
		`uvm_info("TRANSFER",$sformatf("tr.b=%d",tr.b),UVM_LOW);
	endtask

endclass

/*NOTE: This driver class is just a sample. The commented statements will be used once we have DUT. For now, simply ignore these statements.*/
