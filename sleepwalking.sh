#!/bin/bash

case "$S1" in

  start)
   echo "Starting..."
   /tmp/sleep-walking-server &
   ;;
   stop)
     echo "Stopped"
     kill $(cat /tmp/sleep-walking-server.pid)
    ;;
    *)
     echo "Usage sleep walking"
     exit 1
    ;;
esac
