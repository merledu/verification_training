interface tb_interface;
  
  logic [7:0] a, 
              b;
  
  modport tb_i_o (output a, 
                         b);

endinterface //interfacename