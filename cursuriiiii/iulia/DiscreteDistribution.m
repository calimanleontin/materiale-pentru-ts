function [] = DiscreteDistribution()
   %EXEMPLU PENTRU BINOMIALA
   prob = 0.5;
   for i = 0:10
       x(1, (i + 1)) = i;
       p(1, (i + 1)) = prob ^ i * (1-prob) ^ (10 - i) * nchoosek(10, i) 
   end
   
   for i = 1:1000
        y(1, i) = randDiscrete(x, p);
   end
   [N, C] = hist(y, 10);
   N = N / (sum(N) * (C(2)-C(1)));
   bar(C, N, 1, 'w');
end

function[y] = randDiscrete(x, p)
   u = rand(1, 1);
   pCrt = 0;
   ok = false;
   i = 0;
   while(ok == false)
       i = i + 1;
       pCrt = pCrt + p(1, i); 
       if u < pCrt 
            ok = true;
            y = x(1, i);
       end       
   end
end

