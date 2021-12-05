function [ strBase ] = init_convStrBase( vecBase, base )
%INIIT_CONVSTRBASE Summary of this function goes here
%   Detailed explanation goes here
strBase = '';
if nargin < 2     
    for i=1:length(vecBase)
        strBase = strcat(strBase, '-');
    end
else 
    strBase = dec2base(vecBase, base);
end

end

