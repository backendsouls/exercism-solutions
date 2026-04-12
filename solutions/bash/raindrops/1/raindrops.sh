#!/usr/bin/env bash

main() {
  RESULT=""

  if (( $1 % 3 == 0 )); then
    RESULT="Pling"
  fi

  if (( $1 % 5 == 0 )); then
    RESULT="${RESULT}Plang"
  fi

  if (( $1 % 7 == 0 )); then
    RESULT="${RESULT}Plong"
  fi

  if [[ $RESULT == "" ]]; then
    RESULT=$1
  fi

  printf '%s' "${RESULT}"
}

 main "$@"
