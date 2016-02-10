#!/bin/bash
# This script is meant for integration with thunar: appearance: folders, files
# passed %f
#
# requires xfce4-terminal, whiptail, thunar

# rename a file or folder, work-around libc segfault

# check number of parameters in command
PARAMS=1
if [ $# -ne "$PARAMS" ]
then
  echo
  echo "Script requires the first argument to be the file or folder to rename."
  echo
  exit 1
fi

INIT=""
input=$(whiptail --topleft --inputbox "Rename $1 to:" 13 78 $INIT --title "Rename file or folder" 3>&1 1>&2 2>&3)
 
if [[ -z "$input" ]]; then
   exit 0  
fi
mv  "$1" "$input"

exit 0
