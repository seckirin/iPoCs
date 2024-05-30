#!/bin/bash

# Change the current working directory to the directory where the script is located
cd "$(dirname "$0")" || exit

# Get the current timestamp
timestamp=$(date +%s)

# Add all changes to the staging area
git add .

# Use the timestamp as the commit message
git commit -m "Commit at $timestamp"

# Push changes to the remote repository
git push origin main
