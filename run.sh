#!/bin/sh

set -e

cd /tmp && ls
rm -r build || true
echo "Building the sources ..."
mkdir build && cd build && cmake .. && make
