module top();
  class Animal;
    int age;
    string name;
    static string farmer = "Fred";
  endclass
  initial $display("the farmer for all animals is %s",Animal::farmer);

  Animal a_h, b_h;
  initial begin
    a_h = new();
    a_h.farmer = "Oliver";
    b_h = new();
    $display("%s %s", a_h.farmer, b_h.farmer);
  end
endmodule