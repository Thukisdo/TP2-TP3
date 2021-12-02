getd(".")

fd = mopen("gausskij3d.dat","wt")
for i = 1:100
    A = rand(i, i)
    b = rand(i, 1)
    
    tic()
    for j = 1:5
        C = gausskij3b(A, b)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)


fd = mopen("scilab_gauss.dat", "wt")
for i = 1:100
    A = rand(i, i)
    b = rand(i, 1)
    
    tic()
    for j = 1:5
        C = A \ b
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)

// Error measurement

fd = mopen("gausskij3d_error.dat","wt")
fdb = mopen("gausskij3d_berror.dat","wt")
fdc = mopen("gausskij3d_cerror.dat","wt")
for i = 2:50
    err = 0
    backerr = 0
    c = 0
    for j = 1:50
        A = rand(i, i)
        xex = rand(i, 1)
        
        b = A * xex
        
        x = gausskij3b(A, b)
       
        err = err + norm(xex - x) / norm(xex)
        backerr = backerr + norm(b - A * x) / (norm(A) * norm(x))
        c = cond(A) * backerr; 
    end
    mfprintf(fd, "%i %.24f\n", i, err / 50)
    mfprintf(fdb, "%i %.24f\n", i, backerr / 50)
    mfprintf(fdc, "%i %.24f\n", i, c / 50)
end
mclose(fd)
mclose(fdb)
mclose(fdc)



