#!/bin/bash


assign=$1
shift
grpline="$@"

gn=$(sjoin.sh "_" $grpline)

#[${gn}_team]
#${gn}=$(sjoin.sh "," $grpline)


echo "
 [$assign:/branches/$gn]
 @ta=r
 @${gn}=rw
"
