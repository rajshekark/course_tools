#!/bin/bash


assign=$1
shift
grpline="$@"

gn=$(sjoin.sh "_" $grpline)

echo "
 ${gn}=$(sjoin.sh "," $grpline)

"
