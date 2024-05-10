#!/bin/bash

# Check if two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <chatID> <groupName>"
    exit 1
fi

# Assign positional arguments to variables
CHAT_ID=$1
GROUP_NAME=$2

# Define the output file based on the group name
OUTPUT_FILE="tdl-export-${GROUP_NAME}.json"

# Define the directory based on the group name
DIRECTORY="/mnt/ux5/TDL-ROOT/${GROUP_NAME}"

# Combine the commands using the provided template
echo "tdl chat export -c \"${CHAT_ID}\" -o \"${OUTPUT_FILE}\" && tdl download -l 4 --skip-same -f \"${OUTPUT_FILE}\" --dir \"${DIRECTORY}\"" > "tdl-smart-${GROUP_NAME}.sh"
chmod 755 "tdl-smart-${GROUP_NAME}.sh" 
