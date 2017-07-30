#!/bin/bash
. ~/.bash_profile
ant
./runParallel.sh
./runParallelExpo.sh
./runParallelGamma.sh
./runParallelDensity.sh
./runParallelHist.sh
