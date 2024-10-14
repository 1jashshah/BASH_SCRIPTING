#!/bin/bash

read -p "ENter the username" username


if grep ^$username /etc/passwd;then
  echo "User exist already"
else
  echo " User does not exist creating user..."
  sudo useradd $username
fi
