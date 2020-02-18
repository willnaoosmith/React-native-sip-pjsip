#!/bin/bash
set -e

if ! type "curl" > /dev/null; then 
    echo "Missed curl dependency" >&2; 
    exit 1; 
fi
if ! type "tar" > /dev/null; then 
    echo "Missed tar dependency" >&2; 
    exit 1; 
fi

curl -LO https://github.com/willnaoosmit/react-native-pjsip-builder/archive/v2.8.0.tar.gz
tar -xvf release.tar.gz
rm release.tar.gz
