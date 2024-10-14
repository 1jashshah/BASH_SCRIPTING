#!/bin/bash

NUM=1

while read LINE
do
  echo "${NUM}: $LINE"
  ((MUN++))
done < /etc/passwd

