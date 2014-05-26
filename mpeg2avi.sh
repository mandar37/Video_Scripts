#!/bin/sh

if [ $# -lt 2 ]
then
  echo "Needs two args."
  exit 0
fi

mencoder "$1" -ovc xvid -oac mp3lame -xvidencopts bitrate=800 -o "$2"final.avi
