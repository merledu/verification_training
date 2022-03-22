module test (tb_interface.tb_i_o ifc);
  
  Driver drv_h;
  
  initial begin
    drv_h = new(ifc);
    drv_h.send_data(3,5);
    #10;
    drv_h.send_data(1,2);
    #10;
    drv_h.send_data(2,1);
    #10;
    drv_h.send_data(0,4);
    #10;
    drv_h.send_data(8,7);
    #10;
    drv_h.send_data(9,6);
  end
endmodule