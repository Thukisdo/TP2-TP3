
set term png
set output "time.png"

set grid

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "usolve.dat" w l t "usolve", "lsolve.dat" w l t "lsolve"