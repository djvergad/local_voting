#!/bin/bash
export LC_NUMERIC=C
./post_processing.awk output | sort -k5,5n > total
./post_processing_expo.awk output_expo | sort -k5,5n > total_expo
./post_processing_density.awk output_density | sort -k5,5n -k3,3n > total_density

