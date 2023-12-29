module full_sub_tb;
  reg a,b,c;
  wire dif,bor;
  reg [2:0]i;
  full_sub h1(a,b,c,dif,bor);
  initial begin
    $monitor("a=%0d,b=%0d,c=%0d,dif=%0d,bor=%0d",a,b,c,dif,bor);
    /*  a=0;b=0;c=0;
 #2   a=0;b=0;c=1;
 #2   a=0;b=1;c=0;
 #2   a=0;b=1;c=1;
 #2   a=1;b=0;c=0;
 #2   a=1;b=0;c=1;
 #2   a=1;b=1;c=0;
 #2   a=1;b=1;c=1;*/
 
    for(i=0;i<=8;i=i+1)
        begin
            {a,b,c}=i;
            #2;
        end
  end
  initial #200 $stop;
endmodule
