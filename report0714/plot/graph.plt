#set terminal postscript eps
#set output "graph1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Time"
set ylabel "Output"

set samples 2000

set xrange [0:100]
set yrange [-1:4]

plot 1.5-0.9117*exp(-4*x)+1.4117*cos(x)+0.3529*sin(x) with lines lt 1 lc rgb "#726666" lw 0.5 title 'Analytical solution',\
'sim_data.dat' using 1:2 with lines lt 1 lc rgb "#00B368" lw 1 title 'Simulation'

#set output
#set terminal x11