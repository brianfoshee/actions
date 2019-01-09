#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -e
set -u

APP_DIR="/go/src/github.com/${GITHUB_REPOSITORY}/"

mkdir -p ${APP_DIR} && cp -r ./ ${APP_DIR} && cd ${APP_DIR}

echo "Running go $*"
go $*
