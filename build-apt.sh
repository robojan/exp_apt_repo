#!/bin/bash

set -e

SCRIPT_DIR=$(dirname $(realpath $BASH_SOURCE))

mkdir -p $SCRIPT_DIR/apt/build
cd $SCRIPT_DIR/apt/build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/ -DWITH_DOC=OFF
make -j8

sudo cmake --install .

# Remove the existing apt libraries
sudo rm -rf /usr/lib/x86_64-linux-gnu/libapt*