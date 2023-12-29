// The full adder is a digital component that performs three numbers an implemented using the logic gates.
// Full adders are used in ALUs of CPU of computers are used in calculators.

module full_adder(a,b,c,sum,carry);
  input a,b,c;
  //output sum,carry;
  output reg sum,carry;
 // assign sum = a^b^c;
 // assign carry = a&b | b&c | c&a;
  always @(*)
    begin
        sum <= a^b^c;
        carry <= a&b | b&c | c&a;
    end
endmodule
