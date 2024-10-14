#!/bin/bash
while true
do

echo "Press 1 to see systemlogs"
echo "Press 2 to see CPU info"
echo "Press 3 to see Storage Info"
echo "Press q to exit"
read -p "ENter the coice here" choice


case $choice in

1) sudo cat /var/logs/syslog ;;

2) top ;;

3) df -h ;;

q) exit ;;

*) echo "Invalid Choice";;

esac
done
