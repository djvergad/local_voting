#!/bin/bash

while read -r line
do
    gnuplot  -e "arrival='$line'" pl_plots
done < <(awk '!a[$5]++{print $5}' total_expo)
