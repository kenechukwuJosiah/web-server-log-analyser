#!/bin/bash
magenta='\033[0;35m'
clear='\033[0m'

echo "Analysing log....."
echo -e "\n"

# Get Top 5 IP addresses with the most requests:
echo -e "${magenta}Top 5 IP addresses with the most requests:${clear}"
awk '{print $1}' sample.log | sort | uniq -c | sort -r | head -n 5 | awk '{print $2" ""-"" "$1" ""requests"}'

echo -e "\n"

# Top 5 most requested paths:
echo -e "${magenta}Top 5 most requested paths:${clear}"
awk '{print $7}' sample.log | sort | uniq -c | sort -r | head -n 5 | awk '{print $2" ""-"" "$1" ""requests"}'

echo -e "\n"

# Top 5 response status codes:
echo -e "${magenta}Top 5 response status codes:${clear}"
awk '{print $9}' sample.log | sort | uniq -c | sort -r | head -n 5 | awk '{print $2" ""-"" "$1" ""requests"}'

echo -e "\n"

# Top 5 user agents:
echo -e "${magenta}Top 5 user agents:${clear}"
awk '{print $12}' sample.log | sort | uniq -c | sort -r | head -n 5 | awk '{print $2" ""-"" "$1" ""requests"}'
