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
