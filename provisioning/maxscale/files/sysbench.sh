#!/bin/sh
usage() {
  echo "Usage: ./sysbench.sh <prepare|run|cleanup> <num of threads> <read_write|read_only>"
  exit 1
}

echo $1 $2 $3
host=127.0.0.1
port=4006
lua=/usr/share/sysbench/oltp_$3.lua
size=1000000

if [ "$1" = "" -o $# -gt 4 ]; then
  usage 1
elif [ "$2" = "" ]; then
  nthreads=1
else
  nthreads=$2
fi

sysbench --db-driver=mysql --mysql-host=$host --mysql-port=$port \
  --mysql-user=maxuser --mysql-password=maxp@ssword2018 --mysql-db=test \
  --range_size=100 --table_size=$size --tables=2 --events=0 \
  --time=60 --rand-type=uniform --db-ps-mode=disable --threads=$nthreads $lua $1
