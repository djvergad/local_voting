#!/bin/bash 
echo -n "$@ "
java -cp $PWD/dist/Local_Voting.jar stability.ExpoRun "$@"
