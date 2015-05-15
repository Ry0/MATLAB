set terminal postscript eps
set output "graph2.eps"

unset zeroaxis

set xrange [200:300]
set yrange [64:72]

plot 'data.dat' using 1:2 with lines lt 1 lc rgb "#726666" lw 0.5 notitle,\
'data.dat' using 1:3 with lines lt 1 lc rgb "#FF7270" lw 1 notitle,\
'data.dat' using 1:4 with lines lt 1 lc rgb "#00B368" lw 1 notitle

set output
set terminal x11