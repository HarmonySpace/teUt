#!/bin/bash

# - Color on text
preview() {
  # > echo    idifier    fg      bg     mg
  if [ "${2}" = "b" ]; then
    bat --color always --theme ansi --style full "${1}"
  else
    cat "${1}"
  fi
}
