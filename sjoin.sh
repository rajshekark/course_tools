#!/bin/bash

del="$1"
shift
line="$@"

echo $(echo $line | xargs -n1 echo | sort) | sed "s/ /$del/g"



