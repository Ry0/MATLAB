set terminal postscript eps
set output "graph1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Time"
set ylabel "Output"

set samples 2000

set xrange [0:40]
set yrange [-0.5:3.5]

plot 1.5-0.9117*exp(-4*x)+1.4117*cos(x)+0.3529*sin(x) with lines lt 1 lc rgb "#F16202" lw 1.5 title 'Analytical solution',\
'sim_data.dat' using 1:2 with lines lt 1 lc rgb "#00B368" lw 1.5 title 'Simulation'

set output
set terminal x11