#!/bin/bash

exec >> /etc/openvpn/cookbook/example5-7.log 2>&1
date +"%H:%M:%S: START $script_type script ==="
echo "argv = [$0] [$1] [$2] [$3] [$4]"
pstree $PPID
date +"%H:%M:%S: END $script_type script ==="

