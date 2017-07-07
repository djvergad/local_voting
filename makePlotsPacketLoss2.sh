#!/bin/bash

for i in 0.{0..9}
do
    gnuplot  -e "pl='$i'" makePlotsPacketLoss2
done 
