#!/bin/sh

if [ $# -lt 2 ]
then
  echo "Needs two args."
  exit 0
fi

ffmpeg -i "$1"  -ab 64k -ar 22050 -b 300k -f flv -aspect 16:9 -s 320x240 -r 15 -vcodec flv -ac 2 "$2"final.flv
