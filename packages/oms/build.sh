#!/bin/sh

mkdir build
cd build

cmake .. \
      ${CMAKE_ARGS} \
      -DCMAKE_BUILD_TYPE=Release 
make
cmake --build . --config Release --target install