function [] = myExpo(lambda)
    for i = 1:10000
        y(1, i) = genExp(lambda);
    end
    
    [N, c] = hist(y, 15);
    N = N / sum(N) / (c(2) - c(1));
    sum(N) * (c(2) - c(1))
    bar(c, N, 1);
    hold on;
    expo(y, lambda);
end
function [y] = genExp( lambda )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
  k = 0;
  zz = 0;
  while mod(k, 2) == 0
    k = 1;
    z0 = rand(1, 1);
    z1 = rand(1, 1);
    zz = z0;
    while z0 >= z1
        z0 = z1;
        z1 = rand(1, 1);
        k = k + 1;
    end
    %k = k + 1;
  end
   y = zz;
end

function[] =  expo(x, lambda) 
    v = min(x) : 0.05 : max(x);
    e = exp(1);
    [m,n] = size(v);
    for i = 1:n
        if(v(1, i) > 1)
            f(1, i) = 0;
        else
            f(1, i) = e.^(-v(1, i)) / (1 - e.^(-1));
        end
    end
    plot(v, f);
end
