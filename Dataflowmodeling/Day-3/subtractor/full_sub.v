// A full subtractor is a combinational circuit that performs subtraction involving three bits, namely a, b, and c, and it produces two outputs.
// difference and borrow.

module half_sub(a,b,c,dif,bor);
  input a,b,c;
 // output dif,bor;
  output reg dif,bor;
  //assign dif=a^b^c;
 // assign bor=!a&b|!a&c|b&c;
  always @(*)
    begin
        dif <= a^b^c;
        bor <= !a&b|!a&c|b&c;
    end
endmodule
