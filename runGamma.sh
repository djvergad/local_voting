#!/bin/bash 
echo -n "$@ "
java -cp $PWD/dist/Stability.jar stability.GammaRun "$@"
