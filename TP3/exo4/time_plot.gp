
set term png
set output "time.png"

set grid
set logscale y

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "lu3b_speed.dat" w l t "myLu", "scilu_speed.dat" w l t "Scilab lu"