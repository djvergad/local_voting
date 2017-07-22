#!/bin/bash 
echo -n "$@ "
. ~/.bash_profile
java -cp $PWD/dist/Local_Voting.jar stability.ExpoRun "$@" > output_hist$(printf "_%s" "$@")
