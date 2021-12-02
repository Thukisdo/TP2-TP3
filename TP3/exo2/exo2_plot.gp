
set terminal png size 1000,500

set grid

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "usolve.dat" w l t "usolve", "lsolve.dat" w l t "lsolve"