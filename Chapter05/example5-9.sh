#!/bin/sh
if [ "$script_type" = "up" ]
then
  touch /tmp/example5-9.tempfile
fi
if [ "$1" = "--down" ]
then
  rm /tmp/example5-9.tempfile
fi
