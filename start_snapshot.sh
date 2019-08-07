#!/bin/bash 

FILENAME=$1

if [ -z "$FILENAME" ] 
then
        echo "Syntax: start_snapshot.sh FILENAME"
        exit 1
fi

./build/programs/witness_node/witness_node --replay-blockchain --plugins "snapshot market_history" --snapshot-at-time "2019-06-01T00:00:00" --snapshot-to $FILENAME --data-dir=/media/jmjatlanta/ExtraDrive1/bitshares-data/mainnet
