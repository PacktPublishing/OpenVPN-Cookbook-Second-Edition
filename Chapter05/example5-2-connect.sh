#!/bin/bash

if [ "x$common_name" = "xclient2" ]
then
  hour=`/bin/date +"%H"
  if [ $hour -lt 6 -o $hour -gt 22 ]
  then
    echo "disable" > $1
  else
    echo "ifconfig-push 10.200.0.200 255.255.255.0"
  fi
fi

