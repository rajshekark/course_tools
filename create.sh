#!/bin/bash

source "$(dirname $0)/utils.sh"

err_msg="Usage: $(basename $0) <assignment_name> <original_assignment> <groups_file>"

assign="${1:? $err_msg}"
orig="${2:? $err_msg}"         # original copy of assignment
groups_file="${3:? $err_msg}"  # group file

groups_file=$(set_dir $0 $groups_file)
file_check $groups_file
file_check $orig

svnadmin create $assign
svn mkdir file:///`pwd`/$assign/trunk -m "created directory trunk"
svn mkdir file:///`pwd`/$assign/tags -m "created directory tags"
svn mkdir file:///`pwd`/$assign/branches -m "created directory branch"
svn import $orig file:///`pwd`/$assign/trunk -m "import"
cat $groups_file | xargs -l  ./addgroup.sh $assign

