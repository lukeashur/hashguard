#!/bin/bash

COMMAND="$1"
TARGET_DIR="$2"
HASH_FILE_DIR="./hashes"

case "$COMMAND" in
    init)
        mkdir -p "$HASH_FILE_DIR"
        cd "$HASH_FILE_DIR" && git init && cd ..
        echo "Initialized hashguard repository."
        ;;
    generate)
        ./generate_hashes.sh "$TARGET_DIR" "$HASH_FILE_DIR"
        ;;
    verify)
        ./verify_hashes.sh "$HASH_FILE_DIR"
        ;;
    history)
        cd "$HASH_FILE_DIR" && git log --oneline
        ;;
    diff)
        cd "$HASH_FILE_DIR" && git diff HEAD~1 HEAD -- hashes.sha256
        ;;
    *)
        echo "Usage: hashguard.sh {init|generate <dir>|verify|history|diff}"
        ;;
esac
