module encoder_4_2(i,y);
    input [3:0]i;
    output [1:0]y;
  
    or o1 (y[0],i[1],i[3]);
    or o2 (y[1],i[2],i[3]);
endmodule
