#!/bin/bash

# The parameters are: nodes, transmissionRange, topologySize, FrameLength, iarrivalRate, gamma, packet_loss

# rm output_gamma
parallel --gnu --sshloginfile <(~/scripts/build_sshlogin.sh) --workdir "$PWD" ./runGamma.sh {1} {2} {3} {4} {5} {6} {7} {8} ::: 100 ::: 10 ::: 100 ::: 10 ::: 0.1  0.0562341325  0.0316227766  0.0177827941  0.01  0.0056234133  0.0031622777  0.0017782794  0.001 0.0005623413  0.0003162278  0.0001778279  0.0001 ::: 0.0001 0.001 100 1000 ::: 0.0 ::: {1..500} >> output_gamma
