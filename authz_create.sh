#!/bin/bash

source "$(dirname $0)/utils.sh"

err_msg="Usage: $(basename $0) <assignment_name> <ta_file> <groups_file>"

assign="${1:? $err_msg}"
tafile="${2:? $err_msg}"
groups="${3:? $err_msg}"

tafile=$(set_dir $0 $tafile)
file_check $tafile

groups=$(set_dir $0 $groups)
file_check $groups

echo "[groups]"
echo "ta= $(sjoin.sh , $(cat $tafile))"
cat $groups | xargs -l ./authz_create1.sh $assign
cat $groups | xargs -l ./authz_create2.sh $assign

