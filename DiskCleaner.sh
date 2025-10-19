#!/bin/bash

# Disk Cleaner for ChromeOS

# Ask for confirmation
read -p "This will clean temporary files. Are you sure? (y/n): " confirm
if [[ $confirm != "y" ]]; then
    echo "Operation cancelled."
    exit 0
fi

# Delete temporary files
echo "Cleaning temporary files..."
rm -rf /tmp/*
rm -rf ~/.cache/*

# Optional: clean trash
echo "Emptying Trash..."
rm -rf ~/.local/share/Trash/*

# Done
echo "Cleanup complete!"
