#!/bin/bash

# Redirect the default gateway for all Android clients
if [ "x_${IV_PLAT}" = "x_android" ]
then
  echo "push "redirect-gateway def1" >> $1
fi

