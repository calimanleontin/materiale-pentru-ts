function [] = lomax( lambda, a, b )
    for i = 1:10000
        y = gamrnd(a, 1/b);
        z(1, i) = genExp(lambda * y);
    end
    [N, c] = hist(z, 20);
    N = N / (sum(N) * (c(2) - c(1)));
    bar(c, N, 1);
    hold on;
    lomaxPlot(z, lambda, a, b);
end

function lomaxPlot(x, lambda, a, b)
    v = min(x) : 0.1 : max(x);
    fi = lambda / b;
    [m, n] = size(v);
    for i = 1 : n
        f(1, i)= (a * fi) / ((fi * v(1, i) + 1) ^(a + 1));
    end
    f
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