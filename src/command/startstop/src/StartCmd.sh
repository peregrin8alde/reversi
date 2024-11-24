#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)
PARENT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")/.." && pwd)

BASE_DIR=${BASE_DIR:-${PARENT_DIR}}

source LibStartCmd.sh

StartCmd

while true
do
  show_title selected_mode
  rtn=$?
  if [ ${rtn} != 0 ]; then
    echo "error show title" >&2
    return 1
  fi

  if [ "${selected_mode}" = "2" ]; then
    break
  fi
done


exit 0
