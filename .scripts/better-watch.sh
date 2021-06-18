#!/bin/sh

export GOOGLE_API_KEY='AIzaSyBpb45oAMekzdpt-rKiQRFWHebX5mCYUxU'
export GOOGLE_SEARCH_ID='ebfcf9f9e35440b89'
export ROFI_SEARCH='cse'
#export TITLE_COLOR='#fff'

rofi -modi blocks -blocks-wrap ~/.scripts/rofi-search.sh -p "Search: " -show blocks -lines 6 -eh 4 -kb-accept-entry 'Return' -theme ~/.config/rofi/search.rasi
