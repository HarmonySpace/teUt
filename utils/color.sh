#!/bin/bash

# - Color on text
color() {
  # > echo    idifier    fg      bg     mg
  echo -e "\\033[$1;38;5;$2;48;5;$3m    $4    \\033[0m"
}
