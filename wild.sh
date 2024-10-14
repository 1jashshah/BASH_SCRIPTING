#!/bin/bash

DATE=$(date +%F)

for list in $(ls *.jpg)
do
  mv $list "${DATE}-${list}"
  echo "RENAMED ${DATE}-${list}"
done
