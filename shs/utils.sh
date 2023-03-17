err_catch() {
  if [ "$1" = "0" ]; then
    echo "$2 success"
  else
    echo "catch an error"
    echo "any type will off this terminal"
    read -r
    exit
  fi
}

is_file() {
  if [ ! -f "$1" ]; then
    touch "$1"
  fi
}

is_dir() {
  if [ ! -d "$1" ]; then
    mkdir "$1"
  fi
}

shell_path() {
  cd "$1" || exit
}
