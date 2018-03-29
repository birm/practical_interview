#!/usr/bin/env bash

# this app describes when a resource changes

echo "running $0 against $1 every $2 seconds"

#initalization
curl $1 > prev.out
cp prev.out curr.out

while true
do
  cp curr.out prev.out
  curl $1 > curr.out
  if ! cmp curr.out prev.out >/dev/null 2>&1
  then
    date >> log.out
  fi
  sleep $2
done
