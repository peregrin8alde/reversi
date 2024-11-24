#!/bin/bash
#####
#  ゲーム本体
#####
function ReversiModel() {
  datafile=$1
  set_count 0

  return 0
}

function set_count() {
  echo "$1" > ${datafile}

  return 0
}

function get_count() {
  count=$(cat "${datafile}")
  echo ${count}

  return 0
}

function add_count() {
  count=$(get_count)
  rtn=$?
  if [ ${rtn} != 0 ]; then
    return 1
  fi

  count=$((count+$1))

  set_count ${count}
  rtn=$?
  if [ ${rtn} != 0 ]; then
    return 1
  fi

  echo ${count}

  return 0
}
