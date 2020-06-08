module adder4bits(cout, sum, a, b, cin);
  output cout, sum;
  input a, b, cin;
  wire[3:0]   a, b, sum;
  full_adder f1(cout0,sum[0],a[0],b[0],cin);
  full_adder f2(cout1,sum[1],a[1],b[1],cout0);
  full_adder f3(cout2,sum[2],a[2],b[2],cout1);
  full_adder f4(cout,sum[3],a[3],b[3],cout2);
endmodule