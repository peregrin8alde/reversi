#!/bin/bash

source model/core/ReversiModel.sh
source viewmodel/title/TitleViewModel.sh
source view/title/TitleView.sh

ReversiModel "data.txt"
TitleViewModel
TitleView


while true; do
  show_title
done



exit 0
