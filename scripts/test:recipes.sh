#!/usr/bin/env bash

# This script is used to test our recipes before upgrading their deps or adding a feature

# cause test to fail if one fails
set -e

for d in packages/react-instantsearch/examples/* ; do 
    cd $d
    jest
    cd ../../../..
done