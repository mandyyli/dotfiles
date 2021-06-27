#!/bin/bash
icon="/home/localhost/Pictures/bspc/lock.png"
image="/tmp/screenshotblur.png"
text=""
effect=(-filter Gaussian -resize 20% -define "filter:sigma=1.5" -resize 500.5%)
font=$(convert -list font | awk "{ a[NR] = \$2 } /family: $(fc-match sans -f "%{family}\n")/ { print a[NR-1]; exit }")

maim /tmp/screenshot.png
convert /tmp/screenshot.png "${effect[@]}" -font "$font" -pointsize 26 -gravity center \
    -annotate +0+160 "$text" "$icon" -gravity center -composite /tmp/screenshotblur.png
#convert /tmp/screenshot.png -blur 0x5 \ "$icon" -gravity center -#composite /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png
