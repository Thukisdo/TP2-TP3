
set terminal png size 1000,500

set grid
set logscale y

set ylabel "Error"

set xlabel "Matrix size (x*x)"

plot "lu3b_error.dat" w l t "Lu error", "scilu_error.dat" w l t "Scilab lu error"