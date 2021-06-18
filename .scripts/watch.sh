#!/bin/bash

rofi -dmenu -lines 1 -p "Watch: " | xargs -I{} xdg-open https://hurawatch.com/search\?keyword\=\{\}
