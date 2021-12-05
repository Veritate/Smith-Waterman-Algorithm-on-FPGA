function [ strBase ] = dec2base( vecBase, base )
%DEC2BASE Summary of this function goes here
%   Detailed explanation goes here
strBase = '';

for i=1:length(vecBase)
    strBase = strcat(strBase, base(vecBase(i)+1));
end

end

