getd(".")

A = triu(rand(3, 3))
b = rand(3, 1)


fd = mopen("usolve.dat", "wt")
for i = 1:200
    A = triu(rand(i, i))
    b = rand(i, 1)

    tic()
    for j = 1:10
        C = usolve(A, b)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 10)
end
mclose(fd)

fd = mopen("lsolve.dat", "wt")
for i = 1:200
    A = triu(rand(i, i))
    b = rand(i, 1)

    tic()
    for j = 1:10
        C = lsolve(A, b)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 10)
end
mclose(fd)


fd = mopen("lsolve_error.dat", "wt")
fdb = mopen("lsolve_berror.dat", "wt")
for i = 100:100
    backerror = 0
    err = 0
    for j = 1:1
        A = tril(rand(i, i))
        xex = rand(i, 1)
    
        b = A * xex
        x = lsolve(A, b)
        
        err = err + norm(xex - x) / norm(xex)
        backerror = backerror + norm(b - A * x) / (norm(A) * norm(x))
    end
    err = err / 10
    backerror = backerror / 10
    mfprintf(fd , "%i %.24f\n", i, err)
    mfprintf(fdb, "%i %.24f\n", i, backerror)
end
mclose(fd)
mclose(fdb)


fd = mopen("tri_scilab_error.dat", "wt")
fdb = mopen("tri_scilab_berror.dat", "wt")
for i = 10:250

    backerror = 0
    err = 0
    for j = 1:10
        A = tril(rand(i, i))
        xex = rand(i, 1)
    
        b = A * xex
        x = A \ b

        err = err + norm(xex - x) / norm(xex)
        backerror = backerror + norm(b - A * x) / (norm(A) * norm(x))
    end
    err = err / 10
    backerror = backerror / 10
    mfprintf(fd , "%i %.24f\n", i, err)
    mfprintf(fdb, "%i %.24f\n", i, backerror)
end
mclose(fd)
mclose(fdb)

