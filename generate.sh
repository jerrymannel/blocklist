#!/bin/bash
# Simpler script to generate blocklist.txt

output_file="blocklist.txt"
input_file="listOfDomains.txt"

# Ensure the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
fi

# Clear the output file
> "$output_file"

# Read the input file and generate the blocklist
while IFS= read -r domain || [[ -n "$domain" ]]; do
    if [ -n "$domain" ]; then
        echo "0.0.0.0 $domain" >> "$output_file"
    fi
done < "$input_file"