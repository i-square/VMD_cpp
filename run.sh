#!/bin/bash
rm -rf build
mkdir build && cd build
cmake .. && make
cd ..
./build/VMD_CPP