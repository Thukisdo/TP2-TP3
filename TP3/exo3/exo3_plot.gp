
set terminal png size 1000,500

set grid

set logscale y

set ylabel "Time"

set xlabel "Matrix size (x*x)"

plot "gausskij3d.dat" w l t "gausskij3b", "scilab_gauss.dat" w l t "scilab"