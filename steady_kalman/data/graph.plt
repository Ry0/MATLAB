set terminal postscript eps
set output "graph1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Time"
set ylabel "Output"

set yrange [0:500]
set yrange [-0.69514:80]

plot 'data.dat' using 1:2 with lines lt 1 lc rgb "#726666" lw 0.5 title 'Measurement',\
'data.dat' using 1:4 with lines lt 1 lc rgb "#00B368" lw 1 title 'True value',\
'data.dat' using 1:3 with lines lt 1 lc rgb "#FF7270" lw 1 title 'Kalman filter estimate'

set output
set terminal x11