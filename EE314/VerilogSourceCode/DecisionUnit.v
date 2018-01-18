module Filter(bir,elli,yirmibes,clk_in,sseg_temp,sseg_temp2,reset,sseg_temp3,sseg_temp4);
input clk_in;
input bir;
input elli;
input yirmibes;
integer a,b,c,d,e,f,h ;
output reg [6:0] sseg_temp ;
output reg [6:0] sseg_temp2 ;
output reg [6:0] sseg_temp3 ;
output reg [6:0] sseg_temp4 ;
input reset;
initial begin
a=0;
b=0;
c=0;
e=0;
end
always @(posedge bir) begin
a=a+1;
end
always @(posedge elli) begin
b=b+1;
end
always @(posedge yirmibes) begin
c=c+1;
end
always @(posedge clk_in) begin
d = (4*a+2*b+c);
f= (a+b+c) ;
if (d>9 && d<20) begin
e=1;
d=d-10;
end
if (d>19 && d<30) begin
e=2;
d=d-20;
end
if (d>29 && d<40) begin
e=3;
d=d-30;
end
if (d>39 && d<50) begin
e=4;
d=d-40;
end
if (d>49) begin
e=0;
d=d-50;
end
if (f>9 && f<20) begin
h=1;
f=f-10;
end
if (f>19 && f<30) begin
h=2;
f=f-20;
end
if (f>29 && f<40) begin
h=3;
f=f-30;
end
if (f>39 && f<50) begin
h=4;
f=f-40;
end
if (f>49) begin
h=0;
f=f-50;
end
end
always @ (posedge clk_in)
 begin
  case(d)
   4'd0 : sseg_temp = 7'b1000000; //to display 0
   4'd1 : sseg_temp = 7'b1111001; //to display 1
   4'd2 : sseg_temp = 7'b0100100; //to display 2
   4'd3 : sseg_temp = 7'b0110000; //to display 3
   4'd4 : sseg_temp = 7'b0011001; //to display 4
   4'd5 : sseg_temp = 7'b0010010; //to display 5
   4'd6 : sseg_temp = 7'b0000010; //to display 6
   4'd7 : sseg_temp = 7'b1111000; //to display 7
   4'd8 : sseg_temp = 7'b0000000; //to display 8
   4'd9 : sseg_temp = 7'b0010000; //to display 9
   default : sseg_temp = 7'b0111111; //dash
  endcase
  case(e)
   4'd0 : sseg_temp2 = 7'b1000000; //to display 0
   4'd1 : sseg_temp2 = 7'b1111001; //to display 1
   4'd2 : sseg_temp2 = 7'b0100100; //to display 2
   4'd3 : sseg_temp2 = 7'b0110000; //to display 3
   4'd4 : sseg_temp2 = 7'b0011001; //to display 4
   4'd5 : sseg_temp2 = 7'b0010010; //to display 5
   4'd6 : sseg_temp2 = 7'b0000010; //to display 6
   4'd7 : sseg_temp2 = 7'b1111000; //to display 7
   4'd8 : sseg_temp2 = 7'b0000000; //to display 8
   4'd9 : sseg_temp2 = 7'b0010000; //to display 9
   default : sseg_temp2 = 7'b0111111; //dash
  endcase
  case(f)
   4'd0 : sseg_temp3 = 7'b1000000; //to display 0
   4'd1 : sseg_temp3 = 7'b1111001; //to display 1
   4'd2 : sseg_temp3 = 7'b0100100; //to display 2
   4'd3 : sseg_temp3 = 7'b0110000; //to display 3
   4'd4 : sseg_temp3 = 7'b0011001; //to display 4
   4'd5 : sseg_temp3 = 7'b0010010; //to display 5
   4'd6 : sseg_temp3 = 7'b0000010; //to display 6
   4'd7 : sseg_temp3 = 7'b1111000; //to display 7
   4'd8 : sseg_temp3 = 7'b0000000; //to display 8
   4'd9 : sseg_temp3 = 7'b0010000; //to display 9
   default : sseg_temp3 = 7'b0111111; //dash
  endcase
  case(h)
   4'd0 : sseg_temp4 = 7'b1000000; //to display 0
   4'd1 : sseg_temp4 = 7'b1111001; //to display 1
   4'd2 : sseg_temp4 = 7'b0100100; //to display 2
   4'd3 : sseg_temp4 = 7'b0110000; //to display 3
   4'd4 : sseg_temp4 = 7'b0011001; //to display 4
   4'd5 : sseg_temp4 = 7'b0010010; //to display 5
   4'd6 : sseg_temp4 = 7'b0000010; //to display 6
   4'd7 : sseg_temp4 = 7'b1111000; //to display 7
   4'd8 : sseg_temp4 = 7'b0000000; //to display 8
   4'd9 : sseg_temp4 = 7'b0010000; //to display 9
   default : sseg_temp4 = 7'b0111111; //dash
  endcase
 end
endmodule
