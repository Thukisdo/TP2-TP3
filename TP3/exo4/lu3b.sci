

function [L, U, P] = mylu(A)
    n = size(A, 1)
    P = eye(n, n)
    
    for k = 1 : n -1
        [piv, q] = max(abs(A(k:n, k)))
        q = q + k - 1
        if q ~= k then
            new = A(q,:)
            A(q,:) = A(k,:)
            A(k,:) = new
            new = P(k,:)
            P(k,:) = P(q,:)
            P(q,:) = new
        end
        
        A(k + 1 : n, k) = A(k + 1 : n,k) / A(k,k)
        A(k + 1 : n, k+1:n) = A(k + 1 : n,k+1:n) - A(k + 1 : n,k) * A(k,k+1:n)
    end
  
    U = triu(A)
    L = tril(A)
    
    for i = 1:n
        L(i, i) = 1
    end

endfunction

function [L, U, P] = mylunpv(A)
    n = size(A, 1)
    P = eye(n, n)
    
    for k = 1 : n -1
        A(k + 1 : n, k) = A(k + 1 : n,k) / A(k,k)
        A(k + 1 : n, k+1:n) = A(k + 1 : n,k+1:n) - A(k + 1 : n,k) * A(k,k+1:n)
    end
  
    U = triu(A)
    L = tril(A)
    
    for i = 1:n
        L(i, i) = 1
    end

endfunction
