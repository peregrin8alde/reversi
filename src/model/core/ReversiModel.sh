#!/bin/bash
#####
#  ゲーム本体
#####
function ReversiModel() {
  datafile=$1
  set_count 0
}

function set_count() {
  echo "$1" > ${datafile}

  return 0
}

function get_count() {
  # シェルのため、呼び出し元への応答は標準出力で実施、 return は正常／異常の判定用
  count=$(cat "${datafile}")
  echo ${count}

  return 0
}

function add_count() {
  # シェルのため、呼び出し元への応答は標準出力で実施、 return は正常／異常の判定用
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
