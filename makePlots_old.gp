#!/usr/bin/gnuplot
set term postscript enhanced color
#set terminal epslatex color

#set size 1,1
#set key spacing 1.5
#set boxwidth 0.85
set grid y lt 0

set key left
#set format x "%.1f"
set logscale y

set xlabel "Connections"

set out "figures/avg_delay.eps"
set title "Average Delay"
set ylabel "Delay (timeslots)"
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:7 ti 'Balanced' lw 4 w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:7 ti 'Simple' lw 4  w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:7 ti 'LQF' lw 4  w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:7 ti 'DRAND' lw 4  w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:7 ti 'Lobats' lw 4  w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:7 ti 'Lyui' lw 4  w lp

set key right

set out "figures/fairness.eps"
set title "Fairness"
set ylabel "Jain's fairness index"
set yrange [0.7:1]
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:8 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:8 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:8 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:8 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:8 ti 'Lobats' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:8 ti 'Lyui' w lp

set key left

set out "figures/max_delay.eps"
set title "Maximum Delay"
set ylabel "Delay (timeslots)"
set yrange [*:*]
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:9 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:9 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:9 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:9 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:9 ti 'Lobats' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:9 ti 'Lyui' w lp

set out "figures/min_delay.eps"
set title "Minimum Delay"
set ylabel "Delay (timeslots)"
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:10 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:10 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:10 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:10 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:10 ti 'Lobats' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:10 ti 'Lyui' w lp

