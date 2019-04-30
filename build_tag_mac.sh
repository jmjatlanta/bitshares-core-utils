#!/bin/bash

VERSION=$1
DEV_DIR=~/Development/cpp
BOOST_DIR=$DEV_DIR/boost169
OPENSSL_DIR=/usr/local/opt/openssl

cd $DEV_DIR
git clone ssh://git@github.com/bitshares/bitshares-core bitshares-core-$VERSION
cd bitshares-core-$VERSION
git checkout tags/$VERSION
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release -DBOOST_ROOT=$BOOST_DIR -DOPENSSL_ROOT_DIR=$OPENSSL_DIR .
make -j8
