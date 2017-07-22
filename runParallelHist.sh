#!/bin/bash

# The parameters are: nodes, transmissionRange, topologySize, FrameLength, connections, type, packet_loss

rm output_hist
parallel --gnu --workdir "$PWD" ./runHist.sh {1} {2} {3} {4} {5} {6} {7} {8} true ::: 100 ::: 10 ::: 100 ::: 10 ::: 0.0001	0.001	0.01 ::: LocalVoting LQF DRAND Lyui Lobats ::: 0.0 ::: 1 >> output_hist
  
