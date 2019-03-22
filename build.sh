#!/usr/bin/env bash

source environment.sh

targets=( \
    ./roller \
    )

for target in ${targets[*]}; do
    echo ""
    echo "Building ${target}..."
    go install ${target}
done
