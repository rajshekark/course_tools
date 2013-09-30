#!/bin/bash

err_msg="Usage: $(basename $0) <delimiter> <space-seperated list>"

del="$1"
shift
line="${@:? $err_msg}"

echo $(echo $line | xargs -n1 echo | sort) | sed "s/ /$del/g"



