#!/bin/bash

TARGET_DIR="$1"
HASH_FILE_DIR="./hashes"
IMPORT_HASH_FILE="$2"
HASH_FILE="$HASH_FILE_DIR/hashes.sha256"

# Validate target directory
if [[ -z "$TARGET_DIR" || ! -d "$TARGET_DIR" ]]; then
    echo "Error: Please provide a valid target directory."
    echo "Usage: ./generate_hashes.sh <target_dir> [thirdparty_hash_file]"
    exit 1
fi

mkdir -p "$HASH_FILE_DIR"

# Generate hashes
find "$TARGET_DIR" -type f -exec sha256sum {} \; > "$HASH_FILE"

# Import third-party hashes
if [[ -n "$IMPORT_HASH_FILE" && -f "$IMPORT_HASH_FILE" ]]; then
    echo "Importing third-party hashes from: $IMPORT_HASH_FILE"
    cat "$IMPORT_HASH_FILE" >> "$HASH_FILE"
fi

# Secure hash file
sudo chown "$(whoami):$(whoami)" "$HASH_FILE"
sudo chmod 600 "$HASH_FILE"

echo "Hashes generated and saved to $HASH_FILE."
