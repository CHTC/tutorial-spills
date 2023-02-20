#!/bin/bash

# Step 1: Redefine argument from submit file
dataset=$1
echo ${dataset}

# Step 2: Print out the number of spills by counting the number of lines minus the header row
wc -l ${dataset} | awk '{print $1-1}'
