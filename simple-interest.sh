#!/bin/bash
# simple-interest.sh
# Usage: ./simple-interest.sh principal rate time
if [ "$#" -eq 3 ]; then
  P=$1; R=$2; T=$3
else
  read -p "Principal: " P
  read -p "Rate (annual %): " R
  read -p "Time (years): " T
fi
# Use bc for floating point calculation
SI=$(echo "scale=2; $P * $R * $T / 100" | bc -l)
echo "Principal: $P"
echo "Rate: $R %"
echo "Time: $T years"
echo "Simple Interest: $SI"
