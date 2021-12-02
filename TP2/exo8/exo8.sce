getd(".")


A = rand(20, 20)
B = rand(20, 20)

fd = mopen("matmat3b.dat", "wt")
for i=1:100
    A = rand(i, i)
    B = rand(i, i)
    tic()
    for j=1:5
        C = matmat3b(A, B)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)


fd = mopen("matmat2b.dat", "wt")
for i=1:100
    A = rand(i, i)
    B = rand(i, i)
    tic()
    for j=1:5
        C = matmat2b(A, B)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)

fd = mopen("matmat1b.dat", "wt")
for i=1:100
    A = rand(i, i)
    B = rand(i, i)
    tic()
    for j=1:5
        C = matmat1b(A, B)
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)


fd = mopen("scilab.dat", "wt")
for i=1:100
    A = rand(i, i)
    B = rand(i, i)
    tic()
    for j=1:5
        C = A * B
    end
    mfprintf(fd, "%i %f\n", i, toc() / 5)
end
mclose(fd)
