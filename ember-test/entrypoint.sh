#! /bin/sh

# set -eu

# call test function
echo "Running ember test"
npm run test

echo "Cleaning up after tests"
rm -rf dist tmp
