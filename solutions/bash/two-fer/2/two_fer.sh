#!/usr/bin/env bash

main() {
    [[ -z "$1" ]] && name=you || name="$1"
    printf 'One for %s, one for me.' "${name}"
}

main "$@"
