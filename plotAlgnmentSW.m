function [ img ] = plotAlgnmentSW( query_s, sequence, path_align, addri, addrj, maxVal, sizeL )
%PLOTALGNMENTSW Summary of this function goes here
%   Detailed explanation goes here
% align = plotAlgnmentSW( qCode, sCode, V, L(2), L(3), Base )

mtxwidth = addrj+1;
mtxlength = addri+1;

mtxImg = ones(sizeL+1+4,mtxwidth);
mtxImg = uint8(mtxImg);

l = 1;
dist = 1;

q = query_s;
s = sequence;

path =  path_align;

i = sizeL;%lenght s
j = addrj;%lenght q


figure('units','normalized','outerposition',[0 0 1 1]);


out = 2;
while(dist > 0 && l <= length(path) && (j+1>0) && (i+1>0))
   dist = path(l);   
   l = l+1;
   if(dist == 2)%align
       mtxImg(i+1,j+1)=out;
       j = j-1;
       i = i-1;       
   elseif(dist == 1)
          mtxImg(i+1,j+1)=out;
       i = i-1;
   elseif(dist == 3)
          mtxImg(i+1,j+1)=out;
       j = j-1;
   end

end

img = imagesc(mtxImg);
img.AlphaData = 1;
grid on;
grid minor;

ax = gca;
labelX = char(num2cell(q));
labelY = char(num2cell(s(mtxlength:sizeL+mtxlength)));
set(gca,'XTickLabel',labelX,'xtick',[1:length(labelX)],'Fontsize',7);
set(gca,'YTickLabel',labelY,'ytick',[0:4:sizeL+4]);
tit = sprintf(['SW algorithm\n Maximum Value = %d; Row = %d;' ...
    ' Colunm = %d;'], maxVal,addri,addrj);
title(tit, 'FontSize',14)
xlabel('sequnece q');
ylabel('sequnece s');

end

