function [ ] = Lab1Ex2( n )
    for i = 1 : n
        for j = 1 : (n + 1)
            if(i == j)
                a(i,j) = 2;
            elseif (abs(i - j) == 1)
                a(i, j) = -1;
            else
                a(i, j) = 0;
            end
        end
    end
    a
end

