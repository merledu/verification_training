class Driver;  
  
  virtual tb_interface.tb_i_o vif;

  function new(virtual tb_interface.tb_i_o vif);
    this.vif = vif;
  endfunction

  task send_data(input logic [7:0] a, b);
    vif.a <= a;
    vif.b <= b;
  endtask //new()

  endclass //className