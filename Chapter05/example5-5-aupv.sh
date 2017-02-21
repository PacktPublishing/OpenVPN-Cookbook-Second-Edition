#!/bin/bash

# the username+password is stored in a temporary file 
# pointed to by $1
username=`head -1 $1`
password=`tail -1 $1`

if grep "$username:$password" $0.passwd > /dev/null 2>&1
then
  exit 0
else
  if grep "$username" $0.passwd > /dev/null 2>&1
  then
    echo "auth-user-pass-verify: Wrong password entered for user '$username'"
  else
    echo "auth-user-pass-verify: Unknown user '$username'"
  fi
  exit 1
fi

