
set term png
set output "error.png"

set grid

set logscale y

set ylabel "Error"

set xlabel "Matrix size (x*x)"

plot "berr.dat" w l t "Backward error", "err.dat" w l t "Forward error", "cerr.dat" w l t "cond * backward", 