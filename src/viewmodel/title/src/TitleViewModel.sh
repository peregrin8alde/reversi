#!/bin/bash

source ReversiModel.sh

function TitleViewModel() {
  return 0
}

function event_enter() {
  count=$(add_count 1)
  rtn=$?
  if [ ${rtn} != 0 ]; then
    return 1
  fi

  echo "${count}"
  
  return 0
}
