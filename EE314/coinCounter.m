f=imread('nonoise4.png');
f=rgb2gray(f);
column=240;
row=320;
maxf=max(max(f));
minf=min(min(f));
diff=maxf-minf;

maxg=255;
norm= double(diff)./double(maxg);
for i=1:320;
    for ii=1:240;
        f(i,ii)=f(i,ii)./norm;
    end
end
figure
imshow(f)
fid = fopen('gray.txt', 'wt');
fprintf(fid, '%x\n', f);
fclose(fid);


C=zeros(row,column);

for x=3:row-2
 for y=3:column-2
    C(x,y)=f(x-2,y-2)*(1/25)+f(x-1,y-2)*(1/25)+f(x,y-2)*(1/25)+f(x+1,y-2)*(1/25)+f(x+2,y-2)*(1/25)+f(x-2,y-1)*(1/25)+f(x-1,y-1)*(1/25)+f(x,y-1)*(1/25)+f(x+1,y-1)*(1/25)+f(x+2,y-1)*(1/25)+f(x-2,y)*(1/25)+f(x-1,y)*(1/25)+f(x,y)*(1/25)+f(x+1,y)*(1/25)+f(x+2,y)*(1/25)+f(x-2,y+1)*(1/25)+f(x-1,y+1)*(1/25)+f(x,y+1)*(1/25)+f(x+1,y+1)*(1/25)+f(x+2,y+1)*(1/25)+f(x-2,y+2)*(1/25)+f(x-1,y+2)*(1/25)+f(x,y+2)*(1/25)+f(x+1,y+2)*(1/25)+f(x+2,y+2)*(1/25);
  end
end


for xx=3:row-2
  for yy=3:column-2
    if C(xx,yy)<220
        C(xx,yy)=0;
    elseif C(xx,yy)>=220
        C(xx,yy)=255;
    end
  end
end
C(1,:)=255; C(2,:)=255; C(row-1,:)=255; C(row,:)=255; C(:,1)=255;
C(:,2)=255; C(:,column-1)=255; C(:,column)=255;
C=uint8(C);
filterout =int32(C);
figure
imshow(C);

fid2 = fopen('filtered.txt', 'wt');
fprintf(fid2, '%x\n', C);
fclose(fid2);

for x=1:row;
    for y=1:column;
        if C(x,y)==0;
            refa=x;
            refb=y;
        end
    end
end
ref=0;
for x=1:column-1;
    if (C(refa-3,x)==C(refa-3,x+1) && (C(refa-3,x)==0))
        ref=ref+1;
    end
end
reff=ref/2;
gradOut=zeros(row,column);
for x=1:row
    for y=1:column
        gradOut(x,y)=255;
    end
end

for x=2:row-1
    for y=2:column-1
        gradSy=filterout(x-1,y-1)*(-1)+filterout(x,y-1)*(0)+filterout(x+1,y-1)*(1)+filterout(x-1,y)*(-2)+filterout(x,y)*(0)+filterout(x+1,y)*(2)+filterout(x-1,y+1)*(-1)+filterout(x,y+1)*(0)+filterout(x+1,y+1)*(1);
        gradSx=filterout(x-1,y-1)*(-1)+filterout(x,y-1)*(-2)+filterout(x+1,y-1)*(-1)+filterout(x-1,y)*(0)+filterout(x,y)*(0)+filterout(x+1,y)*(0)+filterout(x-1,y+1)*(1)+filterout(x,y+1)*(2)+filterout(x+1,y+1)*(1);
if gradSx <0
  gradSx=gradSx*(-1);
end
if gradSy <0
  gradSy=gradSy*(-1);
end

gradS=gradSx+gradSy;


if gradS<800
  gradOut(x,y)=255;
else
  gradOut(x,y)=0;
end

    end
end
for x=1:17
    gradOut(x,:)=255;
end
for x=303:row
    gradOut(x,:)=255;
end
for y=1:26
    gradOut(:,y)=255;
end
for y=215:column
    gradOut(:,y)=255;
