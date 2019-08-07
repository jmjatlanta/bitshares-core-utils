#!/bin/bash

DEV_DIR=~/Development/cpp
BOOST_DIR=$DEV_DIR/boost169
OPENSSL_DIR=/usr/local/opt/openssl

cmake -DCMAKE_BUILD_TYPE=Release -DBOOST_ROOT=$BOOST_DIR -DOPENSSL_ROOT_DIR=$OPENSSL_DIR ..
