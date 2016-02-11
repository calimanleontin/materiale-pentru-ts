x = rand(1, 1000);
[n, z] = hist(x, 10);
mean(x(find(x <= 0.1)))
z
bar(z,n,1,'w')
title('Histograma asociata unei variabile aleatoare uniforme')
xlabel('X')
ylabel('Frecventa absoluta')