end
gradOut=uint8(gradOut);
figure
imshow(gradOut)
fid3 = fopen('edge.txt', 'wt');
fprintf(fid3, '%x\n', gradOut);
fclose(fid3);
r25=reff-2;
r50=reff-0.5;
r100=reff+1;
gradOut50=gradOut;
gradOut100=gradOut;
gradOut25=gradOut;

for x=1:row
         for y=1:column
           if gradOut25(x,y)==0
          gradOut25(x,y)=255;
          for theta=0:360
                  a=ceil(x+r25*sind(theta));
              if a<=0
                  a=1;
              end

                        b=ceil(y+r25*cosd(theta));
                        if b<=0
                  b=1;
              end
              if b>column
                  b=column;
              end
              if a>row
                  a=row;
              end
              gradOut25(a,b)=gradOut25(a,b)-1;
         end
       end
         end
end
for x=1:row
         for y=1:column
           if gradOut25(x,y)>10
          gradOut25(x,y)=255;
      end
    end
end
money50=0;
money25=0;
money100=0;
for x=1:row
         for y=1:column
     if gradOut25(x,y)==0
       gradOut25(x+1,y)=255;
       gradOut25(x-1,y)=255;
       gradOut25(x,y-1)=255;
       gradOut25(x,y+1)=255;
       gradOut25(x+1,y+1)=255;
       gradOut25(x+1,y-1)=255;
       gradOut25(x-1,y-1)=255;
       gradOut25(x-1,y+1)=255;
     end
     if gradOut25(x,y)==0
       money25=money25+1;
     end
    end
end
for x=1:row
         for y=1:column
           if gradOut50(x,y)==0
          gradOut50(x,y)=255;
          for theta=0:360
                  a=ceil(x+r50*sind(theta));
              if a<=0
                  a=1;
              end

                        b=ceil(y+r50*cosd(theta));
                        if b<=0
                  b=1;
              end
              if b>column
                  b=column;
              end
              if a>row
                  a=row;
              end
              gradOut50(a,b)=gradOut50(a,b)-1;
         end
       end
         end
end
for x=1:row
         for y=1:column
           if gradOut50(x,y)>10
          gradOut50(x,y)=255;
      end
    end
end
for x=1:row
         for y=1:column
     if gradOut50(x,y)==0
       gradOut50(x+1,y)=255;
       gradOut50(x-1,y)=255;
       gradOut50(x,y-1)=255;
       gradOut50(x,y+1)=255;
       gradOut50(x+1,y+1)=255;
       gradOut50(x+1,y-1)=255;
       gradOut50(x-1,y-1)=255;
       gradOut50(x-1,y+1)=255;
     end
     if gradOut50(x,y)==0
       money50=money50+1;
     end
    end
end
for x=1:row
         for y=1:column
           if gradOut100(x,y)==0
          gradOut100(x,y)=255;
          for theta=0:360
                  a=ceil(x+r100*sind(theta));
              if a<=0
                  a=1;
              end

                        b=ceil(y+r100*cosd(theta));
                        if b<=0
                  b=1;
              end
              if b>column
                  b=column;
              end
              if a>row
                  a=row;
              end
              gradOut100(a,b)=gradOut100(a,b)-1;
         end
       end
         end
end
for x=1:row
         for y=1:column
           if gradOut100(x,y)>10
          gradOut100(x,y)=255;
      end
    end
end
for x=1:row
         for y=1:column
     if gradOut100(x,y)==0
       gradOut100(x+1,y)=255;
       gradOut100(x-1,y)=255;
       gradOut100(x,y-1)=255;
       gradOut100(x,y+1)=255;
       gradOut100(x+1,y+1)=255;
       gradOut100(x+1,y-1)=255;
       gradOut100(x-1,y-1)=255;
       gradOut100(x-1,y+1)=255;
     end
     if gradOut100(x,y)==0
       money100=money100+1;
     end
    end
end
figure
imshow(gradOut25);

figure
imshow(gradOut50);

figure
imshow(gradOut100);

coins=money100+money50+money25;
money=1*money100+0.50*money50+0.25*money25;
fprintf('Total Money is = %f tl\n',money);
fprintf('Number of coins is = %f',coins);
