function [y] = corre(x1, x2)
    [u,n] = size(x1);
    s1 = 0; s2 = 0;
    m1 = 0; m2 = 0;
    
    for i = 1:n
        m1 = m1 + x1(1, i);
        m2 = m2 + x2(1, i);
    end
    
    for i = 1:n
       s1 = s1 + (x1(1, i) - m1) * (x1(1, i) - m1);
       s2 = s2 + (x2(1, i) - m2) * (x2(1, i) - m2);
    end
    
    m1 = m1 / n; m2 = m2 / n;
    y = 0;
    for i = 1:n
       y = y + ((x1(1,i) - m1) * (x2(1, i) - m2));
    end
    y = y / (s1 * s2);
    
end


function [corr] = MyCorrelation(X)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(X);
    
    for i = 1:(m - 1)
        for j = 1:m
           X(i,:)
           X(j,:)
           corr(i, j) = 3; %corre(X(i,:), X(j,:));
        end
    end

end
