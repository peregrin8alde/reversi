function TitleView() {
  return 0
}

function show_title() {
  read line
  echo ${line}

  printf -v "$1" "%s" "${line}"

  return 0
}
