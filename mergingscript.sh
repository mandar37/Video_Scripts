#!/bin/sh

if [ $# -lt 2 ]
then
  echo "Needs two args."
  exit 0
fi

mencoder -forceidx -ovc copy -oac copy -o "$1".avi "$2".avi 
