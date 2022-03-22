module top ();
  tb_interface ifc();

  test t0(.ifc(ifc));

  Adder  d0(.a(ifc.a),
          .b(ifc.b));

endmodule