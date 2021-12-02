
set terminal png size 1000,500

set grid
set logscale y

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "lu3b_speed.dat" w l t "Lu", "scilu_speed.dat" w l t "Scilab lu"