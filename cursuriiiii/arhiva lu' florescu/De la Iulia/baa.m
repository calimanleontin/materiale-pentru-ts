function [] = baa( )
  A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
  B = A([1 3], [1 3]);
  C = A(2:3, 2:3)
  
  [m, n] = size(A);
  for i = 1:m
      for j = 1:n
        if mod(A(i, j), 2) == 0
            A(i, j) = 0;
        end
      end
  end 
  
  % Fara for:
  %k = find(mod(A, 2) == 0);
  %A(k) = 1;
  %A
  
  A(4,:) = [10, 11, 12];
  A(:,4) = [4, 7, 10, 13];
  
  nr = 5;
  D = vec2mat(1:(nr*nr), nr);
  E = repmat(1:nr, nr, 1)x
  
  X = -1:0.05:3;
  y = arrayfun(@(x) f(x), X);
  %plot(X, y);
  
  v = [1 7 6 4 5 3 10 3];
  m = 3;
  [sorted,sortIndex] = sort(v, 'descend');
  [a,b] = MeanAndVar(D);
  A
  c = MyCorrelation(A)
end