module mux_8_1(s0,s1,s2,i,y);
    input [7:0]i;
	  input s0,s1,s2;
	  output y;
  
	  wire [11:1]w;
    not n1(w[1],s0);
    not n2(w[2],s1);
    not n3(w[3],s2);
    and a1(w[4],w[1],w[2],w[3]);
    and a2(w[5],s0,w[2],w[3]);
    and a3(w[6],w[1],s1,w[3]);
    and a4(w[7],s0,s1,w[3]);
    and a5(w[8],w[1],w[2],s2);
    and a6(w[9],s0,w[2],s2);
    and a7(w[10],w[1],s1,s2);
    and a8(w[11],s0,s1,s2);
    or o1(y,w[4],w[5],w[6],w[7],w[8],w[9],w[10],w[11]);
endmodule
