getd(".")

fd = mopen("lu3b_error.dat", "wt")
for i = 10:200
    err = 0
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = mylu(A)
        err = err + norm(P*A - L*U)
    end
    mfprintf(fd, "%i %.24f\n", i, err / 5)
end
mclose(fd)

fd = mopen("npvlu_error.dat", "wt")
for i = 10:200
    err = 0
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = mylunpv(A)
        err = err + norm(P*A - L*U)
    end
    mfprintf(fd, "%i %.24f\n", i, err / 5)
end
mclose(fd)

fd = mopen("scilu_error.dat", "wt")
for i = 10:200
    err = 0
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = lu(A)
        err = err + norm(P*A - L*U)
    end
    mfprintf(fd, "%i %.24f\n", i, err / 5)
end
mclose(fd)



fd = mopen("lu3b_speed.dat", "wt")
for i = 10:200
    err = 0
    tic()
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = mylu(A)
    end
    mfprintf(fd, "%i %.24f\n", i, toc() / 5)
end
mclose(fd)

fd = mopen("npvlu_speed.dat", "wt")
for i = 10:200
    err = 0
    tic()
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = mylunpv(A)
    end
    mfprintf(fd, "%i %.24f\n", i, toc() / 5)
end
mclose(fd)

fd = mopen("scilu_speed.dat", "wt")
for i = 10:200
    err = 0
    tic()
    for j = 1:5
        A = rand(i, i)
        [L, U, P] = lu(A)
    end
    mfprintf(fd, "%i %.24f\n", i, toc() / 5)
end
mclose(fd)

