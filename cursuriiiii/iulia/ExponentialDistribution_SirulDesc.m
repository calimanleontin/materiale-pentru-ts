function [ ] = ExponentialDistribution_SirulDesc(lambda)
    %METODA SIRULUI DESCENDENT
    for i = 1:1000
        y(1,i) = randExp(lambda);
    end
    [N, C] = hist(y, 15);
    N = N / (sum(N) * (C(2) - C(1)));
    
    bar(C, N, 1, 'w');
    hold on;
    
        x = min(y):0.1:max(y);
    [a, n] = size(x);
    for i = 1:n
        v(1,i) = exppdf(x(1,i), 1/lambda);
    end
    plot(x, v);
end

function [y] = randExp(lambda)
    n = 0;
    ok = false;
    
    while(ok == false)
        z0 = rand(1,1);
        zstar = z0;
        z1 = rand(1, 1);
        k = 1;
        while(z0 >= z1)
            z0 = z1;
            z1 = rand(1, 1);
            k = k + 1;
        end
        if mod(k, 2) == 0
             n = n + 1;
        else
            ok = true;
        end
    end
    y = zstar + n;
    y = y / lambda;
   
end
