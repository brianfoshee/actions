#!/usr/bin/env bash

set -eu

echo "Getting all jpg files included in this commit"
files=$(git diff-tree --diff-filter=A --no-commit-id --name-only -r ${GITHUB_SHA})

# Check if there are any jpg files.
# I don't know how to set a variable and then check if it's valid so this is
# duplicated for now.
if [[ $(echo "$files" | grep ".jpg") ]]; then
  jpgs=$(echo "$files" | grep ".jpg")
  # git lfs pull wants a comma-separated string of filenames
  csv_string=$(echo $jpgs | sed -e "s/ /,/g")

  # setup auth for lfs calls so that
  # a) it works
  # b) I don't get rate limited
  echo "machine github.com
          login ${GITHUB_TOKEN}" > ${HOME}/.netrc
  git config lfs.https://github.com/${GITHUB_REPOSITORY}.git/info/lfs.access basic

  echo "Pulling images from  git lfs"
  git lfs pull --include $csv_string
else
    echo "No jpg files are in this commit."
    exit 0
fi
