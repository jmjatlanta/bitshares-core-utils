#!/bin/bash

VERSION=$1
DEV_DIR=~/Development/cpp

cd $DEV_DIR
git clone ssh://git@github.com/bitshares/bitshares-core bitshares-core-$VERSION
cd bitshares-core-$VERSION
git checkout tags/$VERSION
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release .
make -j8
