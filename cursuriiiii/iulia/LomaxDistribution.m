function [ ] = LomaxDistribution(a, b, lambda)
%UNTITLED17 Summary of this function goes here
%   Detailed explanation goes here
    for i = 1:10000
        y(1, i) = randLomax(a, b, lambda);
    end
    [N,C] = hist(y, 20);
    N = N / (sum(N) * (C(2) - C(1)));
    
    bar(C, N, 1, 'w');
    hold on;
    
    x = min(y):0.1:max(y);
    [a, n] = size(x);
    for i = 1:n
       v(1, i) = Lomax(x(1,i), a, b, lambda); 
    end
    plot(x, v);
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

function[y] = Lomax(x, a, b, lambda)
    teta = lambda / b;
    y = (a * teta) / ((teta * x + 1)^(a + 1));
end

function[y] = randLomax(a, b, lambda)
    eta = gamrnd(a, 1/b);
    %y = randExp(lambda * eta);
    y = exprnd(lambda*eta);
end

function[y] = randExp(lambda)
    u = rand(1, 1);
    y = ExpFInv(u, lambda);
end

function[y] = ExpFInv(x, lambda)
  y = (-1 / lambda) * log(x);
end


