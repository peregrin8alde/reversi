#!/bin/bash

function TitleView() {
  titleResource="$1/lib/Title.txt"
  column_count=0
}

function show_title() {
  clear
  sed "s/%d/${column_count}/g" "${titleResource}"
  read
  column_count=$(event_enter)
}

