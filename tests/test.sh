#!/bin/bash

set -e

function test_failed {
  echo "$1"
  exit 1
}

./bin/detect tests/test1 && test_failed "Did not return 1 for missing requirements.txt"
./bin/detect tests/test2 && test_failed "Did not return 1 for non-existing django-compressor line"
module_name=$(./bin/detect tests/test3 || test_failed "Did not return 0 for valid requirements.txt")

if [ "$module_name" != "django-compressor" ]; then
  test_failed "bin/detect did not return module name"
fi
