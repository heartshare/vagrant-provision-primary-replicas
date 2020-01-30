#!/bin/bash

file_name="/tmp/maxctrl_list_servers.txt"
rm $file_name
timeout 5s maxctrl list servers > $file_name
to_result=$?
if [ $to_result -ge 1 ]
then
  echo Timed out or error, timeout returned $to_result
  exit 3
else
  echo maxctrl success, rval is $to_result
  echo Checking maxctrl output sanity
  grep1=$(grep server1 $file_name)
  grep2=$(grep server2 $file_name)

  if [ "$grep1" ] && [ "$grep2" ]
  then
    echo Everything is fine
    exit 0
  else
    echo Something is wrong
    exit 3
  fi
fi
