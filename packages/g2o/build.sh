#!/bin/sh

mkdir build
cd build

cmake .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DG2O_USE_CHOLMOD=OFF \
      -DG2O_USE_OPENGL=OFF

cmake --build . --config Release --target install