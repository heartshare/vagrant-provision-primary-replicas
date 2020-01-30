#!/bin/bash
TYPE=$1
NAME=$2
STATE=$3   # only 3rd argument is relevant
TMPFILE=`mktemp`

case $STATE in
  "MASTER")
    echo "state=$3 : Setting this MaxScale node to Active mode" > $TMPFILE
    maxctrl alter maxscale passive false
    exit 0
    ;;
  "BACKUP")
    echo "state=$3 : Setting this MaxScale node to Passive mode" > $TMPFILE
    maxctrl alter maxscale passive true
    exit 0
    ;;
  "FAULT")
    echo "state=$3 : MaxScale failed the status check." > $TMPFILE
    maxctrl alter maxscale passive true
    exit 0
    ;;
  *)
    echo "Unknown state" > $TMPFILE
    exit 1
    ;;
esac
