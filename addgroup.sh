#!/bin/bash

assign=$1
shift
grpline="$@" # from ta/group file
gn=$(sjoin.sh _ $grpline)

echo svn copy file:///`pwd`/$assign/trunk  file:///`pwd`/$assign/branches/$gn  -m "Import trunk to $gn"


