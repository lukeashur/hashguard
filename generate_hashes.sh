#!/bin/bash

TARGET="$1"
HASH_FILE_DIR="./hashes"
HASH_FILE="$HASH_FILE_DIR/hashes.sha256"

# Validate target input (file or directory)
if [[ -z "$TARGET" || ( ! -d "$TARGET" && ! -f "$TARGET" ) ]]; then
    echo "Error: Please provide a valid target directory or file."
    echo "Usage: ./generate_hashes.sh <target_dir_or_file>"
    exit 1
fi

mkdir -p "$HASH_FILE_DIR"

# Generate hashes
if [[ -d "$TARGET" ]]; then
    find "$TARGET" -type f -exec sha256sum {} \; > "$HASH_FILE"
elif [[ -f "$TARGET" ]]; then
    sha256sum "$TARGET" > "$HASH_FILE"
fi

# Secure hash file
sudo chown "$(whoami):$(whoami)" "$HASH_FILE"
sudo chmod 600 "$HASH_FILE"

echo "Hashes generated and saved to $HASH_FILE."
