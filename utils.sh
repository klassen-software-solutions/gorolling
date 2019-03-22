#!/usr/bin/env bash

canSeeHost() {
    nslookup $1 > /dev/null
}

which realpath
missingRealPath=$?

realPath() {
    if [[ ${missingRealPath} -ne 0 ]]; then
        (echo "import os" ; echo "import sys" ; echo "print(os.path.realpath(\"$1\"))") | python
    else
        realpath $1
    fi
}

searchAncestorPath() {
    target="$1"
    path="$2"
    while [[ ${path} != / ]]; do
        if [[ "`basename ${path}`" == "${target}" ]]; then
            echo "${path}"
            exit 0
        fi
        path="$(realPath "${path}"/..)"
    done
}

findExecutable() {
    exec=""
    which $1 > /dev/null 2> /dev/null
    if [[ $? -eq 0 ]]; then
        exec=$1
    fi
    echo ${exec}
}
