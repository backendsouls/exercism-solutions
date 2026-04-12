#!/usr/bin/env bash

main() {
  if [[ $# != 2 ]]; then
    error "Usage: hamming.sh <string1> <string2>"
  elif (( "${#1}" != "${#2}" )); then
    error "strands must be of equal length"
  elif [[ "${1}" == "${2}" ]]; then
    echo "0"
    exit 0
  fi

  DISTANCE=0
  FIRST_DNA=$1
  SECOND_DNA=$2

  for (( i=0; i<"${#1}"; i++ )); do
    [[ "${FIRST_DNA:$i:1}" != "${SECOND_DNA:$i:1}" ]] && ((DISTANCE++))
  done

  echo "$DISTANCE"
}

main "$@"
