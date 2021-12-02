
function [C] = matmat3b(A, B)
    size_A = size(A)
    size_B = size(B)
    C(size_A(1), size_B(2)) = []
    
    for i = 1:size_A(1)
        for j = 1:size_B(2)
           s = 0
           for k = 1:size_A(2)
               s = s + A(i, k) * B(k, j)
           end 
           C(i,j) = s
        end
    end    
endfunction


function [C] = matmat2b(A, B)
    size_A = size(A)
    size_B = size(B)
    C(size_A(1), size_B(2)) = []
    
    for i = 1:size_A(1)
        for j = 1:size_B(2)
           C(i, j) = A(i, 1:size_A(2)) * B(1:size_B(1),j)
        end
    end   
endfunction

function [C] = matmat1b(A, B)
    size_A = size(A)
    size_B = size(B)
    C(size_A(1), size_B(2)) = []
    
    for i = 1:size_A(1)
        C(i, 1:size_B(2)) = A(i, size_A(2)) * B(size_A(2), 1:size_B(2))
    end
endfunction

