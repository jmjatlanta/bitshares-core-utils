#!/bin/bash

BRANCH=$1
DEV_DIR=/home/jmjatlanta/Development/cpp

cd $DEV_DIR
git clone ssh://git@github.com/bitshares/bitshares-core bitshares-core-$BRANCH
cd bitshares-core-$BRANCH
git checkout $BRANCH
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release .
make -j8
