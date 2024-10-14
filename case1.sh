#!/bin/bash
while do;
# Display options to the user
echo "Press 1 to see system logs"
echo "Press 2 to see CPU info"
echo "Press 3 to see Storage Info"
echo "Press q to exit"

# Read user input
read -p "Enter your choice here: " choice

# Process the user input
case $choice in
  1) sudo cat /var/log/syslog ;;
  2) lscpu ;;
  3) df -h ;;
  q) exit ;;
  *) echo "Invalid choice, please try again." ;;
esac
done
