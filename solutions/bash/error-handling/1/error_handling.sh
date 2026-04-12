#!/usr/bin/env bash

main() {

    if (( $# != 1)); then
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi

    [[ -z "$1" ]] && name="" || name="$1"

    printf 'Hello, %s' "${name}"
}

# call main with all of the positional arguments
main "$@"
