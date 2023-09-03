#!/bin/bash

# Set the path to the ts-node executable here
TS_NODE="ts-node"

# Check if a file argument was provided
if [ $# -eq 0 ]; then
  echo "Error: Please provide a file to watch as an argument."
  exit 1
fi

# Set the file to watch as the first argument
FILE_TO_WATCH="$1"

# Check if the file exists
if [ ! -f "$FILE_TO_WATCH" ]; then
  echo "Error: The specified file does not exist."
  exit 1
fi

# Start the inotifywait command to watch for changes to the file
while true; do
  inotifywait -q -e modify "$FILE_TO_WATCH"
  # Use ts-node to run the TypeScript file
  "$TS_NODE" "$FILE_TO_WATCH"
  echo '---'
done

# make executable: chmod +x watch.sh
# ./watch.sh ./2.ts
# sudo apt-get install inotify-tools
# npm install -g ts-node
