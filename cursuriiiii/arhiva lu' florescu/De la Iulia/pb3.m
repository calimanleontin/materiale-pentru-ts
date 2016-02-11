function [x, y ] = pb3( lambda, n )
    x = rand(1, n);
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

