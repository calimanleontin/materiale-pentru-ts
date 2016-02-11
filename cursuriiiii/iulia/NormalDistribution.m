function [] = NormalDistribution(miu, sigma)
    %METODA INFASURATOAREI:
    % f = 1/2 f1 + 1/2 f2 si infasor cu Exp(1) unde alpha = sqrt(2e/pi) 
    for i = 1:1000
       y(1, i) = randNormal(miu, sigma); 
    end
    [N,C] = hist(y, 20);
    N = N / (sum(N) * (C(2)-C(1)));
    
    bar(C, N, 1, 'w');
    hold on;
    
    x = min(y):0.01:max(y);
    [a, n] = size(x);
    for i = 1:n
        v(1, i) = normpdf(x(1, i), miu, sigma);
    end
    plot(x, v);
end

function[y] = randNormal(miu, sigma)
    u0 = rand(1, 1);
    if (u0 <= 1/2)
        s = 1;
    else
        s = -1;
    end
    
    alpha = sqrt(2 * exp(1) / pi);
    ok = false;
    y = 0;
    while(ok == false)
        expo = randExp(1);
        if(f(expo) <= alpha * h(expo))
            ok = true;
            y = expo;
        end
    end    
   y = y * s;
   y =  miu + sigma * y;
    
end

function [y] = f(x)
  
    if x < 0 
        y = 0;
    else
        y = sqrt(2/pi) * exp(-x*x/2);
    end
end

function [y] = h(x)
    if x < 0
        y = 0;
    else
        y = exp(-x);
    end
end

function[y] = randExp(lambda)
    u = rand(1, 1);
    y = ExpFInv(u, lambda);
end

function[y] = ExpFInv(x, lambda)
  y = (-1 / lambda) * log(x);
end

