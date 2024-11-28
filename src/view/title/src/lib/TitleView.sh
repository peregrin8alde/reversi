#!/bin/bash

source TitleViewModel.sh

function TitleView() {
  titleResource="$1"
  column_count=0

  return 0
}

function show_title() {
  #clear
  sed "s/%d/${column_count}/g" "${titleResource}"
  read
  column_count=$(event_enter)

  printf -v "$1" "%s" "${column_count}"

  return 0
}

