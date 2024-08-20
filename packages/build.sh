#!/bin/bash
SCRIPT_DIR=$(dirname $(realpath $BASH_SOURCE))

dpkg-deb --build a_1.0-1
dpkg-deb --build a_2.0-1
dpkg-deb --build b_1.0-1
dpkg-deb --build b_2.0-1

dpkg-scanpackages --multiversion . > Packages
cat Packages | gzip -c > Packages.gz

echo "deb [trusted=yes] file:$SCRIPT_DIR ./" | sudo tee /etc/apt/sources.list.d/test.list

sudo apt update