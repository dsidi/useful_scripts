#!/bin/ksh
#
# Check for a connection

if [[ ! $1 ]]; then
   echo "Give the string to match in the list of connections."
   exit 1
fi

matchee=$1
while true; do
   out=$(sudo netstat -putal | grep $matchee)
   if [[ $? -eq 0 ]]; then
      echo $out
      echo $(date) : $out >> connection_watcher_${matchee}.out
   fi
   sleep 10
done

