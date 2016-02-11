function [y] = Lab5Pb1(lambda)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    u = rand(1, 10000);
    for i = 1:10000
        if u(1,i) <= 0.5
            s = 1;
        else
            s = -1;
        end;
        x1(1, i) = genExp(lambda);
        y(1,i) = s * x1(1, i);
    end
    [N, c] = hist(y, 20);
    N = N / sum(N);
    bar(c, N, 1);
    hold on;
    expo(y, lambda);
end

function[] =  expo(x, lambda) 
    v = min(x) : 0.1 : max(x);
    e = exp(1);
    f = lambda / 2  * e.^(-lambda * abs(v));
    plot(v, f);
end

function [y] = genExp( lambda )
    x = rand(1, 1);
    y = inverse(lambda, x);
     %hist(y, 10)
    
end

function[y] = inverse(lambda, u) 
    y = -1 / lambda * log(u);
end