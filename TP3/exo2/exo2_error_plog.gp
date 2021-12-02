
set terminal png size 1000,500

set grid

set logscale y

set ylabel "Error"

set xlabel "Matrix size (x*x)"

plot "lsolve_error.dat" w l t "lsolve foward error", "lsolve_berror.dat" w l t "lsolve backward error", "tri_scilab_error.dat" w l t "Scilab foward error", "tri_scilab_berror.dat" w l t "Scilab backward error"