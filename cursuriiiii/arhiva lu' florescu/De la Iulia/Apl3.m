function [] = Apl3()
   Apl2(1:1:10);
end

function [] = Apl2(X)
    p = binopdf(X,10,0.5);
    for i = 1:1000
        y(1, i) = Apl1(X, p)
    end
    [x1, n1] = hist(y);
    bar(1:1:10, x1 / 1000)
    hold on;
end


function [y] = Apl1(X, p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    p2 = cumsum(p);
    [m, n] = size(X);
    u = rand(1);
    if isempty(find(p2 <= u))
        idx = 1;
    else
        idx = max(find(p2 <= u));
    end
    y = X(1, idx);
end 