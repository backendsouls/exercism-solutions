#!/usr/bin/env bash

main() {
  RESULT=""

  if [[ $# != 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
  fi

  if (( "${#1}" != "${#2}" )); then
    echo "strands must be of equal length"
    exit 1
  fi

  if [[ "${1}" == "${2}" ]]; then
    echo "0"
    exit 0
  fi

  DISTANCE=0

  # C-style loop
  for (( i=0; i<"${#1}"; i++ )); do
    [[ "${1:$i:1}" != "${2:$i:1}" ]] && ((DISTANCE++))
  done

  echo "$DISTANCE"
}

main "$@"
