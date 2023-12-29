// Half adder is a combinational circuit which computer binary addition of two binary inputs. 
// It is one of the basic combinational circuit in which we have combination of two gates (ex-or gate, and gate)

module half_add_dut (a,b,sum,carry);
  input a,b;
  output reg sum,carry;

  /*assign sum = a^b;
  assign carry = a&b; */

	always @(a,b)  //procedural assignm
		begin
  		sum<=a^b;
  		carry<=a&b;
		end
endmodule
