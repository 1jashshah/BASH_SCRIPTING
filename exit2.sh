#!/bin/bash

sudo cat /etc/shadow

if [ "$?" -eq "0" ]
then
  echo "COmmand succeded"
  exit 0

else
  echo "COmmand failed"
  exit 1

fi
