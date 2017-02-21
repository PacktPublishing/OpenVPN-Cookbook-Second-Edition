#!/bin/bash

[ $# -lt 2 ] && exit 1

# if the depth is non-zero , continue processing
[ "$1" -ne 0 ] && exit 0

allowed_cns=`sed 's/ /_/g' $0.allowed`
for i in $allowed_cns
do
  [ "$2" = "$i" ] && exit 0
done
# catch-all
exit 1 
