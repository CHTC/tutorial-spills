#!/bin/bash

# Step 1: Redefine argument from submit file
dataset=$1

# Step 2: Print out the number of spills by counting the number of lines minus the header row
spill_count=$(wc -l ${dataset} | awk '{print $1-1}')

# Step 3: Print the most common source of spills
spill_source=$(cat ${dataset} | cut -d "," -f 15 | sort | uniq -c | sort -nr | head -n 1)

echo ${dataset} ${spill_count} ${spill_source}
