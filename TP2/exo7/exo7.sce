



fde = mopen("err.dat", "wt")
fdbe = mopen("berr.dat", "wt")
fdce = mopen("cerr.dat", "wt")

for n = 1:200

error = 0
backerror = 0

for j=1:10
    A = rand(n, n)
    xex = rand(n, 1)

    b = A * xex
    x = A \ b
    error = error + norm(xex - x) / norm(xex)
    backerror = backerror + norm(b - A * x) / (norm(A) * norm(x))
end
error = error / 10
backerror = error / 10
conderror = backerror * cond(A)

mfprintf(fde, "%i %.24f\n", n, error)
mfprintf(fdbe, "%i %.24f\n", n, backerror)
mfprintf(fdce, "%i %.24f\n", n, conderror)

end

mclose(fde)
mclose(fdbe)
mclose(fdce)

fd = mopen("time.dat", "wt")

for n = 1:100

A = rand(n, n)
xex = rand(n, 1)

b = A * xex
tic()
for j=1:5
    x = A \ b
end
mfprintf(fd, "%i %.24f\n", n, toc() / 5)


end

mclose(fd)

