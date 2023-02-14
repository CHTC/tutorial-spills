#!/bin/bash

# Step 1: Redefine arguments from submit file
datasest=$1

# Step 2: Count the number of spills by counting the number of lines minus the header row
# Save output to a variable called `number_spills`
number_spills= wc -l $(dataset) | awk '{print $1-1}'

# Step 3: Print our dataset and the number of spills to standard out file
echo ${dataset} ${number_spills}


