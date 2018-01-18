module edgeo(outof,clk);

output reg outof;

integer i,ii,iii,iv,v;
integer filee,gradSx,gradSy,gradS,row,column,m;
input clk;

reg [9:0] data [0:76799];
reg [9:0] filtered [0:76799];
reg [9:0] gradOut [0:76799];

initial begin
  column=320;
  row=240;

  $readmemh("filtered.txt", data);

  for(iv=0;iv<column+1;iv=iv+1)begin
    gradOut[iv]<=0;
  end

  for(v=column*row-column-1;v<row*column;v=v+1)begin
    gradOut[v]<=0;
  end

   for (iii=column+1;iii<column*row-column-1;iii=iii+1)begin
    gradSy=filtered[iii-column-1]*(1)+filtered[iii-1]*(4)+filtered[iii+column-1]*(1)+filtered[iii-column+1]*(-1)+filtered[iii+1]*(-4)+filtered[iii+column+1]*(-1);
    gradSx=filtered[iii-column-1]*(-1)+filtered[iii-column]*(-4)+filtered[iii-column+1]*(-1)+filtered[iii+column-1]*(1)+filtered[iii+column]*(4)+filtered[iii+column+1]*(1);
if (gradSx <0 )
      gradSx=gradSx*(-1);
    if (gradSy <0)
      gradSy=gradSy*(-1);

    gradS=gradSx+gradSy;

    if (gradS<240)
      gradOut[iii]<=0;
    else
      gradOut[iii]<=255;
end
end
always @ (posedge clk_in && iii==(column*row-column-1) ) begin
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

	if((county<row+100) && (county>100)&&(countx<column+100)&&(countx>100))begin
			vga_R<=gradOut[row*(countx-100)+county-100];
			vga_G<=gradOut[row*(countx-100)+county-100];
			vga_B<=gradOut[row*(countx-100)+county-100];
	end
	else begin
		vga_R<=8'h 0;
		vga_G<=8'h 0;
		vga_B<=8'h 0;
	end
end
assign vga_h_sync=vga_h;
assign vga_v_sync=vga_v;


assign outof=1;

end
endmodule 
