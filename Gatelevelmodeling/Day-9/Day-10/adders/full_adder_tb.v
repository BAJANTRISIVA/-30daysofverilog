module full_adder_tb;
  reg a,b,c;
  wire s,carry;
  full_add_dut fa(.a(a),.b(b),.c(c),.s(s),.carry(carry));
  initial begin
    repeat(5) begin
    {a,b,c}=$random;
    $display("a=%b,b=%b,c=%b,s=%b,carry=%b",a,b,c,s,carry);
    end
  end
endmodule
