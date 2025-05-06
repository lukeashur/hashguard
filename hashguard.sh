#!/bin/bash

COMMAND="$1"
TARGET_DIR="$2"
HASH_FILE_DIR="./hashes"

case "$COMMAND" in
    init)
        if ! mkdir -p "$HASH_FILE_DIR"; then
            echo "Failed to create directory: $HASH_FILE_DIR"
            exit 1
        fi
        echo "Initialized hashguard directory at $HASH_FILE_DIR."
        ;;
    generate)
        ./generate_hashes.sh "$TARGET_DIR" "$HASH_FILE_DIR"
        ;;
    verify)
        ./verify_hashes.sh "$HASH_FILE_DIR"
        ;;
    link)
        TARGET_LINK="/usr/local/bin/hashguard"
        SCRIPT_PATH="$(realpath "$0")"

        if sudo ln -sf "$SCRIPT_PATH" "$TARGET_LINK"; then
            echo "System-wide link created at $TARGET_LINK -> $SCRIPT_PATH"
        else
            echo "Failed to create system link at $TARGET_LINK"
            exit 1
        fi
        ;;
    *)
        echo "Usage: hashguard.sh {init|generate <dir>|verify|link}"
        ;;
esac