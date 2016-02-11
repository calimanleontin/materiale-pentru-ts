function [] = myExpo2(lambda)
    for i = 1:10000
        y(1, i) = genExp(lambda);
    end
    
    [N, c] = hist(y, 15);
    N = N / sum(N) / (c(2) - c(1));
    %sum(N) * (c(2) - c(1))
    bar(c, N, 1);
    hold on;
    expo(y, lambda);
end
function [y] = genExp( lambda )
  k = 0;
  zz = 0;
  n = 0;
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
    n = n + 1;
    %k = k + 1;
  end
  n = n - 1;
  y = (n + zz) / lambda;
end

function[] =  expo(x, lambda) 
    v = min(x) : 0.05 : max(x);
    e = exp(1);
    [m,n] = size(v);
    for i = 1:n
        if(v(1, i) < 0)
            f(1, i) = 0;
        else
            f(1, i) = lambda * e.^(-lambda * v(1, i));
        end
    end
    plot(v, f);
end