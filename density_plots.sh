#!/bin/bash

while read -r line
do
    gnuplot  -e "connections='$line'" density_plots
done < <(awk '!a[$5]++{print $5}' total_density)
