#!/bin/ksh

if [[ $# -eq 0 ]]; then
  echo "no directory specified"
  exit
else
  shred -u ./${1}/* && rm -rf ./${1}
  if [[ $? -eq 0 ]]; then
    echo "directory $1 shred successful."
  else
    echo "directory $1 shred failed."
  fi
fi
