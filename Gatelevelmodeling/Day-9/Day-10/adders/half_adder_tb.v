module half_add_tb;
  reg a,b;
  wire s,c;
  half_add_dut sai (.a(a),.b(b),.s(s),.c(c));
  initial begin
	  repeat(8) begin
      */{a,b}=$random;
     $display("a=%b,b=%b,s=%b,c=%b",a,b,s,c);
endmodule
