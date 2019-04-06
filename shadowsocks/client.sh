#!/bin/bash
cd `dirname $0`
python_ver=$(ls /usr/bin|grep -e "^python[23]\.[1-9]\+$"|tail -1)
eval $(ps -ef | grep "[0-9] ${python_ver} local\\.py a" | awk '{print "kill "$2}')
nohup ${python_ver} local.py a>> sslocal.log 2>&1 &


