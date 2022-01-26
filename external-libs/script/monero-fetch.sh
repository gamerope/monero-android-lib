#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/gamerope/monero"
version="release-v0.16.0.0-monerujo"

if [ ! -d "monero" ]; then
  git clone ${url} -b ${version}
  cd monero
  git submodule update --recursive --init
else
  cd monero
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
