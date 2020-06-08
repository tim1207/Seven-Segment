module top(x_out, y_out,c_out, sum_out, x, y);
  output [6:0] x_out, y_out, sum_out, c_out;
  input [3:0] x,y;
  wire cout;
  wire [3:0] sum;
  adder4bits adder1( .cout(cout), .sum(sum), .a(x), .b(y), .cin(1'b0));
  SevenSegmentDecoder hex3( .seg_out(x_out) , .seg_in(x));
  SevenSegmentDecoder hex1( .seg_out(y_out) , .seg_in(y));
  SevenSegmentDecoder hex2( .seg_out(c_out) , .seg_in({3'b0,cout}));
  SevenSegmentDecoder hex0( .seg_out(sum_out) , .seg_in(sum));
endmodule