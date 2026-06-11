#!/bin/bash

# Usage: ./scripts/install-skills.sh <destination_directory>
DEST_DIR=$1

# Check if the destination directory argument is provided
if [ -z "$DEST_DIR" ]; then
  echo "Error: Please specify the destination directory."
  echo "Usage: ./scripts/install-skills.sh <destination_directory>"
  exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Define the source modules to install
MODULES=("data" "domain" "feature")

echo "🚀 Installing Circuit-Metro Skills to $DEST_DIR..."

for MODULE in "${MODULES[@]}"; do
  # Path to the source SKILL.md file
  SOURCE_FILE="$MODULE/SKILL.md"
  
  if [ -f "$SOURCE_FILE" ]; then
    # Create the corresponding module directory in the destination
    mkdir -p "$DEST_DIR/$MODULE"
    
    # Copy the file to the destination
    cp "$SOURCE_FILE" "$DEST_DIR/$MODULE/"
    echo "✅ Installed: $MODULE/SKILL.md"
  else
    echo "⚠️ Warning: Could not find $SOURCE_FILE. Skipping..."
  fi
done

echo "🎉 Installation completed successfully!"
