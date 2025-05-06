#!/bin/bash

TARGET_DIR="$1"
HASH_FILE_DIR="$2"
HASH_FILE="$HASH_FILE_DIR/hashes.sha256"

# Generate the hash file
find "$TARGET_DIR" -type f -exec sha256sum {} \; > "$HASH_FILE"

# Ensure the hash file is owned by the correct user with the right permissions
sudo chown "$(whoami):$(whoami)" "$HASH_FILE"
sudo chmod 600 "$HASH_FILE"

echo "Hashes generated and saved to $HASH_FILE."
