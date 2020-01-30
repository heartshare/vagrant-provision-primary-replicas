#!/bin/bash
TYPE = $1
NAME = $2
STATE = $3   # only 3rd argument is relevant
TMPFILE = `mktemp`

case $STATE in
  "MASTER")
    echo "Setting this MaxScale node to Active mode" > $TMPFILE
    maxctrl alter maxscale passive false
    echo "$1\n$2\n$3\n" >> $TMPFILE
    exit 0
    ;;
  "BACKUP")
    echo "Setting this MaxScale node to Passive mode" > $TMPFILE
    maxctrl alter maxscale passive true
    echo "$1\n$2\n$3\n" >> $TMPFILE
    exit 0
    ;;
  "FAULT")
    echo "MaxScale failed the status check." > $TMPFILE
    maxctrl alter maxscale passive true
    echo "$1\n$2\n$3\n" >> $TMPFILE
    exit 0
    ;;
  *)
    echo "Unknown state" > $TMPFILE
    exit 1
    ;;
esac
