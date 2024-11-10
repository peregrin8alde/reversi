#!/bin/bash

BASE_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")/.." && pwd)

source ${BASE_DIR}/lib/ReversiModel.sh
source ${BASE_DIR}/lib/TitleViewModel.sh
source ${BASE_DIR}/lib/TitleView.sh

ReversiModel "${BASE_DIR}/data.txt"
TitleViewModel
TitleView ${BASE_DIR}


while true; do
  show_title
done



exit 0
