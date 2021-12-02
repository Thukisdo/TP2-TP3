
set term png
set output "time.png"

set grid

set ylabel "Time (s)"

set xlabel "Matrix size (x*x)"

plot "time.dat" w l t "Scilab linear system solver"