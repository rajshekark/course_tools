#!/bin/bash


assign=$1
tafile=$2
groups=$3


echo "[groups]"
echo "ta= $(sjoin.sh , $(cat $tafile))"
cat $groups | xargs -l ./authz_create1.sh $assign
cat $groups | xargs -l ./authz_create2.sh $assign

