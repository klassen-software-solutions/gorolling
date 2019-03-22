#!/usr/bin/env bash

# Remind the user that GOPATH must exist.
if [[ "${GOPATH}" == "" ]]; then
    echo "{GOPATH} must be set"
    exit 1
fi

if [[ ! -d "${GOPATH}" ]]; then
    echo "{GOPATH} (${GOPATH}) does not appear to be a directory"
    exit 1
fi

echo "GO overrides..."
echo "  GOOS=${GOOS}"
echo "  GOARCH=${GOARCH}"
echo "  GOPATH=${GOPATH}"
