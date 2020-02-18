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

curl -LO https://github.com/datso/react-native-pjsip-builder/releases/download/v2.8.0/release.tar.gz
tar -xvf release.tar.gz
rm release.tar.gz
