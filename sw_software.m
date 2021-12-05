sc_matrix = [5 -5 -5 -5; -5 5 -5 -5; -5 -5 5 -5; -5 -5 -5 5];
[opt_score,al,path,loc] = sw_algorithm(q',s',-1,sc_matrix);
disp(al);
plot = plotAlgnmentSWSoftware( q', s', path, loc(2), loc(1),opt_score, length(path)+1);