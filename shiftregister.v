module shiftregister(s1,d,clk,s0,q);
  input s1,clk;
  input [3:0] d;
  output s0;
  output [3:0] q;

  genvar i;

  assign d[3]=s1;

  generate
  for(i=0; i<=3; i=i+1)
     dflipflop DFF(.D(d[i]),.Q(q[i]),.clk(clk));
  endgenerate

  assign q[3]=d[2];
  assign q[2]=d[1];
  assign q[1]=d[0];
  assign q[0]=s0;

endmodul
