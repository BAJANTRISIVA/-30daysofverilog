// A half subtractor is a combinational circuit which is used to perform subtraction of two bits and it has two inputs and two outputs
// namely difference and borrow.

module half_sub(a,b,dif,bor);
  input a,b;
 // output dif,bor;
  output reg dif,bor;
  //assign dif=a^b;
 // assign bor=!a&b;
  always @(*)
    begin
        dif <= a^b;
        bor <= !a&b;
    end
endmodule
