#!/usr/bin/gnuplot
#set term postscript enhanced color 
set term postscript eps enhanced monochrome size 4,2.8
#set terminal epslatex color

#set size 1,1
#set key spacing 1.5
#set boxwidth 0.85
set grid y lt 0


set key bottom right
#set format x "%.1f"
set logscale y

set xlabel "Connections"

set out "figures/avg_delay.eps"
set title "Average Delay"
set ylabel "Delay (timeslots)"
set yrange [500:50000]
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:7 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:7 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:7 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:7 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:7 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:7 ti 'Lyui' w lp

set key bottom left


set out "figures/fairness.eps"
set title "Fairness"
set ylabel "Jain's fairness index"
set yrange [0.7:1]
unset logscale y
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:8 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:8 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:8 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:8 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:8 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:8 ti 'Lyui' w lp

set key bottom right
set out "figures/max_delay.eps"
set logscale y
set title "Maximum Delay"
set ylabel "Delay (timeslots)"
set yrange [500:50000]
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:9 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:9 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:9 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:9 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:9 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:9 ti 'Lyui' w lp

set key bottom right

set out "figures/min_delay.eps"
set title "Minimum Delay"
set ylabel "Delay (timeslots)"
set yrange [*:*]
plot "<awk '$3==\"Balanced\"{print $0}' total" using 2:10 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total" using 2:10 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total" using 2:10 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total" using 2:10 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total" using 2:10 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total" using 2:10 ti 'Lyui' w lp

set out "figures/expo_th.eps"
set title "Throughput"
set ylabel "Throughput packets/slot"
set xlabel "Arrival rate (connections/timeslot)"
set logscale x
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:7 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:7 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:7 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:7 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:7 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:7 ti 'Lyui' w lp
 
set out "figures/expo_del.eps"
set title "Delay"
set ylabel "Delay (timeslots)"
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:8 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:8 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:8 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:8 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:8 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:8 ti 'Lyui' w lp

set out "figures/expo_deliv.eps"
set title "Delivery time"
set ylabel "Time (timeslots)"
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:9 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:9 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:9 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:9 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:9 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:9 ti 'Lyui' w lp

set out "figures/expo_thf.eps"
set title "Fairness in terms of Throughput"
set ylabel "Jain's fairness index"
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:10 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:10 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:10 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:10 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:10 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:10 ti 'Lyui' w lp

set out "figures/expo_delf.eps"
set title "Fairness in terms of delay"
set ylabel "Jain's fairness index"
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:11 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:11 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:11 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:11 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:11 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:11 ti 'Lyui' w lp

set out "figures/expo_delivf.eps"
set title "Fairness in terms of delivery time"
set ylabel "Jain's fairness index"
plot "<awk '$3==\"Balanced\"{print $0}' total_expo" using 2:12 ti 'Balanced' w lp, \
     "<awk '$3==\"Simple\"{print $0}' total_expo" using 2:12 ti 'Simple' w lp, \
     "<awk '$3==\"LQF\"{print $0}' total_expo" using 2:12 ti 'LQF' w lp, \
     "<awk '$3==\"DRAND\"{print $0}' total_expo" using 2:12 ti 'DRAND' w lp, \
     "<awk '$3==\"Lobats\"{print $0}' total_expo" using 2:12 ti 'LoBaTS' w lp, \
     "<awk '$3==\"Lyui\"{print $0}' total_expo" using 2:12 ti 'Lyui' w lp
