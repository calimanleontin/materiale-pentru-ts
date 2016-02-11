function [] = LaplaceDistribution(lambda)
    for i = 1:1000
        y(1, i) = randLaplace(lambda);
    end
    
    [N,C] = hist(y, 15);
    N = N / (sum(N) * (C(2) - C(1)));
    bar(C, N, 1, 'w');
    hold on;
    
    x = min(y):0.1:max(y);
    [a, n] = size(x);
    for i = 1:n
       v(1, i) = Laplace(x(1, i), lambda); 
    end
    plot(x, v);
    
end

function[y] = Laplace(x, lambda)
    y = lambda / 2 * exp(-lambda * (abs(x)));
end

function[y] = randLaplace(lambda)
    %METODA AMESTECARII
    u = rand(1, 1);
    e = randExp(lambda);
    if (u <= 0.5)
       s = 1;
    else
        s = -1;
    end
    y = s * e;
end

function[y] = randExp(lambda)
    u = rand(1, 1);
    y = ExpFInv(u, lambda);
end

function[y] = ExpFInv(x, lambda)
  y = (-1 / lambda) * log(x);
end

