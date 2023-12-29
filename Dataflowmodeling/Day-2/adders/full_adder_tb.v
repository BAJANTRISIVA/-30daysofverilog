module full_adder_tb;
  reg a,b,c;
  wire sum,carry;
 // full_adder f1(a,b,c,sum,carry);  //order mapping 
  full_adder f1(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));  //named mapping
  initial begin
        $monitor("a=%0d,b=%0d,c=%0d,sum=%0d,carry=%0d",a,b,c,sum,carry);
        a=0;b=0;c=0;
     #1 a=0;b=0;c=1;
     #2 a=0;b=1;c=0;
     #4 a=0;b=1;c=1;
     #6 a=1;b=0;c=0;
     #8 a=1;b=0;c=1;
     #2 a=1;b=1;c=0;
    #12 a=1;b=1;c=1;
      end
endmodule
