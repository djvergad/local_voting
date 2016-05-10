#!/bin/bash 
echo -n "$@ "
~/local/bin/java -cp $PWD/dist/Stability.jar stability.GammaRun "$@"
