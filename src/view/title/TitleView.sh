#!/bin/bash
source model/core/ReversiModel.sh

function TitleView() {
  SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)
  titleResource="${SCRIPT_DIR}/resource/Title.txt"
  column_count=0
}

function show_title() {
  clear
  sed "s/%d/${column_count}/g" "${titleResource}"
  read
  column_count=$(event_enter)
}

