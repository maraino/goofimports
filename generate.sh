#!/bin/sh

# generate.sh outputs a list of folders in $GOPATH that contain no `.go` files
# in any subdirectory. It is an optimal list for goofimports.

set -e

search_dir() {
    for d in "$1"/*
    do
        if [ -d "$d" ]
        then
            if find "$d" -name '*.go' | grep -q '.'
            then
                search_dir "$d"
            else
                echo "$d"
            fi
        fi
    done
}

search_dir "$GOPATH/src"
