module full_adder_tb; 
  reg a,b,c;
  wire sum,carry;
 // Instantiate the DUT
 full_add_dut dut(.a(a),
                  .b(b),
                  .c(c),
                  .sum(sum),
                  .carry(carry)
                );
  initial begin
       a = 0; b = 0; c = 0;
       #10;
       $display("Test Case 2: a=%b, b=%b, c=%b, sum=%b, carry=%b",a,b,c,sum,carry);
    
       a = 1; b = 0; c = 0;
       #10;
       $display("Test Case 2: a=%b, b=%b, c=%b, sum=%b, carry=%b",a,b,c,sum,carry);
    
       a = 1; b = 1; c = 0;
       #10;
       $display("Test Case 3: a=%b, b=%b, c=%b, sum=%b, Cout=%b",a,b,c,sum,carry);

       a = 1; b = 1; c = 1;
       #10;
       $display("Test Case 4: a=%b, b=%b, c=%b, sum=%b, Cout=%b", a,b,c,sum,carry);
       $finish;
  end
endmodule

