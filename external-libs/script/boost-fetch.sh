#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version=1_63_0
dot_version=1.63.0

if [ ! -f "boost_${version}.tar.gz" ]; then
  wget https://boostorg.jfrog.io/artifactory/main/release/${dot_version}/source/boost_${version}.tar.gz
fi

if [ ! -d "boost_${version}" ]; then
  tar xfz boost_${version}.tar.gz
fi
