#!/bin/bash

readarray -t files < figlist.txt
for target_basename in "${files[@]}"
do 

    case $target_basename in 
      *_0001) source_basename=${target_basename/_0001/_0.0001} ;;
      *_001) source_basename=${target_basename/_001/_0.001} ;;
      *04) source_basename=${target_basename/04/0.4} ;;
      *) source_basename=$target_basename

    esac
    epspdf "$source_basename".eps
    cp --verbose "$source_basename".pdf ~/Dropbox/natalia/TWC_final/Major_revision/tex/figures/"$target_basename".pdf
done
