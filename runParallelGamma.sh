#!/bin/bash

# The parameters are: nodes, transmissionRange, topologySize, FrameLength, iarrivalRate, gamma, packet_loss

rm output_gamma
parallel --gnu --sshloginfile <(~/scripts/build_sshlogin.sh) --workdir "$PWD" ./runGamma.sh {1} {2} {3} {4} {5} {6} {7} {8} ::: 100 ::: 10 ::: 100 ::: 10 ::: 0.1 0.01 0.001 0.0001 ::: 0.001 0.01 0.1 1.0 10.0 100.0 1000.0 ::: 0.0 ::: {1..500} >> output_gamma
