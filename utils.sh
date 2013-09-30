#!/bin/bash


function die {
  echo $1;
  exit 1;
}

# checks if the file is a regular file
function file_check {
  [ ! -f $1 ] && die "$0: Error: File '$1' does not exist"
}


# prefixes the path of calling script to the file
function set_dir {
  echo "$(dirname $0)/$(basename $1)"
}

