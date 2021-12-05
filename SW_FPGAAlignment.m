function [strAlign, aliL] = SW_FPGAAlignment( query_s, sequence, path_align, addri, addrj)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% call example: align = SW_FPGAAlignment( q, s, V, L(2), L(3), Base )
% Example 1;
% V = [2 2 2 2 2 2 1]; L = [13 7 6]; 
% qCode = [0 1 0 1 0 1 3 0]; sCode = [0 1 0 1 0 1 3 0];
% Example 2
% V = [2 3 2 3 2 2]; L = [6 5 6];
% qCode = [0 1 0 1 0 1 3 0]; sCode = [2 2 1 0 0 3 2 3];

aliL =1;
l = 1;
dist = 1;

q = query_s;
s = sequence;

strAlQ = '';
strAlS = '';
strAux = '';

path =  path_align;

i = addri;%lenght s
j = addrj;%lenght q

while(dist > 0 && l <= length(path) && (j+1>0) && (i+1>0))
   dist = path(l);   
   l = l + 1;
   if(dist == 2)%align
       strAlQ = strcat(strAlQ,q(j+1));
       strAlS = strcat(strAlS,s(i+1));
       strAux = strcat(strAux,'|');
       j = j-1;
       i = i-1;       
   elseif(dist == 1)
       strAlQ = strcat(strAlQ,'-');
       strAlS = strcat(strAlS,s(i+1));
       strAux = strcat(strAux,58);
       i = i-1;
   elseif(dist == 3)
       strAlQ = strcat(strAlQ,q(j+1));
       strAlS = strcat(strAlS,'-');
       strAux = strcat(strAux,58);
       j = j-1;
   end   
end

aliL = l;
strAlign = [flip(strAlQ);flip(strAux);flip(strAlS)];


end