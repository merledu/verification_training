module test(intf.intf_tb cmp_o);
`include "driver.svh"
driver drv_h;
initial begin
  drv_h = new(cmp_o);
  drv_h.send_data(1,2);
  #5;
  drv_h.send_data(4,2);
  #5;
  drv_h.send_data(5,7); 
end
endmodule