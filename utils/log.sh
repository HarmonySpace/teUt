#!/bin/bash

# - print a color log
log() {
  # > echo     idifier   fg      mg
  echo -e ">\\033[$1;38;5;$2m    $3    \\033[0m"
}
