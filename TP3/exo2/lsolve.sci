

function [x] = lsolve(L, b)
    n = size(L, 1)
    x = zeros(n)
    
    for i = 1:n-1
        x(i) = b(i) / L(i, i)
        b(i+1:n) = b(i+1:n) - L(i+1:n, i) * x(i)
    end
    x(n) = b(n) / L(n, n)

endfunction
