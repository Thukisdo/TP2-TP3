
set term png

set output "time.png"

set grid

set logscale y

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "matmat1b.dat" w l t "matmat1b", "matmat2b.dat" w l t "matmat2b", "matmat3b.dat" w l t "matmat3b", "scilab.dat" w l t "Scilab" 