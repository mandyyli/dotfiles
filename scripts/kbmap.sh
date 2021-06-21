#!/bin/bash

setxkbmap -option "shift:both_capslock"
setxkbmap -option 'ctrl:nocaps'
/usr/bin/xcape -t 300 -e 'Control_L=Escape'

