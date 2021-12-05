function [ vecBase ] = base2dec( strBase, base )
%BASE2DEC Summary of this function goes here
%   Detailed explanation goes here
vecBase = zeros(1,length(strBase));

for i=1:length(base)
    vecBase(double(base(i)) == double(strBase))=i-1;
end


end

