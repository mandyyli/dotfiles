#!/bin/bash

DB_FILE="$HOME/.frece_emoji.db"

item=$(frece print "$DB_FILE" | rofi "$@" -p "emojis" -dmenu -theme emoji-theme -font "mono 18")
[[ -z $item ]] && exit 1
frece increment "$DB_FILE" "$item"
emoji=$(cut -d$'\t' -f1 <<<"$item" | sed -e 's/[[:space:]]*$//')
echo -n "$emoji" | xclip -selection clipboard
xdotool key Ctrl+Shift+v
