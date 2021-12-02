
set terminal png size 1000,500

set grid

set logscale y

set ylabel "Error"

set xlabel "Matrix size (x*x)"

plot "gausskij3d_error.dat" w l t "Foward error", "gausskij3d_berror.dat" w l t "Backward error", "gausskij3d_cerror.dat" w l t "Cond * backward error"