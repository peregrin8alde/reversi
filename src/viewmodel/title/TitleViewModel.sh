#!/bin/bash
source model/core/ReversiModel.sh

function TitleViewModel() {
  return 0
}

function event_enter() {
  # シェルのため、呼び出し元への応答は標準出力で実施、 return は正常／異常の判定用
  count=$(add_count 1)
  rtn=$?
  if [ ${rtn} != 0 ]; then
    return 1
  fi

  echo "${count}"
  
  return 0
}
