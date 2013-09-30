#!/bin/bash

source "$(dirname $0)/utils.sh"

err_msg="Usage: $(basename $0) <assignment_name> <ta/group file>"

assign=$1
shift

grpline="${@:? $err_msg}" # from ta/group file
grpline=$(set_dir $0 $grpline)
file_check $grpline

gn=$(sjoin.sh _ $grpline)

echo svn copy file:///`pwd`/$assign/trunk  file:///`pwd`/$assign/branches/$gn  -m "Import trunk to $gn"


