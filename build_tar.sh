#!/bin/bash

TAG=$1
cd ../bitshares-core-$TAG
mkdir foo
cd foo
cp ../programs/cli_wallet/cli_wallet .
cp ../programs/witness_node/witness_node .
cp ../programs/delayed_node/delayed_node .
tar czvf ../BitShares-Core-$TAG-macOS-cli-tools.tar.gz *
cd ..
rm -Rf foo
