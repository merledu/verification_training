///////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                             //
//                                                                                                   //
// Engineers:      Kinza Qamar Zaman - Verification                                                  //
//                                                                                                   //
// Additional contributions by:                                                                      //
//                                                                                                   //
// Create Date:    17-MARCH-2022                                                                     //
// Design Name:    Random transaction class                                                          //
// Module Name:    tx_test.sv                                                                        //
// Project Name:   tx_item generate random transaction for src and dst.                              //
// Language:       SystemVerilog - UVM                                                               //
//                                                                                                   //
// Description:                                                                                      //
//             The tx_test class is extended by uvm_test to start the tx_item transaction.           //
// Revision Date:                                                                                    //
//                                                                                                   //
///////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_test extends uvm_test;

    //Factory registration
    `uvm_component_utils(tx_test)

    //constructor
    function new(string name,uvm_component parent);
        super.new(name,parent);
    endfunction

    tx_env env;

    //building the components inside the hierarchy of environment class
    virtual function void build_phase(uvm_phase phase);
        env = tx_env::type_id::create("env",this);
    endfunction

    /*Connect phase not required as we have no other component except of an agent class, 
		  exist inside the environment hierarchy*/
    virtual task run_phase (uvm_phase phase);
        tx_sequence seq;
        seq = tx_sequence::type_id::create("seq");
        phase.raise_objection(this,"Start tx_sequence");
        seq.start(env.agt.sqr);
        phase.drop_objection(this,"End tx_sequence");
    endtask

    //Print topology report
    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();
    endfunction : end_of_elaboration_phase

endclass
