#!/bin/bash

source ReversiModel.sh
source TitleViewModel.sh
source TitleView.sh

function StartCmd() {
  local base_dir=${BASE_DIR:-$(cd "$(dirname "${BASH_SOURCE:-$0}")/.." && pwd)}

  ReversiModel "${base_dir}/data.txt"
  TitleViewModel
  TitleView "${base_dir}/resource/Title.txt"

  return 0
}
