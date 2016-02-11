function [y] = Lab5Pb1(lambda)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    u = rand(1);
    if u <= 0.5
        s = 1;
    else
        s = -1;
    end;
    x1 = genExp(lambda);
    y = s * x1;:

end

function [x, y ] = genExp( lambda )
    x = rand(1, 1);
    y = inverse(lambda, x);
    c = hist(y, 10);
    c = c / sum(c);
    bar(c)
end

function[y] = densitate(lambda) 
    
end

function[y] = inverse(lambda, u) 
    y = -1 / lambda * log(u);
end