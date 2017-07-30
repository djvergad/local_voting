#!/bin/bash 
echo -n "$@ "
. ~/.bash_profile
java -cp $PWD/dist/Local_Voting.jar stability.ExpoRun "$@" > results_hist/output_hist$(printf "_%s" "$@")
