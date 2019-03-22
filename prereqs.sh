#!/usr/bin/env bash

source utils.sh
source environment.sh

prereqs=( \
    github.com/klassen-software-solutions/gocontract \
    )

echo "Updating prerequisites..."
for prereq in ${prereqs[*]}; do
    echo "  ${prereq}"
    go get -u ${prereq}
done
