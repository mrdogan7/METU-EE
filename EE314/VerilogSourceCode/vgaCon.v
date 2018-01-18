module hopvgae(clk_in,vga_h_sync, vga_v_sync, vga_R, vga_G, vga_B,clk,sel);
input clk_in;
input sel;
output vga_h_sync,vga_v_sync;
output reg [7:0]  vga_R, vga_G, vga_B;

reg [1:0] counter;
reg [9:0] countx;
reg [8:0] county;
reg vga_h, vga_v;
reg [7:0] data1 [767:0];
reg [7:0] data2 [767:0];
reg [7:0] data3 [767:0];
reg [7:0] data4 [767:0];
output reg clk;

reg[9:0] row;
reg[9:0] column;

initial begin
	clk=0;
	counter=0;
	countx=0;
	county=0;
	column=240;
	row=320;

	$readmemh("gray.txt", data1);
	$readmemh("filtered.txt", data2);

end

always @ (posedge clk_in) begin
	counter = counter+1;
	if (counter ==1)begin
		clk=~clk;
		counter=0;
	end
end

always @(posedge clk) begin
	if (countx<800)
		countx=countx+1;
	else begin
		countx=0;
		if (county< 525)
			county=county+1;
		else
			county=0;
	end
	if (countx>656 && countx<752)
		vga_h = 0;
	else
		vga_h = 1;
	if (county>490 && county<492)
		vga_v = 0;
	else
		vga_v = 1;

	if((countx>640 && countx<800) || (county>480 && county<525))begin
		vga_R<=8'h 0;
		vga_G<=8'h 0;
		vga_B<=8'h 0;
	end
	case (sel)
		0:
		if((county<row+100) && (county>100)&&(countx<column+100)&&(countx>100))begin
				vga_R<=data1[row*(countx-100)+county-100];
				vga_G<=data1[row*(countx-100)+county-100];
				vga_B<=data1[row*(countx-100)+county-100];
		end
		else begin
			vga_R<=8'h 0;
			vga_G<=8'h 0;
			vga_B<=8'h 0;
		end
		1:
		if((county<row+100) && (county>100)&&(countx<column+100)&&(countx>100))begin
				vga_R<=data2[row*(countx-100)+county-100];
				vga_G<=data2[row*(countx-100)+county-100];
				vga_B<=data2[row*(countx-100)+county-100];
		end
		else begin
			vga_R<=8'h 0;
			vga_G<=8'h 0;
			vga_B<=8'h 0;
		end

	endcase
end

assign vga_h_sync=vga_h;
assign vga_v_sync=vga_v;

endmodule
