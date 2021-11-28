#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -GNinja \
      -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_INSTALL_PREFIX=$PREFIX 

ninja install