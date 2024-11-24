#!/bin/bash

source ReversiModel.sh
source TitleViewModel.sh
source TitleView.sh

BASE_DIR=${BASE_DIR:-.}

function StartCmd() {
  ReversiModel "${BASE_DIR}/data.txt"
  TitleViewModel
  TitleView "${BASE_DIR}/lib/Title.txt"

  return 0
}
