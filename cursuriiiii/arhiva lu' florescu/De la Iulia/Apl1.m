function [y] = Apl1(X, p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    p2 = cumsum(p)
    [m, n] = size(X);
    u = rand(1)
    if isempty(find(p2 < u))
        idx = 0;
    else
        idx = max(find(p2 < u));
    end
    y = X(1, idx + 1);
end 

