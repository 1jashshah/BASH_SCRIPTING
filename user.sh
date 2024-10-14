#!/bin/bash

read -p "Enter the Username to check" username

if grep "^$username:" /etc/passwd;then
  echo "User exist"
else
  echo "User does not exist Creating a new user..."
  sudo useradd $username
fi
