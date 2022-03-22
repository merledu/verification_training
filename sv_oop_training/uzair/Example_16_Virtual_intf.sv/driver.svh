class driver;
  virtual intf.intf_tb vif;
  function new(virtual intf.intf_tb vif);
    this.vif = vif;
  endfunction

  task send_data(input logic [2:0] a_i,b_i);
    vif.opA_i <= a_i;
    vif.opB_i <= b_i;
  endtask
endclass