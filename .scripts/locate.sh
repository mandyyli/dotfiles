#!/bin/bash

locate --database=$HOME/.locate.db home media | rofi -threads 0 -width 100 -dmenu -i -p "locate" | xargs -#r -0 xdg-open

updatedb --require-visibility 0 -o ~/.locate.db
