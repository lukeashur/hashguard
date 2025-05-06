#!/bin/bash

HASH_FILE_DIR="$1"
cd "$HASH_FILE_DIR" || exit 1

# Verify the hashes
if sha256sum -c hashes.sha256; then
    echo "All files verified successfully."
else
    echo "WARNING: Some files failed integrity check!"
fi
