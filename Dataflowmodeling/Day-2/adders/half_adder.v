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
