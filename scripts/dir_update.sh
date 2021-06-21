#!/bin/bash

DB_FILE="$HOME/.frece_dir.db"
ENTRIES_FILE="/tmp/frece_dir_entries.txt"

# folders
# find "$@" -path '*/\.*' -prune -o -not -name '.*' -type d -print | \

find -type f -name -print | \
    sort > "$ENTRIES_FILE"



if [ ! -f "$DB_FILE" ]; then
    frece init "$DB_FILE" "$ENTRIES_FILE"
else
    frece update "$DB_FILE" "$ENTRIES_FILE" --purge-old
fi
