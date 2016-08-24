#!/bin/bash

readonly BUILD_ROOT=$(
  unset CDPATH
  build_root=$(dirname "${BASH_SOURCE}")/..
  cd "${build_root}"
  pwd
)

gulp build

docker build -t pdhar/travis .

