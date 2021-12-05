function [ fig ] = plotAlign2DLatex(query_reference, align_sequence, path_align, addri, addrj, maxVal, sizeL )
    count = 1;
    way = 1;
    
    q = query_reference;
    s = align_sequence;
    
    path =  path_align;

    i = sizeL+1;%lenght s
    j = 0;%lenght q
    
    x = [];
    y = [];
    while(way > 0 && count <= length(path))
       way = path(count); 
       if(way == 2)
           if(count == 1)
               j = j+1;
               i = i-1;
               x = [x i];
               y = [y j];  
           end
           j = j+1;
           i = i-1;
           x = [x i];
           y = [y j];
       elseif(way == 3)
           i = i-1;
           x = [x i];
           y = [y j];
       elseif(way == 1)
          j = j+1;
          x = [x i];
          y = [y j];
       end
       count = count+1;
    end
    fig = plot(x,y,'s','MarkerSize',10,...
    'MarkerEdgeColor','red',...
    'MarkerFaceColor',[1 .6 .6]);
    ax = gca;
    labelX = char(num2cell(q));
    labelY = char(num2cell(s));
    set(gca, 'XTickLabel', labelX, 'xtick', [i:length(labelX)+1],'Fontsize',7);
    set(gca, 'YTickLabel', flip(labelY), 'ytick', [j+1-length(labelY):length(labelY)],'Fontsize',7);
    tit = sprintf(['SW algorithm\n Maximum Value = %d; Row = %d;' ...
    ' Colunm = %d;'], maxVal,addri,addrj);
    title(tit, 'FontSize',14)
    xlabel('sequnece q');
    ylabel('sequnece s');


end