
#!/bin/bash

echo "Enter principal amount:"
read -r principal

echo "Enter rate of interest:"
read -r rate

echo "Enter time period in years:"
read -r time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"
