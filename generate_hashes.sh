#!/bin/bash

TARGET_DIR="$1"
HASH_FILE_DIR="$2"
HASH_FILE="$HASH_FILE_DIR/hashes.sha256"

find "$TARGET_DIR" -type f -exec sha256sum {} \; > "$HASH_FILE"

cd "$HASH_FILE_DIR" || exit 1
git add hashes.sha256
if ! git diff --cached --quiet; then
    git commit -m "Hashes updated: $(date)"
fi
