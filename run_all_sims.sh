#!/bin/bash
. ~/.bash_profile
ant
./runParallel.sh
./runParallelExpo.sh
./runParallelDensity.sh
