set terminal postscript eps
set output "graph_simulink.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Time"
set ylabel "Output"

set samples 2000

set xrange [0:40]
set yrange [-0.5:3.5]

plot 'sim_data.dat' using 1:2 with lines lt 1 lc rgb "#00B368" lw 1.5 title 'Simulation'

set output
set terminal x11