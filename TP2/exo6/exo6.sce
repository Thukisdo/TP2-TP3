
x = [1 1 1 1]
y = [1; 1; 1; 1]

disp(x, y)

s = x * y


disp(size(x), size(y))
disp(norm(x))

A = [1 1 1; 2 2 2; 3 3 3; 4 4 4]

disp(A)

AT = A'

disp(AT)

A = [1 1 1 ; 2 2 2; 3 3 3]
B = A'


C = A * B
disp("mul: ", C)

D = A + B
disp("add: ", D)

E = A - B
disp("sub: ", E)

disp(cond(A))
