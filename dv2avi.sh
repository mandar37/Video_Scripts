#!/bin/sh

if [ $# -lt 2 ]
then
  echo "Needs two args."
  exit 0
fi

ffmpeg -i "$1" -target dvd "$2".mpg
mencoder "$2".mpg -oac mp3lame -lameopts cbr:br=64:vol=1 -ovc lavc -lavcopts vhq:vcodec=mpeg4:aspect=4/3 -vf pp=lb -o "$2"final.avi
