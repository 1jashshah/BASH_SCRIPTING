#!/bin/bash

CHECK=$1

if [ -e $CHECK ];then
   if [ -f "$CHECK" ];then
      echo "$CHECK IS A FILE"
      exit 0
   elif [ -d "$CHECK" ];then
      echo "$CHECK IS A Directory"
      exit 1
   else
      echo "$CHECK IS ANOTHER TYPE OF FILE"
      exit 2
   fi
else
  echo " DOES NOT EXIST"
fi
