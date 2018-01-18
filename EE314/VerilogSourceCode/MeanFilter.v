always @(posedge clk_in) begin
	if (x<row*column-1)
		x<=x+1;
	else
		x<=0;

	if(x<2*(row+1))
	filtered[x]<=data[x];


	if((x>row*(column-2)-3)&&(x<row*column))
	filtered[x]<=data[x];


	if((x<row*(column-2)-2)&&(x>2*(row+1)-1))begin
	filtered[x]<=(1/25)*(data[x-2*row-2]+data[x-2*row-1]+data[x-2*row]+data[x-2*row+1]+data[x-2*row+2]+data[x-row-2]+data[x-row-1]+data[x-row]+data[x-row+1]+data[x-row+2]+data[x-2]+data[x-1]+data[x]+data[x+1]+data[x+2]+data[x+row-2]+data[x+row-1]+data[x+row]+data[x+row+1]+data[x+row+2]+data[x+2*row-2]+data[x+2*row-1]+data[x+2*row]+data[x+2*row+1]+data[x+2*row+2]);
	end

end
