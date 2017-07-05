#!/bin/bash

# The parameters are: nodes, transmissionRange, topologySize, FrameLength, connections, type

#parallel --gnu -k --sshloginfile <(~/scripts/build_sshlogin.sh) --workdir $PWD ./runonce.sh --time=50 --RngRun={1} --step={2} --x-size={3} --y-size={3} ::: {1..10} ::: 10 50 90 ::: {2..6} >> output
rm output
parallel --gnu --workdir $PWD ./runOnce.sh {1} {2} {3} {4} {5} {6} {7} ::: 100 ::: 10 ::: 100 ::: 10 ::: {30..1} ::: Simple LocalVoting LQF DRAND Lyui Lobats ::: {1..5} >> output
